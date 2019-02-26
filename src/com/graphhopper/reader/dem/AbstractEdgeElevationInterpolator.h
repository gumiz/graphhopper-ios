//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/reader/dem/AbstractEdgeElevationInterpolator.java
//

#ifndef _ComGraphhopperReaderDemAbstractEdgeElevationInterpolator_H_
#define _ComGraphhopperReaderDemAbstractEdgeElevationInterpolator_H_

@class ComGraphhopperReaderDemElevationInterpolator;
@class ComGraphhopperReaderDemNodeElevationInterpolator;
@class DataFlagEncoder;
@class GraphHopperStorage;
@protocol EdgeExplorer;
@protocol EdgeIteratorState;
@protocol GHBitSet;
@protocol GnuTroveSetTIntSet;

#include "J2ObjC_header.h"
#include "com/graphhopper/util/BreadthFirstSearch.h"

/**
 @brief Abstract base class for tunnel/bridge edge elevation interpolators.
 This class estimates elevation of inner nodes of a tunnel/bridge based on elevations of entry nodes. See #713 for more information. <p> Since inner nodes of tunnel or bridge do not lie on the Earth surface, we should not use elevations returned by the elevation provider for these points. Instead, we'll estimate elevations of these points based on elevations of entry/exit nodes of the tunnel/bridge. <p> To do this, we'll iterate over the graph looking for tunnel or bridge edges using #isInterpolatableEdge(EdgeIteratorState) . Once such an edge is found, we'll calculate a connected component of tunnel/bridge edges starting from the base node of this edge, using simple BreadthFirstSearch . Nodes which only have interpolatabe edges connected to them are inner nodes and are considered to not lie on the Earth surface. Nodes which also have non-interpolatable edges are outer nodes and are considered to lie on the Earth surface. Elevations of inner nodes are then interpolated from the outer nodes using NodeElevationInterpolator . Elevations of pillar nodes are calculated using linear interpolation on distances from tower nodes.
 @author Alexey Valikov
 */
@interface ComGraphhopperReaderDemAbstractEdgeElevationInterpolator : NSObject {
 @public
  DataFlagEncoder *dataFlagEncoder_;
}

- (instancetype)initWithGraphHopperStorage:(GraphHopperStorage *)storage
                       withDataFlagEncoder:(DataFlagEncoder *)dataFlagEncoder;

- (jboolean)isInterpolatableEdgeWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (GraphHopperStorage *)getStorage;

- (void)execute;

- (void)gatherOuterAndInnerNodeIdsWithEdgeExplorer:(id<EdgeExplorer>)edgeExplorer
                             withEdgeIteratorState:(id<EdgeIteratorState>)interpolatableEdge
                                      withGHBitSet:(id<GHBitSet>)visitedEdgesIds
                            withGnuTroveSetTIntSet:(id<GnuTroveSetTIntSet>)outerNodeIds
                            withGnuTroveSetTIntSet:(id<GnuTroveSetTIntSet>)innerNodeIds;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperReaderDemAbstractEdgeElevationInterpolator)

J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemAbstractEdgeElevationInterpolator, dataFlagEncoder_, DataFlagEncoder *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperReaderDemAbstractEdgeElevationInterpolator)

@interface ComGraphhopperReaderDemAbstractEdgeElevationInterpolator_$1 : BreadthFirstSearch {
}

- (jboolean)checkAdjacentWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (instancetype)initWithComGraphhopperReaderDemAbstractEdgeElevationInterpolator:(ComGraphhopperReaderDemAbstractEdgeElevationInterpolator *)outer$
                                                                    withGHBitSet:(id<GHBitSet>)capture$0
                                                          withGnuTroveSetTIntSet:(id<GnuTroveSetTIntSet>)capture$1
                                                          withGnuTroveSetTIntSet:(id<GnuTroveSetTIntSet>)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperReaderDemAbstractEdgeElevationInterpolator_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperReaderDemAbstractEdgeElevationInterpolator_$1)

#endif // _ComGraphhopperReaderDemAbstractEdgeElevationInterpolator_H_