//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/index/Location2IDFullWithEdgesIndex.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/routing/util/AllEdgesIterator.h"
#include "com/graphhopper/routing/util/EdgeFilter.h"
#include "com/graphhopper/storage/Graph.h"
#include "com/graphhopper/storage/NodeAccess.h"
#include "com/graphhopper/storage/index/Location2IDFullWithEdgesIndex.h"
#include "com/graphhopper/storage/index/LocationIndex.h"
#include "com/graphhopper/storage/index/QueryResult.h"
#include "com/graphhopper/util/DistanceCalc.h"
#include "com/graphhopper/util/DistancePlaneProjection.h"
#include "com/graphhopper/util/EdgeIteratorState.h"
#include "com/graphhopper/util/Helper.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalStateException.h"

@interface Location2IDFullWithEdgesIndex () {
 @public
  id<Graph> graph_;
  id<NodeAccess> nodeAccess_;
  id<DistanceCalc> calc_;
  jboolean closed_;
}
@end

J2OBJC_FIELD_SETTER(Location2IDFullWithEdgesIndex, graph_, id<Graph>)
J2OBJC_FIELD_SETTER(Location2IDFullWithEdgesIndex, nodeAccess_, id<NodeAccess>)
J2OBJC_FIELD_SETTER(Location2IDFullWithEdgesIndex, calc_, id<DistanceCalc>)

@implementation Location2IDFullWithEdgesIndex

- (instancetype)initWithGraph:(id<Graph>)g {
  if (self = [super init]) {
    Location2IDFullWithEdgesIndex_set_calc_(self, Helper_get_DIST_EARTH_());
    closed_ = NO;
    Location2IDFullWithEdgesIndex_set_graph_(self, g);
    Location2IDFullWithEdgesIndex_set_nodeAccess_(self, [((id<Graph>) nil_chk(g)) getNodeAccess]);
  }
  return self;
}

- (jboolean)loadExisting {
  return YES;
}

- (id<LocationIndex>)setResolutionWithInt:(jint)resolution {
  return self;
}

- (id<LocationIndex>)setApproximationWithBoolean:(jboolean)approxDist {
  if (approxDist) {
    Location2IDFullWithEdgesIndex_set_calc_(self, Helper_get_DIST_PLANE_());
  }
  else {
    Location2IDFullWithEdgesIndex_set_calc_(self, Helper_get_DIST_EARTH_());
  }
  return self;
}

- (id<LocationIndex>)prepareIndex {
  return self;
}

- (jint)findIDWithDouble:(jdouble)lat
              withDouble:(jdouble)lon {
  return [((QueryResult *) nil_chk([self findClosestWithDouble:lat withDouble:lon withEdgeFilter:EdgeFilter_get_ALL_EDGES_()])) getClosestNode];
}

- (QueryResult *)findClosestWithDouble:(jdouble)queryLat
                            withDouble:(jdouble)queryLon
                        withEdgeFilter:(id<EdgeFilter>)filter {
  if ([self isClosed]) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"You need to create a new LocationIndex instance as it is already closed"] autorelease];
  QueryResult *res = [[[QueryResult alloc] initWithDouble:queryLat withDouble:queryLon] autorelease];
  jdouble foundDist = JavaLangDouble_MAX_VALUE;
  id<AllEdgesIterator> iter = [((id<Graph>) nil_chk(graph_)) getAllEdges];
  while ([((id<AllEdgesIterator>) nil_chk(iter)) next]) {
    if (![((id<EdgeFilter>) nil_chk(filter)) acceptWithEdgeIteratorState:iter]) {
      continue;
    }
    for (jint i = 0, node; i < 2; i++) {
      if (i == 0) {
        node = [iter getBaseNode];
      }
      else {
        node = [iter getAdjNode];
      }
      jdouble fromLat = [((id<NodeAccess>) nil_chk(nodeAccess_)) getLatitudeWithInt:node];
      jdouble fromLon = [nodeAccess_ getLongitudeWithInt:node];
      jdouble fromDist = [((id<DistanceCalc>) nil_chk(calc_)) calcDistWithDouble:fromLat withDouble:fromLon withDouble:queryLat withDouble:queryLon];
      if (fromDist < 0) continue;
      if (fromDist < foundDist) {
        [res setQueryDistanceWithDouble:fromDist];
        [res setClosestEdgeWithEdgeIteratorState:[iter detachWithBoolean:NO]];
        [res setClosestNodeWithInt:node];
        foundDist = fromDist;
      }
      if (i > 0) continue;
      jint toNode = [iter getAdjNode];
      jdouble toLat = [nodeAccess_ getLatitudeWithInt:toNode];
      jdouble toLon = [nodeAccess_ getLongitudeWithInt:toNode];
      if ([calc_ validEdgeDistanceWithDouble:queryLat withDouble:queryLon withDouble:fromLat withDouble:fromLon withDouble:toLat withDouble:toLon]) {
        jdouble distEdge = [calc_ calcDenormalizedDistWithDouble:[calc_ calcNormalizedEdgeDistanceWithDouble:queryLat withDouble:queryLon withDouble:fromLat withDouble:fromLon withDouble:toLat withDouble:toLon]];
        if (distEdge < foundDist) {
          [res setQueryDistanceWithDouble:distEdge];
          [res setClosestNodeWithInt:node];
          [res setClosestEdgeWithEdgeIteratorState:iter];
          if (fromDist > [calc_ calcDistWithDouble:toLat withDouble:toLon withDouble:queryLat withDouble:queryLon]) [res setClosestNodeWithInt:toNode];
          foundDist = distEdge;
        }
      }
    }
  }
  return res;
}

