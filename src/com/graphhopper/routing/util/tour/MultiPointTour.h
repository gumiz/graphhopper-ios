//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/tour/MultiPointTour.java
//

#ifndef _ComGraphhopperRoutingUtilTourMultiPointTour_H_
#define _ComGraphhopperRoutingUtilTourMultiPointTour_H_

@class JavaUtilRandom;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/util/tour/TourStrategy.h"

/**
 @brief Generate only a single points
 @author Robin Boldt
 */
@interface ComGraphhopperRoutingUtilTourMultiPointTour : ComGraphhopperRoutingUtilTourTourStrategy {
}

- (instancetype)initWithJavaUtilRandom:(JavaUtilRandom *)random
                            withDouble:(jdouble)distanceInMeter
                               withInt:(jint)allPoints;

- (instancetype)initWithJavaUtilRandom:(JavaUtilRandom *)random
                            withDouble:(jdouble)distanceInMeter
                               withInt:(jint)allPoints
                            withDouble:(jdouble)initialHeading;

- (jint)getNumberOfGeneratedPoints;

- (jdouble)getDistanceForIterationWithInt:(jint)iteration;

- (jdouble)getHeadingForIterationWithInt:(jint)iteration;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperRoutingUtilTourMultiPointTour)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperRoutingUtilTourMultiPointTour)

#endif // _ComGraphhopperRoutingUtilTourMultiPointTour_H_
