//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/tour/TourStrategy.java
//

#ifndef _ComGraphhopperRoutingUtilTourTourStrategy_H_
#define _ComGraphhopperRoutingUtilTourTourStrategy_H_

@class JavaUtilRandom;

#include "J2ObjC_header.h"

/**
 @brief Defines the strategy of creating tours.
 @author Robin Boldt
 */
@interface ComGraphhopperRoutingUtilTourTourStrategy : NSObject {
 @public
  JavaUtilRandom *random_;
  jdouble overallDistance_;
}

- (instancetype)initWithJavaUtilRandom:(JavaUtilRandom *)random
                            withDouble:(jdouble)distanceInMeter;

/**
 @brief Defines the number of points that are generated
 */
- (jint)getNumberOfGeneratedPoints;

/**
 @brief Returns the distance in meter that is used for the generated point of a certain iteration
 */
- (jdouble)getDistanceForIterationWithInt:(jint)iteration;

/**
 @brief Returns the north based heading between 0 and 360 for a certain iteration.
 */
- (jdouble)getHeadingForIterationWithInt:(jint)iteration;

/**
 @brief Modifies the Distance up to +-10%
 */
- (jdouble)slightlyModifyDistanceWithDouble:(jdouble)distance;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperRoutingUtilTourTourStrategy)

J2OBJC_FIELD_SETTER(ComGraphhopperRoutingUtilTourTourStrategy, random_, JavaUtilRandom *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperRoutingUtilTourTourStrategy)

#endif // _ComGraphhopperRoutingUtilTourTourStrategy_H_
