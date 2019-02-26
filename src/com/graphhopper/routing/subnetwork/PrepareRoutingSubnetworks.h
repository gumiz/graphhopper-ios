//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks.java
//

#ifndef _ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_H_
#define _ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_H_

@class ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter;
@class GnuTroveListArrayTIntArrayList;
@class GraphHopperStorage;
@class JavaUtilConcurrentAtomicAtomicInteger;
@protocol EdgeExplorer;
@protocol EdgeIterator;
@protocol EdgeIteratorState;
@protocol FlagEncoder;
@protocol GHBitSet;
@protocol GnuTroveListTIntList;
@protocol JavaUtilList;
@protocol OrgSlf4jLogger;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/util/DefaultEdgeFilter.h"
#include "com/graphhopper/util/BreadthFirstSearch.h"

/**
 @brief Removes nodes which are not part of the large networks.
 Ie. mostly nodes with no edges at all but also small subnetworks which could be bugs in OSM data or indicate otherwise disconnected areas e.g. via barriers or one way problems - see #86. <p>
 @author Peter Karich
 */
@interface ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks : NSObject {
}

- (instancetype)initWithGraphHopperStorage:(GraphHopperStorage *)ghStorage
                          withJavaUtilList:(id<JavaUtilList>)encoders;

- (ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks *)setMinNetworkSizeWithInt:(jint)minNetworkSize;

- (ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks *)setMinOneWayNetworkSizeWithInt:(jint)minOnewayNetworkSize;

- (void)doWork;

- (jint)getMaxSubnetworks;

/**
 @brief This method finds the double linked components according to the specified filter.
 */
- (id<JavaUtilList>)findSubnetworksWithComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter:(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter *)filter;

/**
 @brief Deletes all but the largest subnetworks.
 */
- (jint)keepLargeNetworksWithComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter:(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter *)filter
                                                                                    withJavaUtilList:(id<JavaUtilList>)components;

- (NSString *)toStringWithFlagEncoder:(id<FlagEncoder>)encoder
                     withEdgeIterator:(id<EdgeIterator>)iter;

/**
 @brief This method removes networks that will be never be visited by this filter.
 See #235 for example, small areas like parking lots are sometimes connected to the whole network through a one-way road. This is clearly an error - but is causes the routing to fail when a point gets connected to this small area. This routine removes all these networks from the graph. <p>
 @return number of removed edges
 */
- (jint)removeDeadEndUnvisitedNetworksWithComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter:(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter *)bothFilter;

/**
 @brief This method removes the access to edges available from the nodes contained in the components.
 But only if a components' size is smaller then the specified min value. <p>
 @return number of removed edges
 */
- (jint)removeEdgesWithComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter:(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter *)bothFilter
                                                                              withJavaUtilList:(id<JavaUtilList>)components
                                                                                       withInt:(jint)min;

- (jint)removeEdgesWithEdgeExplorer:(id<EdgeExplorer>)explorer
                    withFlagEncoder:(id<FlagEncoder>)encoder
           withGnuTroveListTIntList:(id<GnuTroveListTIntList>)component
                            withInt:(jint)min;

/**
 @brief Removes nodes if all edges are not accessible.
 I.e. removes zero degree nodes.
 */
- (void)markNodesRemovedIfUnreachable;

/**
 @brief This method checks if the node is removed or inaccessible for ALL encoders.
 <p>
 @return true if no edges are reachable from the specified nodeIndex for any flag encoder.
 */
- (jboolean)detectNodeRemovedForAllEncodersWithEdgeExplorer:(id<EdgeExplorer>)edgeExplorerAllEdges
                                                    withInt:(jint)nodeIndex;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks)

@interface ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter : DefaultEdgeFilter {
 @public
  id<FlagEncoder> encoder_PrepEdgeFilter_;
}

- (instancetype)initWithFlagEncoder:(id<FlagEncoder>)encoder;

- (id<FlagEncoder>)getEncoder;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter)

J2OBJC_FIELD_SETTER(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter, encoder_PrepEdgeFilter_, id<FlagEncoder>)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_PrepEdgeFilter)

@interface ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_$1 : BreadthFirstSearch {
 @public
  jint tmpCounter_;
}

- (id<GHBitSet>)createBitSet;

- (jboolean)goFurtherWithInt:(jint)nodeId;

- (jboolean)checkAdjacentWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (instancetype)initWithComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks:(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks *)outer$
                                                                    withGHBitSet:(id<GHBitSet>)capture$0
                                              withGnuTroveListArrayTIntArrayList:(GnuTroveListArrayTIntArrayList *)capture$1
                                                                 withFlagEncoder:(id<FlagEncoder>)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_$1)

#endif // _ComGraphhopperRoutingSubnetworkPrepareRoutingSubnetworks_H_