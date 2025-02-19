/***************************************************************************
                         qgsabstractprofilegenerator.cpp
                         ---------------
    begin                : March 2022
    copyright            : (C) 2022 by Nyall Dawson
    email                : nyall dot dawson at gmail dot com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
#include "qgsabstractprofilesurfacegenerator.h"
#include "qgsprofilesnapping.h"
#include "qgsfillsymbol.h"
#include "qgslinesymbol.h"

#include <QPainterPath>

//
// QgsAbstractProfileSurfaceResults
//

QgsAbstractProfileSurfaceResults::~QgsAbstractProfileSurfaceResults() = default;

QMap<double, double> QgsAbstractProfileSurfaceResults::distanceToHeightMap() const
{
  return results;
}

QgsPointSequence QgsAbstractProfileSurfaceResults::sampledPoints() const
{
  return rawPoints;
}

QgsDoubleRange QgsAbstractProfileSurfaceResults::zRange() const
{
  return QgsDoubleRange( minZ, maxZ );
}

QVector<QgsGeometry> QgsAbstractProfileSurfaceResults::asGeometries() const
{
  QVector<QgsGeometry> res;
  res.reserve( rawPoints.size() );
  for ( const QgsPoint &point : rawPoints )
    res.append( QgsGeometry( point.clone() ) );

  return res;
}

QgsProfileSnapResult QgsAbstractProfileSurfaceResults::snapPoint( const QgsProfilePoint &point, const QgsProfileSnapContext &context )
{
  // TODO -- consider an index if performance is an issue
  QgsProfileSnapResult result;

  double prevDistance = std::numeric_limits< double >::max();
  double prevElevation = 0;
  for ( auto it = results.constBegin(); it != results.constEnd(); ++it )
  {
    // find segment which corresponds to the given distance along curve
    if ( it != results.constBegin() && prevDistance <= point.distance() && it.key() >= point.distance() )
    {
      const double dx = it.key() - prevDistance;
      const double dy = it.value() - prevElevation;
      const double snappedZ = ( dy / dx ) * ( point.distance() - prevDistance ) + prevElevation;

      if ( std::fabs( point.elevation() - snappedZ ) > context.maximumSurfaceElevationDelta )
        return QgsProfileSnapResult();

      result.snappedPoint = QgsProfilePoint( point.distance(), snappedZ );
      break;
    }

    prevDistance = it.key();
    prevElevation = it.value();
  }
  return result;
}

void QgsAbstractProfileSurfaceResults::renderResults( QgsProfileRenderContext &context )
{
  QPainter *painter = context.renderContext().painter();
  if ( !painter )
    return;

  const QgsScopedQPainterState painterState( painter );

  painter->setBrush( Qt::NoBrush );
  painter->setPen( Qt::NoPen );

  const double minDistance = context.distanceRange().lower();
  const double maxDistance = context.distanceRange().upper();
  const double minZ = context.elevationRange().lower();
  const double maxZ = context.elevationRange().upper();

  const QRectF visibleRegion( minDistance, minZ, maxDistance - minDistance, maxZ - minZ );
  QPainterPath clipPath;
  clipPath.addPolygon( context.worldTransform().map( visibleRegion ) );
  painter->setClipPath( clipPath, Qt::ClipOperation::IntersectClip );

  switch ( symbology )
  {
    case Qgis::ProfileSurfaceSymbology::Line:
      lineSymbol->startRender( context.renderContext() );
      break;
    case Qgis::ProfileSurfaceSymbology::FillBelow:
      fillSymbol->startRender( context.renderContext() );
      break;
  }

  QPolygonF currentLine;
  double prevDistance = std::numeric_limits< double >::quiet_NaN();
  double currentPartStartDistance = 0;
  for ( auto pointIt = results.constBegin(); pointIt != results.constEnd(); ++pointIt )
  {
    if ( std::isnan( prevDistance ) )
    {
      currentPartStartDistance = pointIt.key();
    }
    if ( std::isnan( pointIt.value() ) )
    {
      if ( currentLine.length() > 1 )
      {
        switch ( symbology )
        {
          case Qgis::ProfileSurfaceSymbology::Line:
            lineSymbol->renderPolyline( currentLine, nullptr, context.renderContext() );
            break;
          case Qgis::ProfileSurfaceSymbology::FillBelow:
            currentLine.append( context.worldTransform().map( QPointF( prevDistance, minZ ) ) );
            currentLine.append( context.worldTransform().map( QPointF( currentPartStartDistance, minZ ) ) );
            currentLine.append( currentLine.at( 0 ) );
            fillSymbol->renderPolygon( currentLine, nullptr, nullptr, context.renderContext() );
            break;
        }
      }
      prevDistance = pointIt.key();
      currentLine.clear();
      continue;
    }

    currentLine.append( context.worldTransform().map( QPointF( pointIt.key(), pointIt.value() ) ) );
    prevDistance = pointIt.key();
  }
  if ( currentLine.length() > 1 )
  {
    switch ( symbology )
    {
      case Qgis::ProfileSurfaceSymbology::Line:
        lineSymbol->renderPolyline( currentLine, nullptr, context.renderContext() );
        break;
      case Qgis::ProfileSurfaceSymbology::FillBelow:
        currentLine.append( context.worldTransform().map( QPointF( prevDistance, minZ ) ) );
        currentLine.append( context.worldTransform().map( QPointF( currentPartStartDistance, minZ ) ) );
        currentLine.append( currentLine.at( 0 ) );
        fillSymbol->renderPolygon( currentLine, nullptr, nullptr, context.renderContext() );
        break;
    }
  }

  switch ( symbology )
  {
    case Qgis::ProfileSurfaceSymbology::Line:
      lineSymbol->stopRender( context.renderContext() );
      break;
    case Qgis::ProfileSurfaceSymbology::FillBelow:
      fillSymbol->stopRender( context.renderContext() );
      break;
  }
}


void QgsAbstractProfileSurfaceResults::copyPropertiesFromGenerator( const QgsAbstractProfileGenerator *generator )
{
  const QgsAbstractProfileSurfaceGenerator *surfaceGenerator = qgis::down_cast<  const QgsAbstractProfileSurfaceGenerator * >( generator );

  lineSymbol.reset( surfaceGenerator->lineSymbol()->clone() );
  fillSymbol.reset( surfaceGenerator->fillSymbol()->clone() );
  symbology = surfaceGenerator->symbology();
}

//
// QgsAbstractProfileSurfaceGenerator
//

QgsAbstractProfileSurfaceGenerator::~QgsAbstractProfileSurfaceGenerator() = default;

Qgis::ProfileSurfaceSymbology QgsAbstractProfileSurfaceGenerator::symbology() const
{
  return mSymbology;
}

QgsLineSymbol *QgsAbstractProfileSurfaceGenerator::lineSymbol() const
{
  return mLineSymbol.get();
}

QgsFillSymbol *QgsAbstractProfileSurfaceGenerator::fillSymbol() const
{
  return mFillSymbol.get();
}
