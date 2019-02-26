//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/RoutingAlgorithmFactoryDecorator.java
//

#ifndef _RoutingAlgorithmFactoryDecorator_H_
#define _RoutingAlgorithmFactoryDecorator_H_

@class HintsMap;
@protocol RoutingAlgorithmFactory;

#include "J2ObjC_header.h"

/**
 @author Peter Karich
 */
@protocol RoutingAlgorithmFactoryDecorator < NSObject, JavaObject >

- (jboolean)isEnabled;

/**
 @brief This method returns the specified algoFactory unchanged, decorates it or completely replaces it depending on the specified optionsMap.
 */
- (id<RoutingAlgorithmFactory>)getDecoratedAlgorithmFactoryWithRoutingAlgorithmFactory:(id<RoutingAlgorithmFactory>)algoFactory
                                                                          withHintsMap:(HintsMap *)optionsMap;

@end

J2OBJC_EMPTY_STATIC_INIT(RoutingAlgorithmFactoryDecorator)

#define ComGraphhopperRoutingRoutingAlgorithmFactoryDecorator RoutingAlgorithmFactoryDecorator

J2OBJC_TYPE_LITERAL_HEADER(RoutingAlgorithmFactoryDecorator)

#endif // _RoutingAlgorithmFactoryDecorator_H_