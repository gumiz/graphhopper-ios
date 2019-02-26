//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/BikeCommonFlagEncoder.java
//

#ifndef _BikeCommonFlagEncoder_H_
#define _BikeCommonFlagEncoder_H_

@class EncodedValue;
@class IOSClass;
@class InstructionAnnotation;
@class JavaUtilHashSet;
@class JavaUtilTreeMap;
@class PriorityCodeEnum;
@class ReaderRelation;
@class ReaderWay;
@protocol JavaUtilMap;
@protocol JavaUtilSet;
@protocol Translation;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/util/AbstractFlagEncoder.h"
#include "java/lang/Enum.h"

#define BikeCommonFlagEncoder_K_UNPAVED 100
#define BikeCommonFlagEncoder_PUSHING_SECTION_SPEED 4

/**
 @brief Defines bit layout of bicycles (not motorcycles) for speed, access and relations (network).
 <p>
 @author Peter Karich
 @author Nop
 @author ratrun
 */
@interface BikeCommonFlagEncoder : AbstractFlagEncoder {
 @public
  JavaUtilHashSet *pushingSectionsHighways_;
  JavaUtilHashSet *oppositeLanes_;
  id<JavaUtilSet> preferHighwayTags_;
  id<JavaUtilSet> avoidHighwayTags_;
  id<JavaUtilSet> unpavedSurfaceTags_;
  EncodedValue *relationCodeEncoder_;
  EncodedValue *priorityWayEncoder_;
}

- (instancetype)initWithInt:(jint)speedBits
                 withDouble:(jdouble)speedFactor
                    withInt:(jint)maxTurnCosts;

- (jint)getVersion;

- (jint)defineWayBitsWithInt:(jint)index
                     withInt:(jint)shift;

- (jint)defineRelationBitsWithInt:(jint)index
                          withInt:(jint)shift;

- (jlong)acceptWayWithReaderWay:(ReaderWay *)way;

- (jboolean)isSacScaleAllowedWithNSString:(NSString *)sacScale;

- (jlong)handleRelationTagsWithReaderRelation:(ReaderRelation *)relation
                                     withLong:(jlong)oldRelationFlags;

/**
 @brief Apply maxspeed: In contrast to the implementation of the AbstractFlagEncoder, we assume that we can reach the maxspeed for bicycles in case that the road type speed is higher and not just only 90%.
 <p>
 @param way:   needed to retrieve tags
 @param speed: speed guessed e.g. from the road type or other tags
 @return The assumed avererage speed.
 */
- (jdouble)applyMaxSpeedWithReaderWay:(ReaderWay *)way
                           withDouble:(jdouble)speed;

- (jlong)handleWayTagsWithReaderWay:(ReaderWay *)way
                           withLong:(jlong)allowed
                           withLong:(jlong)relationFlags;

- (jint)getSpeedWithReaderWay:(ReaderWay *)way;

- (InstructionAnnotation *)getAnnotationWithLong:(jlong)flags
                                 withTranslation:(id<Translation>)tr;

- (NSString *)getWayNameWithInt:(jint)pavementType
                        withInt:(jint)wayType
                withTranslation:(id<Translation>)tr;

/**
 @brief In this method we prefer cycleways or roads with designated bike access and avoid big roads or roads with trams or pedestrian.
 <p>
 @return new priority based on priorityFromRelation and on the tags in ReaderWay.
 */
- (jint)handlePriorityWithReaderWay:(ReaderWay *)way
                         withDouble:(jdouble)wayTypeSpeed
                            withInt:(jint)priorityFromRelation;

/**
 @param weightToPrioMap associate a weight with every priority. This sorted map allows subclasses to 'insert' more important priorities as well as overwrite determined priorities.
 */
- (void)collectWithReaderWay:(ReaderWay *)way
                  withDouble:(jdouble)wayTypeSpeed
         withJavaUtilTreeMap:(JavaUtilTreeMap *)weightToPrioMap;

/**
 @brief Handle surface and wayType encoding
 */
- (jlong)handleBikeRelatedWithReaderWay:(ReaderWay *)way
                               withLong:(jlong)encoded
                            withBoolean:(jboolean)partOfCycleRelation;

- (jlong)setBoolWithLong:(jlong)flags
                 withInt:(jint)key
             withBoolean:(jboolean)value;

- (jboolean)isBoolWithLong:(jlong)flags
                   withInt:(jint)key;

- (jdouble)getDoubleWithLong:(jlong)flags
                     withInt:(jint)key;

- (jboolean)isPushingSectionWithReaderWay:(ReaderWay *)way;

- (jlong)handleSpeedWithReaderWay:(ReaderWay *)way
                       withDouble:(jdouble)speed
                         withLong:(jlong)encoded;

- (void)setHighwaySpeedWithNSString:(NSString *)highway
                            withInt:(jint)speed;

