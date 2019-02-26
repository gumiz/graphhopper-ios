//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/AStarBidirection.java
//

#ifndef _AStarBidirection_H_
#define _AStarBidirection_H_

@class AStar_AStarEntry;
@class ComGraphhopperRoutingWeightingConsistentWeightApproximator;
@class JavaUtilPriorityQueue;
@class Path;
@class PathBidirRef;
@class SPTEntry;
@class TraversalModeEnum;
@protocol ComGraphhopperRoutingWeightingWeightApproximator;
@protocol ComGraphhopperRoutingWeightingWeighting;
@protocol EdgeExplorer;
@protocol EdgeIteratorState;
@protocol GnuTroveMapTIntObjectMap;
@protocol Graph;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/AbstractBidirAlgo.h"

/**
 @brief This class implements a bidirectional A* algorithm.
 It is interesting to note that a bidirectional dijkstra is far more efficient than a single direction one. The same does not hold for a bidirectional A* as the heuristic can not be as tight. <p> See http://research.microsoft.com/apps/pubs/default.aspx?id=64511 http://i11www.iti.uni-karlsruhe.de/_media/teaching/sommer2012/routenplanung/vorlesung4.pdf http://research.microsoft.com/pubs/64504/goldberg-sofsem07.pdf http://www.cs.princeton.edu/courses/archive/spr06/cos423/Handouts/EPP%20shortest%20path%20algorithms.pdf <p> and <p> 1. Ikeda, T., Hsu, M.-Y., Imai, H., Nishimura, S., Shimoura, H., Hashimoto, T., Tenmoku, K., and Mitoh, K. (1994). A fast algorithm for finding better routes by ai search techniques. In VNIS, pages 291–296. <p> 2. Whangbo, T. K. (2007). Efficient modified bidirectional a* algorithm for optimal route- finding. In IEA/AIE, volume 4570, pages 344–353. Springer. <p> or could we even use this three phase approach? www.lix.polytechnique.fr/~giacomon/papers/bidirtimedep.pdf <p>
 @author Peter Karich
 @author jansoe
 */
@interface AStarBidirection : AbstractBidirAlgo {
 @public
  id<GnuTroveMapTIntObjectMap> bestWeightMapFrom_;
  id<GnuTroveMapTIntObjectMap> bestWeightMapTo_;
  AStar_AStarEntry *currFrom_;
  AStar_AStarEntry *currTo_;
  PathBidirRef *bestPath_;
}

- (instancetype)initWithGraph:(id<Graph>)graph
withComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)weighting
        withTraversalModeEnum:(TraversalModeEnum *)tMode;

- (void)initCollectionsWithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

/**
 @param approx if true it enables approximative distance calculation from lat,lon values
 */
- (AStarBidirection *)setApproximationWithComGraphhopperRoutingWeightingWeightApproximator:(id<ComGraphhopperRoutingWeightingWeightApproximator>)approx;

- (SPTEntry *)createSPTEntryWithInt:(jint)node
                         withDouble:(jdouble)weight;

- (void)initFromWithInt:(jint)from
             withDouble:(jdouble)weight OBJC_METHOD_FAMILY_NONE;

- (void)initToWithInt:(jint)to
           withDouble:(jdouble)weight OBJC_METHOD_FAMILY_NONE;

- (Path *)createAndInitPath;

- (Path *)extractPath;

- (jdouble)getCurrentFromWeight;

- (jdouble)getCurrentToWeight;

- (jboolean)finished;

- (jboolean)fillEdgesFrom;

- (jboolean)fillEdgesTo;

- (void)updateBestPathWithEdgeIteratorState:(id<EdgeIteratorState>)edgeState
                       withAStar_AStarEntry:(AStar_AStarEntry *)entryCurrent
                                    withInt:(jint)currLoc;

- (NSString *)getName;

@end

J2OBJC_EMPTY_STATIC_INIT(AStarBidirection)

J2OBJC_FIELD_SETTER(AStarBidirection, bestWeightMapFrom_, id<GnuTroveMapTIntObjectMap>)
J2OBJC_FIELD_SETTER(AStarBidirection, bestWeightMapTo_, id<GnuTroveMapTIntObjectMap>)
J2OBJC_FIELD_SETTER(AStarBidirection, currFrom_, AStar_AStarEntry *)
J2OBJC_FIELD_SETTER(AStarBidirection, currTo_, AStar_AStarEntry *)
J2OBJC_FIELD_SETTER(AStarBidirection, bestPath_, PathBidirRef *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AStarBidirection ComGraphhopperRoutingAStarBidirection;

J2OBJC_TYPE_LITERAL_HEADER(AStarBidirection)

#endif // _AStarBidirection_H_
