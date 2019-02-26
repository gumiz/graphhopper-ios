//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/ch/PrepareContractionHierarchies.java
//

#ifndef _PrepareContractionHierarchies_H_
#define _PrepareContractionHierarchies_H_

@class AbstractBidirAlgo;
@class AlgorithmOptions;
@class CHGraphImpl;
@class DijkstraOneToMany;
@class GHTreeMapComposed;
@class GraphHopperStorage;
@class IOSIntArray;
@class JavaUtilRandom;
@class Path;
@class PreparationWeighting;
@class PrepareContractionHierarchies_AddShortcutHandler;
@class PrepareContractionHierarchies_CalcShortcutHandler;
@class PrepareContractionHierarchies_IgnoreNodeFilter;
@class StopWatch;
@class TraversalModeEnum;
@protocol CHEdgeExplorer;
@protocol CHGraph;
@protocol ComGraphhopperRoutingWeightingWeighting;
@protocol DataAccess;
@protocol Directory;
@protocol EdgeIterator;
@protocol EdgeIteratorState;
@protocol Graph;
@protocol JavaUtilMap;
@protocol JavaUtilSet;
@protocol OrgSlf4jLogger;
@protocol PrepareContractionHierarchies_ShortcutHandler;
@protocol RoutingAlgorithm;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/AStarBidirection.h"
#include "com/graphhopper/routing/DijkstraBidirectionRef.h"
#include "com/graphhopper/routing/RoutingAlgorithmFactory.h"
#include "com/graphhopper/routing/util/AbstractAlgoPreparation.h"
#include "com/graphhopper/routing/util/EdgeFilter.h"
#include "com/graphhopper/routing/util/LevelEdgeFilter.h"

/**
 @brief This class prepares the graph for a bidirectional algorithm supporting contraction hierarchies ie. an algorithm returned by createAlgo.
 <p> There are several description of contraction hierarchies available. The following is one of the more detailed: http://web.cs.du.edu/~sturtevant/papers/highlevelpathfinding.pdf <p> The only difference is that we use two skipped edges instead of one skipped node for faster unpacking. <p>
 @author Peter Karich
 */
@interface PrepareContractionHierarchies : AbstractAlgoPreparation < RoutingAlgorithmFactory > {
 @public
  PrepareContractionHierarchies_AddShortcutHandler *addScHandler_;
  PrepareContractionHierarchies_CalcShortcutHandler *calcScHandler_;
}

- (instancetype)initWithDirectory:(id<Directory>)dir
           withGraphHopperStorage:(GraphHopperStorage *)ghStorage
                      withCHGraph:(id<CHGraph>)chGraph
withComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)weighting
            withTraversalModeEnum:(TraversalModeEnum *)traversalMode;

/**
 @brief The higher the values are the longer the preparation takes but the less shortcuts are produced.
 <p>
 @param periodicUpdates specifies how often periodic updates will happen. Use something less than 10.
 */
- (PrepareContractionHierarchies *)setPeriodicUpdatesWithInt:(jint)periodicUpdates;

/**
 @param lazyUpdates specifies when lazy updates will happen, measured relative to all existing nodes. 100 means always.
 */
- (PrepareContractionHierarchies *)setLazyUpdatesWithInt:(jint)lazyUpdates;

/**
 @param neighborUpdates specifies how often neighbor updates will happen. 100 means always.
 */
- (PrepareContractionHierarchies *)setNeighborUpdatesWithInt:(jint)neighborUpdates;

/**
 @brief Specifies how often a log message should be printed.
 Specify something around 20 (20% of the start nodes).
 */
- (PrepareContractionHierarchies *)setLogMessagesWithDouble:(jdouble)logMessages;

/**
 @brief Define how many nodes (percentage) should be contracted.
 Less nodes means slower query but faster contraction duration.
 */
- (PrepareContractionHierarchies *)setContractedNodesWithDouble:(jdouble)nodesContracted;

- (void)doWork;

- (jboolean)prepareNodes;

- (void)contractNodes;