- (jint)getHighwaySpeedWithNSString:(NSString *)key;

- (void)setTrackTypeSpeedWithNSString:(NSString *)tracktype
                              withInt:(jint)speed;

- (void)setSurfaceSpeedWithNSString:(NSString *)surface
                            withInt:(jint)speed;

- (void)setCyclingNetworkPreferenceWithNSString:(NSString *)network
                                        withInt:(jint)code;

- (void)addPushingSectionWithNSString:(NSString *)highway;

- (jboolean)supportsWithIOSClass:(IOSClass *)feature;

- (void)setAvoidSpeedLimitWithInt:(jint)limit;

- (void)setSpecificClassBicycleWithNSString:(NSString *)subkey;

@end

J2OBJC_EMPTY_STATIC_INIT(BikeCommonFlagEncoder)

J2OBJC_FIELD_SETTER(BikeCommonFlagEncoder, pushingSectionsHighways_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(BikeCommonFlagEncoder, oppositeLanes_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(BikeCommonFlagEncoder, preferHighwayTags_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(BikeCommonFlagEncoder, avoidHighwayTags_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(BikeCommonFlagEncoder, unpavedSurfaceTags_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(BikeCommonFlagEncoder, relationCodeEncoder_, EncodedValue *)
J2OBJC_FIELD_SETTER(BikeCommonFlagEncoder, priorityWayEncoder_, EncodedValue *)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(BikeCommonFlagEncoder, K_UNPAVED, jint)

J2OBJC_STATIC_FIELD_GETTER(BikeCommonFlagEncoder, PUSHING_SECTION_SPEED, jint)
CF_EXTERN_C_END

typedef BikeCommonFlagEncoder ComGraphhopperRoutingUtilBikeCommonFlagEncoder;

J2OBJC_TYPE_LITERAL_HEADER(BikeCommonFlagEncoder)

typedef NS_ENUM(NSUInteger, BikeCommonFlagEncoder_WayType) {
  BikeCommonFlagEncoder_WayType_ROAD = 0,
  BikeCommonFlagEncoder_WayType_PUSHING_SECTION = 1,
  BikeCommonFlagEncoder_WayType_CYCLEWAY = 2,
  BikeCommonFlagEncoder_WayType_OTHER_SMALL_WAY = 3,
};

@interface BikeCommonFlagEncoder_WayTypeEnum : JavaLangEnum < NSCopying > {
}

- (jint)getValue;

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *BikeCommonFlagEncoder_WayTypeEnum_values();

+ (BikeCommonFlagEncoder_WayTypeEnum *)valueOfWithNSString:(NSString *)name;

FOUNDATION_EXPORT BikeCommonFlagEncoder_WayTypeEnum *BikeCommonFlagEncoder_WayTypeEnum_valueOfWithNSString_(NSString *name);
- (id)copyWithZone:(NSZone *)zone;

@end

FOUNDATION_EXPORT BOOL BikeCommonFlagEncoder_WayTypeEnum_initialized;
J2OBJC_STATIC_INIT(BikeCommonFlagEncoder_WayTypeEnum)

FOUNDATION_EXPORT BikeCommonFlagEncoder_WayTypeEnum *BikeCommonFlagEncoder_WayTypeEnum_values_[];

#define BikeCommonFlagEncoder_WayTypeEnum_ROAD BikeCommonFlagEncoder_WayTypeEnum_values_[BikeCommonFlagEncoder_WayType_ROAD]
J2OBJC_ENUM_CONSTANT_GETTER(BikeCommonFlagEncoder_WayTypeEnum, ROAD)

#define BikeCommonFlagEncoder_WayTypeEnum_PUSHING_SECTION BikeCommonFlagEncoder_WayTypeEnum_values_[BikeCommonFlagEncoder_WayType_PUSHING_SECTION]
J2OBJC_ENUM_CONSTANT_GETTER(BikeCommonFlagEncoder_WayTypeEnum, PUSHING_SECTION)

#define BikeCommonFlagEncoder_WayTypeEnum_CYCLEWAY BikeCommonFlagEncoder_WayTypeEnum_values_[BikeCommonFlagEncoder_WayType_CYCLEWAY]
J2OBJC_ENUM_CONSTANT_GETTER(BikeCommonFlagEncoder_WayTypeEnum, CYCLEWAY)

#define BikeCommonFlagEncoder_WayTypeEnum_OTHER_SMALL_WAY BikeCommonFlagEncoder_WayTypeEnum_values_[BikeCommonFlagEncoder_WayType_OTHER_SMALL_WAY]
J2OBJC_ENUM_CONSTANT_GETTER(BikeCommonFlagEncoder_WayTypeEnum, OTHER_SMALL_WAY)

J2OBJC_TYPE_LITERAL_HEADER(BikeCommonFlagEncoder_WayTypeEnum)

#endif // _BikeCommonFlagEncoder_H_