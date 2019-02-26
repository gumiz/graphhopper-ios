//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/weighting/AvoidEdgesWeighting.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/routing/weighting/AvoidEdgesWeighting.h"
#include "com/graphhopper/routing/weighting/Weighting.h"
#include "com/graphhopper/util/EdgeIteratorState.h"
#include "gnu/trove/set/TIntSet.h"
#include "gnu/trove/set/hash/TIntHashSet.h"
#include "java/util/Collection.h"

@interface ComGraphhopperRoutingWeightingAvoidEdgesWeighting () {
 @public
  jdouble edgePenaltyFactor_;
}
@end

@implementation ComGraphhopperRoutingWeightingAvoidEdgesWeighting

- (instancetype)initWithComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)superWeighting {
  if (self = [super initWithComGraphhopperRoutingWeightingWeighting:superWeighting]) {
    ComGraphhopperRoutingWeightingAvoidEdgesWeighting_setAndConsume_visitedEdges_(self, [[GnuTroveSetHashTIntHashSet alloc] init]);
    edgePenaltyFactor_ = 5.0;
  }
  return self;
}

- (ComGraphhopperRoutingWeightingAvoidEdgesWeighting *)setEdgePenaltyFactorWithDouble:(jdouble)edgePenaltyFactor {
  self->edgePenaltyFactor_ = edgePenaltyFactor;
  return self;
}

- (void)addEdgesWithJavaUtilCollection:(id<JavaUtilCollection>)edges {
  for (id<EdgeIteratorState> __strong edge in nil_chk(edges)) {
    [((id<GnuTroveSetTIntSet>) nil_chk(visitedEdges_)) addWithInt:[((id<EdgeIteratorState>) nil_chk(edge)) getEdge]];
  }
}

- (jdouble)getMinWeightWithDouble:(jdouble)distance {
  return [((id<ComGraphhopperRoutingWeightingWeighting>) nil_chk(superWeighting_)) getMinWeightWithDouble:distance];
}

- (jdouble)calcWeightWithEdgeIteratorState:(id<EdgeIteratorState>)edgeState
                               withBoolean:(jboolean)reverse
                                   withInt:(jint)prevOrNextEdgeId {
  jdouble weight = [((id<ComGraphhopperRoutingWeightingWeighting>) nil_chk(superWeighting_)) calcWeightWithEdgeIteratorState:edgeState withBoolean:reverse withInt:prevOrNextEdgeId];
  if ([((id<GnuTroveSetTIntSet>) nil_chk(visitedEdges_)) containsWithInt:[((id<EdgeIteratorState>) nil_chk(edgeState)) getEdge]]) return weight * edgePenaltyFactor_;
  return weight;
}

- (NSString *)getName {
  return @"avoid_edges";
}

- (void)dealloc {
  RELEASE_(visitedEdges_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComGraphhopperRoutingWeightingAvoidEdgesWeighting *)other {
  [super copyAllFieldsTo:other];
  ComGraphhopperRoutingWeightingAvoidEdgesWeighting_set_visitedEdges_(other, visitedEdges_);
  other->edgePenaltyFactor_ = edgePenaltyFactor_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGraphhopperRoutingWeightingWeighting:", "AvoidEdgesWeighting", NULL, 0x1, NULL },
    { "setEdgePenaltyFactorWithDouble:", "setEdgePenaltyFactor", "Lcom.graphhopper.routing.weighting.AvoidEdgesWeighting;", 0x1, NULL },
    { "addEdgesWithJavaUtilCollection:", "addEdges", "V", 0x1, NULL },
    { "getMinWeightWithDouble:", "getMinWeight", "D", 0x1, NULL },
    { "calcWeightWithEdgeIteratorState:withBoolean:withInt:", "calcWeight", "D", 0x1, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "visitedEdges_", NULL, 0x14, "Lgnu.trove.set.TIntSet;", NULL,  },
    { "edgePenaltyFactor_", NULL, 0x2, "D", NULL,  },
  };
  static const J2ObjcClassInfo _ComGraphhopperRoutingWeightingAvoidEdgesWeighting = { 1, "AvoidEdgesWeighting", "com.graphhopper.routing.weighting", NULL, 0x1, 6, methods, 2, fields, 0, NULL};
  return &_ComGraphhopperRoutingWeightingAvoidEdgesWeighting;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGraphhopperRoutingWeightingAvoidEdgesWeighting)