- (id<LocationIndex>)createWithLong:(jlong)size {
  return self;
}

- (void)flush {
}

- (void)close {
  closed_ = YES;
}

- (jboolean)isClosed {
  return closed_;
}

- (jlong)getCapacity {
  return 0;
}

- (void)setSegmentSizeWithInt:(jint)bytes {
}

- (void)dealloc {
  RELEASE_(graph_);
  RELEASE_(nodeAccess_);
  RELEASE_(calc_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(Location2IDFullWithEdgesIndex *)other {
  [super copyAllFieldsTo:other];
  Location2IDFullWithEdgesIndex_set_graph_(other, graph_);
  Location2IDFullWithEdgesIndex_set_nodeAccess_(other, nodeAccess_);
  Location2IDFullWithEdgesIndex_set_calc_(other, calc_);
  other->closed_ = closed_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithGraph:", "Location2IDFullWithEdgesIndex", NULL, 0x1, NULL },
    { "loadExisting", NULL, "Z", 0x1, NULL },
    { "setResolutionWithInt:", "setResolution", "Lcom.graphhopper.storage.index.LocationIndex;", 0x1, NULL },
    { "setApproximationWithBoolean:", "setApproximation", "Lcom.graphhopper.storage.index.LocationIndex;", 0x1, NULL },
    { "prepareIndex", NULL, "Lcom.graphhopper.storage.index.LocationIndex;", 0x1, NULL },
    { "findIDWithDouble:withDouble:", "findID", "I", 0x1, NULL },
    { "findClosestWithDouble:withDouble:withEdgeFilter:", "findClosest", "Lcom.graphhopper.storage.index.QueryResult;", 0x1, NULL },
    { "createWithLong:", "create", "Lcom.graphhopper.storage.index.LocationIndex;", 0x1, NULL },
    { "flush", NULL, "V", 0x1, NULL },
    { "close", NULL, "V", 0x1, NULL },
    { "isClosed", NULL, "Z", 0x1, NULL },
    { "getCapacity", NULL, "J", 0x1, NULL },
    { "setSegmentSizeWithInt:", "setSegmentSize", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "graph_", NULL, 0x12, "Lcom.graphhopper.storage.Graph;", NULL,  },
    { "nodeAccess_", NULL, 0x12, "Lcom.graphhopper.storage.NodeAccess;", NULL,  },
    { "calc_", NULL, 0x2, "Lcom.graphhopper.util.DistanceCalc;", NULL,  },
    { "closed_", NULL, 0x2, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _Location2IDFullWithEdgesIndex = { 1, "Location2IDFullWithEdgesIndex", "com.graphhopper.storage.index", NULL, 0x1, 13, methods, 4, fields, 0, NULL};
  return &_Location2IDFullWithEdgesIndex;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Location2IDFullWithEdgesIndex)