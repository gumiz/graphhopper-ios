//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/PriorityCode.java
//

#ifndef _PriorityCode_H_
#define _PriorityCode_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, PriorityCode) {
  PriorityCode_WORST = 0,
  PriorityCode_AVOID_AT_ALL_COSTS = 1,
  PriorityCode_REACH_DEST = 2,
  PriorityCode_AVOID_IF_POSSIBLE = 3,
  PriorityCode_UNCHANGED = 4,
  PriorityCode_PREFER = 5,
  PriorityCode_VERY_NICE = 6,
  PriorityCode_BEST = 7,
};

@interface PriorityCodeEnum : JavaLangEnum < NSCopying > {
}

- (jint)getValue;

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *PriorityCodeEnum_values();

+ (PriorityCodeEnum *)valueOfWithNSString:(NSString *)name;

FOUNDATION_EXPORT PriorityCodeEnum *PriorityCodeEnum_valueOfWithNSString_(NSString *name);
- (id)copyWithZone:(NSZone *)zone;

@end

FOUNDATION_EXPORT BOOL PriorityCodeEnum_initialized;
J2OBJC_STATIC_INIT(PriorityCodeEnum)

FOUNDATION_EXPORT PriorityCodeEnum *PriorityCodeEnum_values_[];

#define PriorityCodeEnum_WORST PriorityCodeEnum_values_[PriorityCode_WORST]
J2OBJC_ENUM_CONSTANT_GETTER(PriorityCodeEnum, WORST)

#define PriorityCodeEnum_AVOID_AT_ALL_COSTS PriorityCodeEnum_values_[PriorityCode_AVOID_AT_ALL_COSTS]
J2OBJC_ENUM_CONSTANT_GETTER(PriorityCodeEnum, AVOID_AT_ALL_COSTS)

#define PriorityCodeEnum_REACH_DEST PriorityCodeEnum_values_[PriorityCode_REACH_DEST]
J2OBJC_ENUM_CONSTANT_GETTER(PriorityCodeEnum, REACH_DEST)

#define PriorityCodeEnum_AVOID_IF_POSSIBLE PriorityCodeEnum_values_[PriorityCode_AVOID_IF_POSSIBLE]
J2OBJC_ENUM_CONSTANT_GETTER(PriorityCodeEnum, AVOID_IF_POSSIBLE)

#define PriorityCodeEnum_UNCHANGED PriorityCodeEnum_values_[PriorityCode_UNCHANGED]
J2OBJC_ENUM_CONSTANT_GETTER(PriorityCodeEnum, UNCHANGED)

#define PriorityCodeEnum_PREFER PriorityCodeEnum_values_[PriorityCode_PREFER]
J2OBJC_ENUM_CONSTANT_GETTER(PriorityCodeEnum, PREFER)

#define PriorityCodeEnum_VERY_NICE PriorityCodeEnum_values_[PriorityCode_VERY_NICE]
J2OBJC_ENUM_CONSTANT_GETTER(PriorityCodeEnum, VERY_NICE)

#define PriorityCodeEnum_BEST PriorityCodeEnum_values_[PriorityCode_BEST]
J2OBJC_ENUM_CONSTANT_GETTER(PriorityCodeEnum, BEST)

typedef PriorityCodeEnum ComGraphhopperRoutingUtilPriorityCodeEnum;

J2OBJC_TYPE_LITERAL_HEADER(PriorityCodeEnum)

#endif // _PriorityCode_H_
