//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/weighting/FastestWeighting.java
//

#ifndef _ComGraphhopperRoutingWeightingFastestWeighting_H_
#define _ComGraphhopperRoutingWeightingFastestWeighting_H_

@class PMap;
@protocol EdgeIteratorState;
@protocol FlagEncoder;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/weighting/AbstractWeighting.h"

#define ComGraphhopperRoutingWeightingFastestWeighting_SPEED_CONV 3.6

/**
 @brief Calculates the fastest route with the specified vehicle (VehicleEncoder).
 Calculates the weight in seconds. <p>
 @author Peter Karich
 */
@interface ComGraphhopperRoutingWeightingFastestWeighting : ComGraphhopperRoutingWeightingAbstractWeighting {
}

- (instancetype)initWithFlagEncoder:(id<FlagEncoder>)encoder
                           withPMap:(PMap *)pMap;

- (instancetype)initWithFlagEncoder:(id<FlagEncoder>)encoder;

- (jdouble)getMinWeightWithDouble:(jdouble)distance;

- (jdouble)calcWeightWithEdgeIteratorState:(id<EdgeIteratorState>)edge
                               withBoolean:(jboolean)reverse
                                   withInt:(jint)prevOrNextEdgeId;

- (jlong)calcMillisWithEdgeIteratorState:(id<EdgeIteratorState>)edgeState
                             withBoolean:(jboolean)reverse
                                 withInt:(jint)prevOrNextEdgeId;

- (NSString *)getName;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperRoutingWeightingFastestWeighting)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(ComGraphhopperRoutingWeightingFastestWeighting, SPEED_CONV, jdouble)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperRoutingWeightingFastestWeighting)

#endif // _ComGraphhopperRoutingWeightingFastestWeighting_H_
