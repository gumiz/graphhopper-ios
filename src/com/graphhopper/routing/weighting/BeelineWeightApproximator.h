//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/weighting/BeelineWeightApproximator.java
//

#ifndef _ComGraphhopperRoutingWeightingBeelineWeightApproximator_H_
#define _ComGraphhopperRoutingWeightingBeelineWeightApproximator_H_

@protocol ComGraphhopperRoutingWeightingWeighting;
@protocol DistanceCalc;
@protocol NodeAccess;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/weighting/WeightApproximator.h"

/**
 @brief Approximates the distance to the goal node by weighting the beeline distance according to the distance weighting <p>
 @author jansoe
 */
@interface ComGraphhopperRoutingWeightingBeelineWeightApproximator : NSObject < ComGraphhopperRoutingWeightingWeightApproximator > {
}

- (instancetype)initWithNodeAccess:(id<NodeAccess>)nodeAccess
withComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)weighting;

- (void)setGoalNodeWithInt:(jint)toNode;

- (id<ComGraphhopperRoutingWeightingWeightApproximator>)setEpsilonWithDouble:(jdouble)epsilon;

- (id<ComGraphhopperRoutingWeightingWeightApproximator>)duplicate;

- (jdouble)approximateWithInt:(jint)fromNode;

- (ComGraphhopperRoutingWeightingBeelineWeightApproximator *)setDistanceCalcWithDistanceCalc:(id<DistanceCalc>)distanceCalc;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperRoutingWeightingBeelineWeightApproximator)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperRoutingWeightingBeelineWeightApproximator)

#endif // _ComGraphhopperRoutingWeightingBeelineWeightApproximator_H_
