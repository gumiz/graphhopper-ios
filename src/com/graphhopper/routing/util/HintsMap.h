//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/HintsMap.java
//

#ifndef _HintsMap_H_
#define _HintsMap_H_

#include "J2ObjC_header.h"
#include "com/graphhopper/util/PMap.h"

/**
 @author Peter Karich
 */
@interface HintsMap : PMap {
}

- (instancetype)init;

/**
 @brief Convenient constructor if only one parameter is provided <p>
 */
- (instancetype)initWithNSString:(NSString *)weighting;

- (HintsMap *)putWithNSString:(NSString *)key
                       withId:(id)str;

- (NSString *)getWeighting;

- (HintsMap *)setWeightingWithNSString:(NSString *)w;

- (NSString *)getVehicle;

- (HintsMap *)setVehicleWithNSString:(NSString *)v;

@end

J2OBJC_EMPTY_STATIC_INIT(HintsMap)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef HintsMap ComGraphhopperRoutingUtilHintsMap;

J2OBJC_TYPE_LITERAL_HEADER(HintsMap)

#endif // _HintsMap_H_
