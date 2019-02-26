//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/AbstractBidirAlgo.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/routing/AbstractBidirAlgo.h"
#include "com/graphhopper/routing/AbstractRoutingAlgorithm.h"
#include "com/graphhopper/routing/Path.h"
#include "com/graphhopper/routing/util/TraversalMode.h"
#include "com/graphhopper/routing/weighting/Weighting.h"
#include "com/graphhopper/storage/Graph.h"

@implementation AbstractBidirAlgo

- (instancetype)initWithGraph:(id<Graph>)graph
withComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)weighting
        withTraversalModeEnum:(TraversalModeEnum *)tMode {
  return [super initWithGraph:graph withComGraphhopperRoutingWeightingWeighting:weighting withTraversalModeEnum:tMode];
}

- (void)initFromWithInt:(jint)from
             withDouble:(jdouble)dist {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)initToWithInt:(jint)to
           withDouble:(jdouble)dist {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (Path *)createAndInitPath {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jdouble)getCurrentFromWeight {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jdouble)getCurrentToWeight {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)fillEdgesFrom {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)fillEdgesTo {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (Path *)calcPathWithInt:(jint)from
                  withInt:(jint)to {
  [self checkAlreadyRun];
  [self createAndInitPath];
  [self initFromWithInt:from withDouble:0];
  [self initToWithInt:to withDouble:0];
  [self runAlgo];
  return [self extractPath];
}

- (void)runAlgo {
  while (![self finished] && ![self isMaxVisitedNodesExceeded]) {
    if (!finishedFrom_) finishedFrom_ = ![self fillEdgesFrom];
    if (!finishedTo_) finishedTo_ = ![self fillEdgesTo];
  }
}

- (jint)getVisitedNodes {
  return visitedCountFrom_ + visitedCountTo_;
}

- (void)copyAllFieldsTo:(AbstractBidirAlgo *)other {
  [super copyAllFieldsTo:other];
  other->finishedFrom_ = finishedFrom_;
  other->finishedTo_ = finishedTo_;
  other->visitedCountFrom_ = visitedCountFrom_;
  other->visitedCountTo_ = visitedCountTo_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithGraph:withComGraphhopperRoutingWeightingWeighting:withTraversalModeEnum:", "AbstractBidirAlgo", NULL, 0x1, NULL },
    { "initFromWithInt:withDouble:", "initFrom", "V", 0x400, NULL },
    { "initToWithInt:withDouble:", "initTo", "V", 0x400, NULL },
    { "createAndInitPath", NULL, "Lcom.graphhopper.routing.Path;", 0x404, NULL },
    { "getCurrentFromWeight", NULL, "D", 0x404, NULL },
    { "getCurrentToWeight", NULL, "D", 0x404, NULL },
    { "fillEdgesFrom", NULL, "Z", 0x400, NULL },
    { "fillEdgesTo", NULL, "Z", 0x400, NULL },
    { "calcPathWithInt:withInt:", "calcPath", "Lcom.graphhopper.routing.Path;", 0x1, NULL },
    { "runAlgo", NULL, "V", 0x4, NULL },
    { "getVisitedNodes", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "finishedFrom_", NULL, 0x4, "Z", NULL,  },
    { "finishedTo_", NULL, 0x4, "Z", NULL,  },
    { "visitedCountFrom_", NULL, 0x0, "I", NULL,  },
    { "visitedCountTo_", NULL, 0x0, "I", NULL,  },
  };
  static const J2ObjcClassInfo _AbstractBidirAlgo = { 1, "AbstractBidirAlgo", "com.graphhopper.routing", NULL, 0x401, 11, methods, 4, fields, 0, NULL};
  return &_AbstractBidirAlgo;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AbstractBidirAlgo)