//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/EdgeIteratorState.java
//

#ifndef _EdgeIteratorState_H_
#define _EdgeIteratorState_H_

@class PointList;
@protocol FlagEncoder;

#include "J2ObjC_header.h"

#define EdgeIteratorState_K_UNFAVORED_EDGE -1

/**
 @brief This interface represents an edge and is one possible state of an EdgeIterator.
 <p>
 @author Peter Karich
 */
@protocol EdgeIteratorState < NSObject, JavaObject >

/**
 @return the edge id of the current edge. Do not make any assumptions about the concrete values, except that for an implemention it is recommended that they'll be contiguous.
 */
- (jint)getEdge;

/**
 @brief Returns the node used to instantiate the EdgeIterator.
 Example: "EdgeIterator iter = graph.getEdges(baseNode)". Often only used for convenience reasons. Do not confuse this with a <i>source node</i> of a directed edge. <p>
 @return the requested node itself
 */
- (jint)getBaseNode;

/**
 @return the adjacent node of baseNode for the current edge.
 */
- (jint)getAdjNode;

/**
 @brief For roadnetwork data like OSM a way is nearly always a curve not just a straight line.
 These nodes are called pillar nodes and are between tower nodes (which are used for routing), they are necessary to have a more exact geometry. See the docs for more information (docs/core/low-level-api.md#what-are-pillar-and-tower-nodes). Updates to the returned list are not reflected in the graph, for that you've to use setWayGeometry. <p>
 @param mode can be <ul> <li>0 = only pillar nodes, no tower nodes</li> <li>1 = inclusive the base tower node only</li> <li>2 = inclusive the adjacent tower node only</li> <li>3 = inclusive the base and adjacent tower node</li> </ul>
 @return pillar nodes
 */
- (PointList *)fetchWayGeometryWithInt:(jint)mode;

/**
 @param list is a sorted collection of nodes between the baseNode and the current adjacent node. Specify the list without the adjacent and base nodes.
 */
- (id<EdgeIteratorState>)setWayGeometryWithPointList:(PointList *)list;

/**
 @return the distance of the current edge in meter
 */
- (jdouble)getDistance;

- (id<EdgeIteratorState>)setDistanceWithDouble:(jdouble)dist;

- (jlong)getFlags;

- (id<EdgeIteratorState>)setFlagsWithLong:(jlong)flags;

/**
 @return the additional field value for this edge
 */
- (jint)getAdditionalField;

/**
 @brief Updates the additional field value for this edge
 */
- (id<EdgeIteratorState>)setAdditionalFieldWithInt:(jint)value;

/**
 */
- (jboolean)isForwardWithFlagEncoder:(id<FlagEncoder>)encoder;

/**
 */
- (jboolean)isBackwardWithFlagEncoder:(id<FlagEncoder>)encoder;

/**
 @brief Get additional boolean information of the edge.
 <p>
 @param key direction or vehicle dependent integer key
 @param _default default value if key is not found
 */
- (jboolean)getBoolWithInt:(jint)key
               withBoolean:(jboolean)_default;

- (NSString *)getName;

- (id<EdgeIteratorState>)setNameWithNSString:(NSString *)name;

/**
 @brief Clones this EdgeIteratorState.
 <p>
 @param reverse if true a detached edgeState with reversed properties is created where base and adjacent nodes, flags and wayGeometry are in reversed order. See #162 for more details about why we need the new reverse parameter.
 */
- (id<EdgeIteratorState>)detachWithBoolean:(jboolean)reverse;

/**
 @brief Copies the properties of this edge into the specified edge.
 Does not change nodes! <p>
 @return the specified edge e
 */
- (id<EdgeIteratorState>)copyPropertiesToWithEdgeIteratorState:(id<EdgeIteratorState>)e OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(EdgeIteratorState)

J2OBJC_STATIC_FIELD_GETTER(EdgeIteratorState, K_UNFAVORED_EDGE, jint)

#define ComGraphhopperUtilEdgeIteratorState EdgeIteratorState

J2OBJC_TYPE_LITERAL_HEADER(EdgeIteratorState)

#endif // _EdgeIteratorState_H_
