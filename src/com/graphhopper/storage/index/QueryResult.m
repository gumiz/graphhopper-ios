//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/index/QueryResult.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/storage/index/QueryResult.h"
#include "com/graphhopper/util/DistanceCalc.h"
#include "com/graphhopper/util/EdgeIteratorState.h"
#include "com/graphhopper/util/PointList.h"
#include "com/graphhopper/util/shapes/GHPoint.h"
#include "com/graphhopper/util/shapes/GHPoint3D.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"

@interface QueryResult () {
 @public
  GHPoint *queryPoint_;
  jdouble queryDistance_;
  jint wayIndex_;
  jint closestNode_;
  id<EdgeIteratorState> closestEdge_;
  GHPoint3D *snappedPoint_;
  QueryResult_PositionEnum *snappedPosition_;
}
@end

J2OBJC_FIELD_SETTER(QueryResult, queryPoint_, GHPoint *)
J2OBJC_FIELD_SETTER(QueryResult, closestEdge_, id<EdgeIteratorState>)
J2OBJC_FIELD_SETTER(QueryResult, snappedPoint_, GHPoint3D *)
J2OBJC_FIELD_SETTER(QueryResult, snappedPosition_, QueryResult_PositionEnum *)

@implementation QueryResult

- (instancetype)initWithDouble:(jdouble)queryLat
                    withDouble:(jdouble)queryLon {
  if (self = [super init]) {
    queryDistance_ = JavaLangDouble_MAX_VALUE;
    wayIndex_ = -1;
    closestNode_ = -1;
    QueryResult_setAndConsume_queryPoint_(self, [[GHPoint alloc] initWithDouble:queryLat withDouble:queryLon]);
  }
  return self;
}

- (jint)getClosestNode {
  return closestNode_;
}

- (void)setClosestNodeWithInt:(jint)node {
  closestNode_ = node;
}

- (jdouble)getQueryDistance {
  return queryDistance_;
}

- (void)setQueryDistanceWithDouble:(jdouble)dist {
  queryDistance_ = dist;
}

- (jint)getWayIndex {
  return wayIndex_;
}

- (void)setWayIndexWithInt:(jint)wayIndex {
  self->wayIndex_ = wayIndex;
}

- (QueryResult_PositionEnum *)getSnappedPosition {
  return snappedPosition_;
}

- (void)setSnappedPositionWithQueryResult_PositionEnum:(QueryResult_PositionEnum *)pos {
  QueryResult_set_snappedPosition_(self, pos);
}

- (jboolean)isValid {
  return closestNode_ >= 0;
}

- (id<EdgeIteratorState>)getClosestEdge {
  return closestEdge_;
}

- (void)setClosestEdgeWithEdgeIteratorState:(id<EdgeIteratorState>)detach {
  QueryResult_set_closestEdge_(self, detach);
}

- (GHPoint *)getQueryPoint {
  return queryPoint_;
}

- (GHPoint3D *)getSnappedPoint {
  if (snappedPoint_ == nil) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Calculate snapped point before!"] autorelease];
  return snappedPoint_;
}

- (void)calcSnappedPointWithDistanceCalc:(id<DistanceCalc>)distCalc {
  if (closestEdge_ == nil) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"No closest edge?"] autorelease];
  if (snappedPoint_ != nil) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Calculate snapped point only once"] autorelease];
  PointList *fullPL = [((id<EdgeIteratorState>) nil_chk([self getClosestEdge])) fetchWayGeometryWithInt:3];
  jdouble tmpLat = [((PointList *) nil_chk(fullPL)) getLatitudeWithInt:wayIndex_];
  jdouble tmpLon = [fullPL getLongitudeWithInt:wayIndex_];
  jdouble tmpEle = [fullPL getElevationWithInt:wayIndex_];
  if (snappedPosition_ != QueryResult_PositionEnum_get_EDGE()) {
    QueryResult_setAndConsume_snappedPoint_(self, [[GHPoint3D alloc] initWithDouble:tmpLat withDouble:tmpLon withDouble:tmpEle]);
    return;
  }
  jdouble queryLat = ((GHPoint *) nil_chk([self getQueryPoint]))->lat_, queryLon = ((GHPoint *) nil_chk([self getQueryPoint]))->lon_;
  jdouble adjLat = [fullPL getLatitudeWithInt:wayIndex_ + 1], adjLon = [fullPL getLongitudeWithInt:wayIndex_ + 1];
  if ([((id<DistanceCalc>) nil_chk(distCalc)) validEdgeDistanceWithDouble:queryLat withDouble:queryLon withDouble:tmpLat withDouble:tmpLon withDouble:adjLat withDouble:adjLon]) {
    GHPoint *tmpPoint = [distCalc calcCrossingPointToEdgeWithDouble:queryLat withDouble:queryLon withDouble:tmpLat withDouble:tmpLon withDouble:adjLat withDouble:adjLon];
    jdouble adjEle = [fullPL getElevationWithInt:wayIndex_ + 1];
    QueryResult_setAndConsume_snappedPoint_(self, [[GHPoint3D alloc] initWithDouble:((GHPoint *) nil_chk(tmpPoint))->lat_ withDouble:tmpPoint->lon_ withDouble:(tmpEle + adjEle) / 2]);
  }
  else QueryResult_setAndConsume_snappedPoint_(self, [[GHPoint3D alloc] initWithDouble:tmpLat withDouble:tmpLon withDouble:tmpEle]);
}

- (NSString *)description {
  if (closestEdge_ != nil) return JreStrcat("ICI$@", [closestEdge_ getBaseNode], '-', [closestEdge_ getAdjNode], @"  ", snappedPoint_);
  return JreStrcat("I$@$I", closestNode_, @", ", queryPoint_, @", ", wayIndex_);
}

