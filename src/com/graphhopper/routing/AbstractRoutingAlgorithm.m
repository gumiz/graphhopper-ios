//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/AbstractRoutingAlgorithm.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/routing/AbstractRoutingAlgorithm.h"
#include "com/graphhopper/routing/Path.h"
#include "com/graphhopper/routing/RoutingAlgorithm.h"
#include "com/graphhopper/routing/util/DefaultEdgeFilter.h"
#include "com/graphhopper/routing/util/EdgeFilter.h"
#include "com/graphhopper/routing/util/FlagEncoder.h"
#include "com/graphhopper/routing/util/TraversalMode.h"
#include "com/graphhopper/routing/weighting/Weighting.h"
#include "com/graphhopper/storage/Graph.h"
#include "com/graphhopper/storage/NodeAccess.h"
#include "com/graphhopper/storage/SPTEntry.h"
#include "com/graphhopper/util/EdgeExplorer.h"
#include "com/graphhopper/util/EdgeIterator.h"
#include "com/graphhopper/util/EdgeIteratorState.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/util/Collections.h"
#include "java/util/List.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface AbstractRoutingAlgorithm () {
 @public
  id<EdgeFilter> additionalEdgeFilter_;
  jboolean alreadyRun_;
}
@end

J2OBJC_FIELD_SETTER(AbstractRoutingAlgorithm, additionalEdgeFilter_, id<EdgeFilter>)

@implementation AbstractRoutingAlgorithm

- (instancetype)initWithGraph:(id<Graph>)graph
withComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)weighting
        withTraversalModeEnum:(TraversalModeEnum *)traversalMode {
  if (self = [super init]) {
    maxVisitedNodes_ = JavaLangInteger_MAX_VALUE;
    AbstractRoutingAlgorithm_set_weighting_(self, weighting);
    AbstractRoutingAlgorithm_set_flagEncoder_(self, [((id<ComGraphhopperRoutingWeightingWeighting>) nil_chk(weighting)) getFlagEncoder]);
    AbstractRoutingAlgorithm_set_traversalMode_(self, traversalMode);
    AbstractRoutingAlgorithm_set_graph_(self, graph);
    AbstractRoutingAlgorithm_set_nodeAccess_(self, [((id<Graph>) nil_chk(graph)) getNodeAccess]);
    AbstractRoutingAlgorithm_set_outEdgeExplorer_(self, [graph createEdgeExplorerWithEdgeFilter:[[[DefaultEdgeFilter alloc] initWithFlagEncoder:flagEncoder_ withBoolean:NO withBoolean:YES] autorelease]]);
    AbstractRoutingAlgorithm_set_inEdgeExplorer_(self, [graph createEdgeExplorerWithEdgeFilter:[[[DefaultEdgeFilter alloc] initWithFlagEncoder:flagEncoder_ withBoolean:YES withBoolean:NO] autorelease]]);
  }
  return self;
}

- (void)setMaxVisitedNodesWithInt:(jint)numberOfNodes {
  self->maxVisitedNodes_ = numberOfNodes;
}

- (id<RoutingAlgorithm>)setEdgeFilterWithEdgeFilter:(id<EdgeFilter>)additionalEdgeFilter {
  AbstractRoutingAlgorithm_set_additionalEdgeFilter_(self, additionalEdgeFilter);
  return self;
}

- (jboolean)acceptWithEdgeIterator:(id<EdgeIterator>)iter
                           withInt:(jint)prevOrNextEdgeId {
  if (![((TraversalModeEnum *) nil_chk(traversalMode_)) hasUTurnSupport] && [((id<EdgeIterator>) nil_chk(iter)) getEdge] == prevOrNextEdgeId) return NO;
  return additionalEdgeFilter_ == nil || [additionalEdgeFilter_ acceptWithEdgeIteratorState:iter];
}

- (void)updateBestPathWithEdgeIteratorState:(id<EdgeIteratorState>)edgeState
                               withSPTEntry:(SPTEntry *)bestSPTEntry
                                    withInt:(jint)traversalId {
}

- (void)checkAlreadyRun {
  if (alreadyRun_) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Create a new instance per call"] autorelease];
  alreadyRun_ = YES;
}

- (SPTEntry *)createSPTEntryWithInt:(jint)node
                         withDouble:(jdouble)weight {
  return [[[SPTEntry alloc] initWithInt:EdgeIterator_NO_EDGE withInt:node withDouble:weight] autorelease];
}

