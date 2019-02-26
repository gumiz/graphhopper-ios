//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/BreadthFirstSearch.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/coll/GHBitSet.h"
#include "com/graphhopper/util/BreadthFirstSearch.h"
#include "com/graphhopper/util/EdgeExplorer.h"
#include "com/graphhopper/util/EdgeIterator.h"
#include "com/graphhopper/util/SimpleIntDeque.h"
#include "com/graphhopper/util/XFirstSearch.h"

@implementation BreadthFirstSearch

- (void)startWithEdgeExplorer:(id<EdgeExplorer>)explorer
                      withInt:(jint)startNode {
  SimpleIntDeque *fifo = [[[SimpleIntDeque alloc] init] autorelease];
  id<GHBitSet> visited = [self createBitSet];
  [((id<GHBitSet>) nil_chk(visited)) addWithInt:startNode];
  [fifo pushWithInt:startNode];
  jint current;
  while (![fifo isEmpty]) {
    current = [fifo pop];
    if (![self goFurtherWithInt:current]) continue;
    id<EdgeIterator> iter = [((id<EdgeExplorer>) nil_chk(explorer)) setBaseNodeWithInt:current];
    while ([((id<EdgeIterator>) nil_chk(iter)) next]) {
      jint connectedId = [iter getAdjNode];
      if ([self checkAdjacentWithEdgeIteratorState:iter] && ![visited containsWithInt:connectedId]) {
        [visited addWithInt:connectedId];
        [fifo pushWithInt:connectedId];
      }
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
  static const J2ObjcClassInfo _BreadthFirstSearch = { 1, "BreadthFirstSearch", "com.graphhopper.util", NULL, 0x1, 2, methods, 0, NULL, 0, NULL};
  return &_BreadthFirstSearch;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BreadthFirstSearch)