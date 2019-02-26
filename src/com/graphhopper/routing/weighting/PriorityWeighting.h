//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/weighting/PriorityWeighting.java
//

#ifndef _ComGraphhopperRoutingWeightingPriorityWeighting_H_
#define _ComGraphhopperRoutingWeightingPriorityWeighting_H_

@class PMap;
@protocol EdgeIteratorState;
@protocol FlagEncoder;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/weighting/FastestWeighting.h"

#define ComGraphhopperRoutingWeightingPriorityWeighting_KEY 101

/**
 @brief Special weighting for (motor)bike <p>
 @author Peter Karich
 */
@interface ComGraphhopperRoutingWeightingPriorityWeighting : ComGraphhopperRoutingWeightingFastestWeighting {
}

- (instancetype)initWithFlagEncoder:(id<FlagEncoder>)encoder;

- (instancetype)initWithFlagEncoder:(id<FlagEncoder>)encoder
                           withPMap:(PMap *)pMap;

- (jdouble)getMinWeightWithDouble:(jdouble)distance;

- (jdouble)calcWeightWithEdgeIteratorState:(id<EdgeIteratorState>)edgeState
                               withBoolean:(jboolean)reverse
                                   withInt:(jint)prevOrNextEdgeId;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperRoutingWeightingPriorityWeighting)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(ComGraphhopperRoutingWeightingPriorityWeighting, KEY, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperRoutingWeightingPriorityWeighting)

#endif // _ComGraphhopperRoutingWeightingPriorityWeighting_H_