- (void)dealloc {
  RELEASE_(queryPoint_);
  RELEASE_(closestEdge_);
  RELEASE_(snappedPoint_);
  RELEASE_(snappedPosition_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(QueryResult *)other {
  [super copyAllFieldsTo:other];
  QueryResult_set_queryPoint_(other, queryPoint_);
  other->queryDistance_ = queryDistance_;
  other->wayIndex_ = wayIndex_;
  other->closestNode_ = closestNode_;
  QueryResult_set_closestEdge_(other, closestEdge_);
  QueryResult_set_snappedPoint_(other, snappedPoint_);
  QueryResult_set_snappedPosition_(other, snappedPosition_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithDouble:withDouble:", "QueryResult", NULL, 0x1, NULL },
    { "getClosestNode", NULL, "I", 0x1, NULL },
    { "setClosestNodeWithInt:", "setClosestNode", "V", 0x1, NULL },
    { "getQueryDistance", NULL, "D", 0x1, NULL },
    { "setQueryDistanceWithDouble:", "setQueryDistance", "V", 0x1, NULL },
    { "getWayIndex", NULL, "I", 0x1, NULL },
    { "setWayIndexWithInt:", "setWayIndex", "V", 0x1, NULL },
    { "getSnappedPosition", NULL, "Lcom.graphhopper.storage.index.QueryResult$Position;", 0x1, NULL },
    { "setSnappedPositionWithQueryResult_PositionEnum:", "setSnappedPosition", "V", 0x1, NULL },
    { "isValid", NULL, "Z", 0x1, NULL },
    { "getClosestEdge", NULL, "Lcom.graphhopper.util.EdgeIteratorState;", 0x1, NULL },
    { "setClosestEdgeWithEdgeIteratorState:", "setClosestEdge", "V", 0x1, NULL },
    { "getQueryPoint", NULL, "Lcom.graphhopper.util.shapes.GHPoint;", 0x1, NULL },
    { "getSnappedPoint", NULL, "Lcom.graphhopper.util.shapes.GHPoint3D;", 0x1, NULL },
    { "calcSnappedPointWithDistanceCalc:", "calcSnappedPoint", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "queryPoint_", NULL, 0x12, "Lcom.graphhopper.util.shapes.GHPoint;", NULL,  },
    { "queryDistance_", NULL, 0x2, "D", NULL,  },
    { "wayIndex_", NULL, 0x2, "I", NULL,  },
    { "closestNode_", NULL, 0x2, "I", NULL,  },
    { "closestEdge_", NULL, 0x2, "Lcom.graphhopper.util.EdgeIteratorState;", NULL,  },
    { "snappedPoint_", NULL, 0x2, "Lcom.graphhopper.util.shapes.GHPoint3D;", NULL,  },
    { "snappedPosition_", NULL, 0x2, "Lcom.graphhopper.storage.index.QueryResult$Position;", NULL,  },
  };
  static const J2ObjcClassInfo _QueryResult = { 1, "QueryResult", "com.graphhopper.storage.index", NULL, 0x1, 16, methods, 7, fields, 0, NULL};
  return &_QueryResult;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(QueryResult)

BOOL QueryResult_PositionEnum_initialized = NO;

QueryResult_PositionEnum *QueryResult_PositionEnum_values_[3];

@implementation QueryResult_PositionEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

IOSObjectArray *QueryResult_PositionEnum_values() {
  QueryResult_PositionEnum_init();
  return [IOSObjectArray arrayWithObjects:QueryResult_PositionEnum_values_ count:3 type:QueryResult_PositionEnum_class_()];
}
+ (IOSObjectArray *)values {
  return QueryResult_PositionEnum_values();
}

+ (QueryResult_PositionEnum *)valueOfWithNSString:(NSString *)name {
  return QueryResult_PositionEnum_valueOfWithNSString_(name);
}

QueryResult_PositionEnum *QueryResult_PositionEnum_valueOfWithNSString_(NSString *name) {
  QueryResult_PositionEnum_init();
  for (int i = 0; i < 3; i++) {
    QueryResult_PositionEnum *e = QueryResult_PositionEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [QueryResult_PositionEnum class]) {
    QueryResult_PositionEnum_EDGE = [[QueryResult_PositionEnum alloc] initWithNSString:@"EDGE" withInt:0];
    QueryResult_PositionEnum_TOWER = [[QueryResult_PositionEnum alloc] initWithNSString:@"TOWER" withInt:1];
    QueryResult_PositionEnum_PILLAR = [[QueryResult_PositionEnum alloc] initWithNSString:@"PILLAR" withInt:2];
    J2OBJC_SET_INITIALIZED(QueryResult_PositionEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:", "init", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EDGE", "EDGE", 0x4019, "Lcom.graphhopper.storage.index.QueryResult$Position;", &QueryResult_PositionEnum_EDGE,  },
    { "TOWER", "TOWER", 0x4019, "Lcom.graphhopper.storage.index.QueryResult$Position;", &QueryResult_PositionEnum_TOWER,  },
    { "PILLAR", "PILLAR", 0x4019, "Lcom.graphhopper.storage.index.QueryResult$Position;", &QueryResult_PositionEnum_PILLAR,  },
  };
  static const char *superclass_type_args[] = {"Lcom.graphhopper.storage.index.QueryResult$Position;"};
  static const J2ObjcClassInfo _QueryResult_PositionEnum = { 1, "Position", "com.graphhopper.storage.index", "QueryResult", 0x4019, 1, methods, 3, fields, 1, superclass_type_args};
  return &_QueryResult_PositionEnum;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(QueryResult_PositionEnum)