- (jlong)getDijkstraCount;

- (jdouble)getLazyTime;

- (jdouble)getPeriodTime;

- (jdouble)getDijkstraTime;

- (jdouble)getNeighborTime;

- (id<ComGraphhopperRoutingWeightingWeighting>)getWeighting;

- (void)close;

- (id<JavaUtilSet>)testFindShortcutsWithInt:(jint)node;

/**
 @brief Calculates the priority of adjNode v without changing the graph.
 Warning: the calculated priority must NOT depend on priority(v) and therefor findShortcuts should also not depend on the priority(v). Otherwise updating the priority before contracting in contractNodes() could lead to a slowish or even endless loop.
 */
- (jint)calculatePriorityWithInt:(jint)v;

/**
 @brief Finds shortcuts, does not change the underlying graph.
 */
- (void)findShortcutsWithPrepareContractionHierarchies_ShortcutHandler:(id<PrepareContractionHierarchies_ShortcutHandler>)sch;

/**
 @brief Introduces the necessary shortcuts for adjNode v in the graph.
 */
- (jint)addShortcutsWithInt:(jint)v;

- (NSString *)getCoordsWithEdgeIteratorState:(id<EdgeIteratorState>)e
                                   withGraph:(id<Graph>)g;

- (PrepareContractionHierarchies *)initFromGraph OBJC_METHOD_FAMILY_NONE;

- (jint)getShortcuts;

- (id<RoutingAlgorithm>)createAlgoWithGraph:(id<Graph>)graph
                       withAlgorithmOptions:(AlgorithmOptions *)opts;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(PrepareContractionHierarchies)

