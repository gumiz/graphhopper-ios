//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/template/AbstractRoutingTemplate.java
//

#ifndef _ComGraphhopperRoutingTemplateAbstractRoutingTemplate_H_
#define _ComGraphhopperRoutingTemplateAbstractRoutingTemplate_H_

@class PointList;
@protocol JavaUtilList;

#include "J2ObjC_header.h"

/**
 @author Peter Karich
 */
@interface ComGraphhopperRoutingTemplateAbstractRoutingTemplate : NSObject {
 @public
  id<JavaUtilList> queryResults_;
}

- (PointList *)getWaypoints;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperRoutingTemplateAbstractRoutingTemplate)

J2OBJC_FIELD_SETTER(ComGraphhopperRoutingTemplateAbstractRoutingTemplate, queryResults_, id<JavaUtilList>)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperRoutingTemplateAbstractRoutingTemplate)

#endif // _ComGraphhopperRoutingTemplateAbstractRoutingTemplate_H_