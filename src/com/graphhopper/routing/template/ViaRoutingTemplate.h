//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/template/ViaRoutingTemplate.java
//

#ifndef _ComGraphhopperRoutingTemplateViaRoutingTemplate_H_
#define _ComGraphhopperRoutingTemplateViaRoutingTemplate_H_

@class AlgorithmOptions;
@class GHRequest;
@class GHResponse;
@class PathMerger;
@class PathWrapper;
@class QueryGraph;
@protocol FlagEncoder;
@protocol JavaUtilList;
@protocol LocationIndex;
@protocol RoutingAlgorithmFactory;
@protocol Translation;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/template/AbstractRoutingTemplate.h"
#include "com/graphhopper/routing/template/RoutingTemplate.h"

/**
 @brief Implementation of calculating a route with multiple via points.
 @author Peter Karich
 */
@interface ComGraphhopperRoutingTemplateViaRoutingTemplate : ComGraphhopperRoutingTemplateAbstractRoutingTemplate < ComGraphhopperRoutingTemplateRoutingTemplate > {
 @public
  GHRequest *ghRequest_;
  GHResponse *ghResponse_;
  PathWrapper *altResponse_;
  id<JavaUtilList> pathList_;
}

- (instancetype)initWithGHRequest:(GHRequest *)ghRequest
                   withGHResponse:(GHResponse *)ghRsp
                withLocationIndex:(id<LocationIndex>)locationIndex;

- (id<JavaUtilList>)lookupWithJavaUtilList:(id<JavaUtilList>)points
                           withFlagEncoder:(id<FlagEncoder>)encoder;

- (id<JavaUtilList>)calcPathsWithQueryGraph:(QueryGraph *)queryGraph
                withRoutingAlgorithmFactory:(id<RoutingAlgorithmFactory>)algoFactory
                       withAlgorithmOptions:(AlgorithmOptions *)algoOpts;

- (jboolean)isReadyWithPathMerger:(PathMerger *)pathMerger
                  withTranslation:(id<Translation>)tr;

- (jint)getMaxRetries;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperRoutingTemplateViaRoutingTemplate)

J2OBJC_FIELD_SETTER(ComGraphhopperRoutingTemplateViaRoutingTemplate, ghRequest_, GHRequest *)
J2OBJC_FIELD_SETTER(ComGraphhopperRoutingTemplateViaRoutingTemplate, ghResponse_, GHResponse *)
J2OBJC_FIELD_SETTER(ComGraphhopperRoutingTemplateViaRoutingTemplate, altResponse_, PathWrapper *)
J2OBJC_FIELD_SETTER(ComGraphhopperRoutingTemplateViaRoutingTemplate, pathList_, id<JavaUtilList>)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperRoutingTemplateViaRoutingTemplate)

#endif // _ComGraphhopperRoutingTemplateViaRoutingTemplate_H_