J2OBJC_FIELD_SETTER(PrepareContractionHierarchies, addScHandler_, PrepareContractionHierarchies_AddShortcutHandler *)
J2OBJC_FIELD_SETTER(PrepareContractionHierarchies, calcScHandler_, PrepareContractionHierarchies_CalcShortcutHandler *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef PrepareContractionHierarchies ComGraphhopperRoutingChPrepareContractionHierarchies;

J2OBJC_TYPE_LITERAL_HEADER(PrepareContractionHierarchies)

@interface PrepareContractionHierarchies_IgnoreNodeFilter : NSObject < EdgeFilter > {
 @public
  jint avoidNode_;
  jint maxLevel_;
  id<CHGraph> graph_;
}

- (instancetype)initWithCHGraph:(id<CHGraph>)g
                        withInt:(jint)maxLevel;

- (PrepareContractionHierarchies_IgnoreNodeFilter *)setAvoidNodeWithInt:(jint)node;

- (jboolean)acceptWithEdgeIteratorState:(id<EdgeIteratorState>)iter;

@end

J2OBJC_EMPTY_STATIC_INIT(PrepareContractionHierarchies_IgnoreNodeFilter)

J2OBJC_FIELD_SETTER(PrepareContractionHierarchies_IgnoreNodeFilter, graph_, id<CHGraph>)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(PrepareContractionHierarchies_IgnoreNodeFilter)

@interface PrepareContractionHierarchies_Shortcut : NSObject {
 @public
  jint from_;
  jint to_;
  jint skippedEdge1_;
  jint skippedEdge2_;
  jdouble dist_;
  jdouble weight_;
  jint originalEdges_;
  jlong flags_;
}

- (instancetype)initWithInt:(jint)from
                    withInt:(jint)to
                 withDouble:(jdouble)weight
                 withDouble:(jdouble)dist;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(PrepareContractionHierarchies_Shortcut)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(PrepareContractionHierarchies_Shortcut)

@protocol PrepareContractionHierarchies_ShortcutHandler < NSObject, JavaObject >

- (void)foundShortcutWithInt:(jint)u_fromNode
                     withInt:(jint)w_toNode
                  withDouble:(jdouble)existingDirectWeight
                  withDouble:(jdouble)distance
            withEdgeIterator:(id<EdgeIterator>)outgoingEdges
                     withInt:(jint)skippedEdge1
                     withInt:(jint)incomingEdgeOrigCount;

- (jint)getNode;

@end

J2OBJC_EMPTY_STATIC_INIT(PrepareContractionHierarchies_ShortcutHandler)

J2OBJC_TYPE_LITERAL_HEADER(PrepareContractionHierarchies_ShortcutHandler)

@interface PrepareContractionHierarchies_CalcShortcutHandler : NSObject < PrepareContractionHierarchies_ShortcutHandler > {
 @public
  jint node_;
  jint originalEdgesCount_;
  jint shortcuts_;
}

- (jint)getNode;

- (PrepareContractionHierarchies_CalcShortcutHandler *)setNodeWithInt:(jint)n;

- (void)foundShortcutWithInt:(jint)u_fromNode
                     withInt:(jint)w_toNode
                  withDouble:(jdouble)existingDirectWeight
                  withDouble:(jdouble)distance
            withEdgeIterator:(id<EdgeIterator>)outgoingEdges
                     withInt:(jint)skippedEdge1
                     withInt:(jint)incomingEdgeOrigCount;

- (instancetype)initWithPrepareContractionHierarchies:(PrepareContractionHierarchies *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(PrepareContractionHierarchies_CalcShortcutHandler)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(PrepareContractionHierarchies_CalcShortcutHandler)

@interface PrepareContractionHierarchies_AddShortcutHandler : NSObject < PrepareContractionHierarchies_ShortcutHandler > {
 @public
  jint node_;
}

- (instancetype)initWithPrepareContractionHierarchies:(PrepareContractionHierarchies *)outer$;

- (jint)getNode;

- (PrepareContractionHierarchies_AddShortcutHandler *)setNodeWithInt:(jint)n;

- (void)foundShortcutWithInt:(jint)u_fromNode
                     withInt:(jint)w_toNode
                  withDouble:(jdouble)existingDirectWeight
                  withDouble:(jdouble)existingDistSum
            withEdgeIterator:(id<EdgeIterator>)outgoingEdges
                     withInt:(jint)skippedEdge1
                     withInt:(jint)incomingEdgeOrigCount;

@end

J2OBJC_EMPTY_STATIC_INIT(PrepareContractionHierarchies_AddShortcutHandler)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(PrepareContractionHierarchies_AddShortcutHandler)

@interface PrepareContractionHierarchies_$1 : LevelEdgeFilter {
}

- (jboolean)acceptWithEdgeIteratorState:(id<EdgeIteratorState>)edgeState;

- (instancetype)initWithCHGraphImpl:(CHGraphImpl *)arg$0
                     withEdgeFilter:(id<EdgeFilter>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(PrepareContractionHierarchies_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(PrepareContractionHierarchies_$1)

@interface PrepareContractionHierarchies_$2 : AStarBidirection {
}

- (jboolean)finished;

- (Path *)createAndInitPath;

- (NSString *)getName;

- (NSString *)description;

- (instancetype)initWithPrepareContractionHierarchies:(PrepareContractionHierarchies *)outer$
                                            withGraph:(id<Graph>)arg$0
                             withPreparationWeighting:(PreparationWeighting *)arg$1
                                withTraversalModeEnum:(TraversalModeEnum *)arg$2;

@end

J2OBJC_EMPTY_STATIC_INIT(PrepareContractionHierarchies_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(PrepareContractionHierarchies_$2)

@interface PrepareContractionHierarchies_$3 : DijkstraBidirectionRef {
}

- (jboolean)finished;

- (Path *)createAndInitPath;

- (NSString *)getName;

- (NSString *)description;

- (instancetype)initWithPrepareContractionHierarchies:(PrepareContractionHierarchies *)outer$
                                            withGraph:(id<Graph>)arg$0
                             withPreparationWeighting:(PreparationWeighting *)arg$1
                                withTraversalModeEnum:(TraversalModeEnum *)arg$2;

@end

J2OBJC_EMPTY_STATIC_INIT(PrepareContractionHierarchies_$3)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(PrepareContractionHierarchies_$3)

#endif // _PrepareContractionHierarchies_H_