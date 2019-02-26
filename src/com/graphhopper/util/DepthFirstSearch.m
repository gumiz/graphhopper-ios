//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/DepthFirstSearch.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/coll/GHBitSet.h"
#include "com/graphhopper/util/DepthFirstSearch.h"
#include "com/graphhopper/util/EdgeExplorer.h"
#include "com/graphhopper/util/EdgeIterator.h"
#include "com/graphhopper/util/XFirstSearch.h"
#include "gnu/trove/stack/array/TIntArrayStack.h"

@implementation DepthFirstSearch

- (void)startWithEdgeExplorer:(id<EdgeExplorer>)explorer
                      withInt:(jint)startNode {
  GnuTroveStackArrayTIntArrayStack *stack = [[[GnuTroveStackArrayTIntArrayStack alloc] init] autorelease];
  id<GHBitSet> explored = [self createBitSet];
  [stack pushWithInt:startNode];
  jint current;
  while ([stack size] > 0) {
    current = [stack pop];
    if (![((id<GHBitSet>) nil_chk(explored)) containsWithInt:current] && [self goFurtherWithInt:current]) {
      id<EdgeIterator> iter = [((id<EdgeExplorer>) nil_chk(explorer)) setBaseNodeWithInt:current];
      while ([((id<EdgeIterator>) nil_chk(iter)) next]) {
        jint connectedId = [iter getAdjNode];
        if ([self checkAdjacentWithEdgeIteratorState:iter]) {
          [stack pushWithInt:connectedId];
        }
      }
      [explored addWithInt:current];
    }
  }
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startWithEdgeExplorer:withInt:", "start", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _DepthFirstSearch = { 1, "DepthFirstSearch", "com.graphhopper.util", NULL, 0x1, 2, methods, 0, NULL, 0, NULL};
  return &_DepthFirstSearch;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DepthFirstSearch)
