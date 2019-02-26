//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/ch/CHAlgoFactoryDecorator.java
//

#ifndef _CHAlgoFactoryDecorator_H_
#define _CHAlgoFactoryDecorator_H_

@class CmdArgs;
@class GraphHopperStorage;
@class HintsMap;
@class IOSObjectArray;
@class PrepareContractionHierarchies;
@class StorableProperties;
@class TraversalModeEnum;
@protocol ComGraphhopperRoutingWeightingWeighting;
@protocol JavaUtilConcurrentExecutorService;
@protocol JavaUtilList;
@protocol OrgSlf4jLogger;
@protocol RoutingAlgorithmFactory;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/RoutingAlgorithmFactoryDecorator.h"
#include "java/lang/Runnable.h"

/**
 @brief This class implements the CH decorator for the routing algorithm factory and provides several helper methods related to CH preparation and its vehicle profiles.
 @author Peter Karich
 */
@interface CHAlgoFactoryDecorator : NSObject < RoutingAlgorithmFactoryDecorator > {
}

- (instancetype)init;

- (void)init__WithCmdArgs:(CmdArgs *)args OBJC_METHOD_FAMILY_NONE;

- (jint)getPreparationPeriodicUpdates;

- (CHAlgoFactoryDecorator *)setPreparationPeriodicUpdatesWithInt:(jint)preparePeriodicUpdates;

- (jint)getPreparationContractedNodes;

- (CHAlgoFactoryDecorator *)setPreparationContractedNodesWithInt:(jint)prepareContractedNodes;

- (jint)getPreparationLazyUpdates;

- (CHAlgoFactoryDecorator *)setPreparationLazyUpdatesWithInt:(jint)prepareLazyUpdates;

- (jdouble)getPreparationLogMessages;

- (CHAlgoFactoryDecorator *)setPreparationLogMessagesWithDouble:(jdouble)prepareLogMessages;

- (jint)getPreparationNeighborUpdates;

- (CHAlgoFactoryDecorator *)setPreparationNeighborUpdatesWithInt:(jint)prepareNeighborUpdates;

- (jboolean)isEnabled;

/**
 @brief Enables or disables contraction hierarchies (CH).
 This speed-up mode is enabled by default.
 */
- (void)setEnabledWithBoolean:(jboolean)enabled;

- (jboolean)isDisablingAllowed;

/**
 @brief This method specifies if it is allowed to disable CH routing at runtime via routing hints.
 */
- (CHAlgoFactoryDecorator *)setDisablingAllowedWithBoolean:(jboolean)disablingAllowed;

/**
 @brief Decouple weightings from PrepareContractionHierarchies as we need weightings for the graphstorage and the graphstorage for the preparation.
 */
- (CHAlgoFactoryDecorator *)addWeightingWithComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)weighting;

- (CHAlgoFactoryDecorator *)addWeightingWithNSString:(NSString *)weighting;

- (CHAlgoFactoryDecorator *)addPreparationWithPrepareContractionHierarchies:(PrepareContractionHierarchies *)pch;

- (jboolean)hasWeightings;

- (id<JavaUtilList>)getWeightings;

- (CHAlgoFactoryDecorator *)setWeightingsAsStringsWithNSStringArray:(IOSObjectArray *)weightingNames;

- (id<JavaUtilList>)getWeightingsAsStrings;

/**
 @brief Enables the use of contraction hierarchies to reduce query times.
 Enabled by default.
 @param weightingList A list containing multiple weightings like: "fastest", "shortest" or your own weight-calculation type.
 */
- (CHAlgoFactoryDecorator *)setWeightingsAsStringsWithJavaUtilList:(id<JavaUtilList>)weightingList;

- (id<JavaUtilList>)getPreparations;

- (id<RoutingAlgorithmFactory>)getDecoratedAlgorithmFactoryWithRoutingAlgorithmFactory:(id<RoutingAlgorithmFactory>)defaultAlgoFactory
                                                                          withHintsMap:(HintsMap *)map;

- (jint)getPreparationThreads;

/**
 @brief This method changes the number of threads used for preparation on import.
 Default is 1. Make sure that you have enough memory to increase this number!
 */
- (void)setPreparationThreadsWithInt:(jint)preparationThreads;

- (void)prepareWithStorableProperties:(StorableProperties *)properties;

- (void)createPreparationsWithGraphHopperStorage:(GraphHopperStorage *)ghStorage
                           withTraversalModeEnum:(TraversalModeEnum *)traversalMode;

/**
 @brief For now only node based will work, later on we can easily find usage of this method to remove it.
 */
- (TraversalModeEnum *)getNodeBase;

@end

J2OBJC_EMPTY_STATIC_INIT(CHAlgoFactoryDecorator)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef CHAlgoFactoryDecorator ComGraphhopperRoutingChCHAlgoFactoryDecorator;

J2OBJC_TYPE_LITERAL_HEADER(CHAlgoFactoryDecorator)

@interface CHAlgoFactoryDecorator_$1 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithCHAlgoFactoryDecorator:(CHAlgoFactoryDecorator *)outer$
                                  withNSString:(NSString *)capture$0
                        withStorableProperties:(StorableProperties *)capture$1
             withPrepareContractionHierarchies:(PrepareContractionHierarchies *)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(CHAlgoFactoryDecorator_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(CHAlgoFactoryDecorator_$1)

#endif // _CHAlgoFactoryDecorator_H_
