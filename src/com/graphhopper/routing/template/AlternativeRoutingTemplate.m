//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/template/AlternativeRoutingTemplate.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/GHRequest.h"
#include "com/graphhopper/GHResponse.h"
#include "com/graphhopper/PathWrapper.h"
#include "com/graphhopper/routing/AlgorithmOptions.h"
#include "com/graphhopper/routing/Path.h"
#include "com/graphhopper/routing/QueryGraph.h"
#include "com/graphhopper/routing/RoutingAlgorithmFactory.h"
#include "com/graphhopper/routing/template/AbstractRoutingTemplate.h"
#include "com/graphhopper/routing/template/AlternativeRoutingTemplate.h"
#include "com/graphhopper/routing/util/FlagEncoder.h"
#include "com/graphhopper/routing/util/HintsMap.h"
#include "com/graphhopper/storage/index/LocationIndex.h"
#include "com/graphhopper/util/Parameters.h"
#include "com/graphhopper/util/PathMerger.h"
#include "com/graphhopper/util/PointList.h"
#include "com/graphhopper/util/Translation.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "java/util/Collections.h"
#include "java/util/List.h"

@implementation ComGraphhopperRoutingTemplateAlternativeRoutingTemplate

- (instancetype)initWithGHRequest:(GHRequest *)ghRequest
                   withGHResponse:(GHResponse *)ghRsp
                withLocationIndex:(id<LocationIndex>)locationIndex {
  return [super initWithGHRequest:ghRequest withGHResponse:ghRsp withLocationIndex:locationIndex];
}

- (id<JavaUtilList>)lookupWithJavaUtilList:(id<JavaUtilList>)points
                           withFlagEncoder:(id<FlagEncoder>)encoder {
  if ([((id<JavaUtilList>) nil_chk(points)) size] > 2) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I$", @"Currently alternative routes work only with start and end point. You tried to use: ", [points size], @" points")] autorelease];
  return [super lookupWithJavaUtilList:points withFlagEncoder:encoder];
}

- (id<JavaUtilList>)calcPathsWithQueryGraph:(QueryGraph *)queryGraph
                withRoutingAlgorithmFactory:(id<RoutingAlgorithmFactory>)algoFactory
                       withAlgorithmOptions:(AlgorithmOptions *)algoOpts {
  jboolean withViaTurnPenalty = [((HintsMap *) nil_chk([((GHRequest *) nil_chk(ghRequest_)) getHints])) getBoolWithNSString:Parameters_Routing_get_PASS_THROUGH_() withBoolean:NO];
  if (withViaTurnPenalty) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$$$", @"Alternative paths and ", Parameters_Routing_get_PASS_THROUGH_(), @" at the same time is currently not supported")] autorelease];
  return [super calcPathsWithQueryGraph:queryGraph withRoutingAlgorithmFactory:algoFactory withAlgorithmOptions:algoOpts];
}

- (jboolean)isReadyWithPathMerger:(PathMerger *)pathMerger
                  withTranslation:(id<Translation>)tr {
  if ([((id<JavaUtilList>) nil_chk(pathList_)) isEmpty]) @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"Empty paths for alternative route calculation not expected"] autorelease];
  PointList *wpList = [self getWaypoints];
  [((PathWrapper *) nil_chk(altResponse_)) setWaypointsWithPointList:wpList];
  [((GHResponse *) nil_chk(ghResponse_)) addWithPathWrapper:altResponse_];
  [((PathMerger *) nil_chk(pathMerger)) doWorkWithPathWrapper:altResponse_ withJavaUtilList:JavaUtilCollections_singletonListWithId_([pathList_ getWithInt:0]) withTranslation:tr];
  for (jint index = 1; index < [pathList_ size]; index++) {
    PathWrapper *tmpAltRsp = [[[PathWrapper alloc] init] autorelease];
    [tmpAltRsp setWaypointsWithPointList:wpList];
    [ghResponse_ addWithPathWrapper:tmpAltRsp];
    [pathMerger doWorkWithPathWrapper:tmpAltRsp withJavaUtilList:JavaUtilCollections_singletonListWithId_([pathList_ getWithInt:index]) withTranslation:tr];
  }
  return YES;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithGHRequest:withGHResponse:withLocationIndex:", "AlternativeRoutingTemplate", NULL, 0x1, NULL },
    { "lookupWithJavaUtilList:withFlagEncoder:", "lookup", "Ljava.util.List;", 0x1, NULL },
    { "calcPathsWithQueryGraph:withRoutingAlgorithmFactory:withAlgorithmOptions:", "calcPaths", "Ljava.util.List;", 0x1, NULL },
    { "isReadyWithPathMerger:withTranslation:", "isReady", "Z", 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComGraphhopperRoutingTemplateAlternativeRoutingTemplate = { 1, "AlternativeRoutingTemplate", "com.graphhopper.routing.template", NULL, 0x11, 4, methods, 0, NULL, 0, NULL};
  return &_ComGraphhopperRoutingTemplateAlternativeRoutingTemplate;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGraphhopperRoutingTemplateAlternativeRoutingTemplate)