- (jboolean)finished {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (Path *)extractPath {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaUtilList>)calcPathsWithInt:(jint)from
                             withInt:(jint)to {
  return JavaUtilCollections_singletonListWithId_([self calcPathWithInt:from withInt:to]);
}

- (Path *)createEmptyPath {
  return [[[Path alloc] initWithGraph:graph_ withComGraphhopperRoutingWeightingWeighting:weighting_] autorelease];
}

- (NSString *)getName {
  return [[self getClass] getSimpleName];
}

- (NSString *)description {
  return JreStrcat("$C@", [self getName], '|', weighting_);
}

- (jboolean)isMaxVisitedNodesExceeded {
  return maxVisitedNodes_ < [self getVisitedNodes];
}

- (void)dealloc {
  RELEASE_(graph_);
  RELEASE_(weighting_);
  RELEASE_(flagEncoder_);
  RELEASE_(traversalMode_);
  RELEASE_(nodeAccess_);
  RELEASE_(inEdgeExplorer_);
  RELEASE_(outEdgeExplorer_);
  RELEASE_(additionalEdgeFilter_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(AbstractRoutingAlgorithm *)other {
  [super copyAllFieldsTo:other];
  AbstractRoutingAlgorithm_set_graph_(other, graph_);
  AbstractRoutingAlgorithm_set_weighting_(other, weighting_);
  AbstractRoutingAlgorithm_set_flagEncoder_(other, flagEncoder_);
  AbstractRoutingAlgorithm_set_traversalMode_(other, traversalMode_);
  AbstractRoutingAlgorithm_set_nodeAccess_(other, nodeAccess_);
  AbstractRoutingAlgorithm_set_inEdgeExplorer_(other, inEdgeExplorer_);
  AbstractRoutingAlgorithm_set_outEdgeExplorer_(other, outEdgeExplorer_);
  other->maxVisitedNodes_ = maxVisitedNodes_;
  AbstractRoutingAlgorithm_set_additionalEdgeFilter_(other, additionalEdgeFilter_);
  other->alreadyRun_ = alreadyRun_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithGraph:withComGraphhopperRoutingWeightingWeighting:withTraversalModeEnum:", "AbstractRoutingAlgorithm", NULL, 0x1, NULL },
    { "setMaxVisitedNodesWithInt:", "setMaxVisitedNodes", "V", 0x1, NULL },
    { "setEdgeFilterWithEdgeFilter:", "setEdgeFilter", "Lcom.graphhopper.routing.RoutingAlgorithm;", 0x1, NULL },
    { "acceptWithEdgeIterator:withInt:", "accept", "Z", 0x4, NULL },
    { "updateBestPathWithEdgeIteratorState:withSPTEntry:withInt:", "updateBestPath", "V", 0x4, NULL },
    { "checkAlreadyRun", NULL, "V", 0x4, NULL },
    { "createSPTEntryWithInt:withDouble:", "createSPTEntry", "Lcom.graphhopper.storage.SPTEntry;", 0x4, NULL },
    { "finished", NULL, "Z", 0x404, NULL },
    { "extractPath", NULL, "Lcom.graphhopper.routing.Path;", 0x404, NULL },
    { "calcPathsWithInt:withInt:", "calcPaths", "Ljava.util.List;", 0x1, NULL },
    { "createEmptyPath", NULL, "Lcom.graphhopper.routing.Path;", 0x4, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "isMaxVisitedNodesExceeded", NULL, "Z", 0x4, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "graph_", NULL, 0x14, "Lcom.graphhopper.storage.Graph;", NULL,  },
    { "weighting_", NULL, 0x14, "Lcom.graphhopper.routing.weighting.Weighting;", NULL,  },
    { "flagEncoder_", NULL, 0x14, "Lcom.graphhopper.routing.util.FlagEncoder;", NULL,  },
    { "traversalMode_", NULL, 0x14, "Lcom.graphhopper.routing.util.TraversalMode;", NULL,  },
    { "nodeAccess_", NULL, 0x4, "Lcom.graphhopper.storage.NodeAccess;", NULL,  },
    { "inEdgeExplorer_", NULL, 0x4, "Lcom.graphhopper.util.EdgeExplorer;", NULL,  },
    { "outEdgeExplorer_", NULL, 0x4, "Lcom.graphhopper.util.EdgeExplorer;", NULL,  },
    { "maxVisitedNodes_", NULL, 0x4, "I", NULL,  },
    { "additionalEdgeFilter_", NULL, 0x2, "Lcom.graphhopper.routing.util.EdgeFilter;", NULL,  },
    { "alreadyRun_", NULL, 0x2, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _AbstractRoutingAlgorithm = { 1, "AbstractRoutingAlgorithm", "com.graphhopper.routing", NULL, 0x401, 14, methods, 10, fields, 0, NULL};
  return &_AbstractRoutingAlgorithm;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AbstractRoutingAlgorithm)