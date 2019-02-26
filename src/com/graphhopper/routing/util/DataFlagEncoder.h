//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/DataFlagEncoder.java
//

#ifndef _DataFlagEncoder_H_
#define _DataFlagEncoder_H_

@class ConfigMap;
@class EncodedDoubleValue;
@class EncodedValue;
@class IOSClass;
@class IOSDoubleArray;
@class PMap;
@class ReaderRelation;
@class ReaderWay;
@protocol EdgeIteratorState;
@protocol JavaUtilList;
@protocol JavaUtilMap;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/util/AbstractFlagEncoder.h"
#include "java/util/LinkedHashMap.h"

/**
 @brief This encoder tries to store all way information into a 32 or 64bit value.
 Later extendable to multiple ints or bytes. The assumption is that edge.getFlags is cheap and can be later replaced by e.g. one or more (cheap) calls of edge.getData(index). <p> Currently limited to motor vehicle but later could handle different modes like foot or bike too.
 @author Peter Karich
 */
@interface DataFlagEncoder : AbstractFlagEncoder {
}

- (instancetype)init;

- (jint)defineWayBitsWithInt:(jint)index
                     withInt:(jint)shift;

- (jlong)handleRelationTagsWithReaderRelation:(ReaderRelation *)relation
                                     withLong:(jlong)oldRelationFlags;

- (jlong)acceptWayWithReaderWay:(ReaderWay *)way;

- (jint)getHighwayValueWithReaderWay:(ReaderWay *)way;

- (jlong)handleWayTagsWithReaderWay:(ReaderWay *)way
                           withLong:(jlong)allowed
                           withLong:(jlong)relationFlags;

- (jlong)reverseFlagsWithLong:(jlong)flags;

- (jint)getHighwayWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (NSString *)getHighwayAsStringWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (IOSDoubleArray *)getHighwaySpeedMapWithJavaUtilMap:(id<JavaUtilMap>)map;

- (jint)getSurfaceWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (NSString *)getSurfaceAsStringWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (jint)getTransportModeWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (jboolean)isTransportModeTunnelWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (jboolean)isTransportModeBridgeWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (NSString *)getTransportModeAsStringWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (IOSDoubleArray *)getTransportModeMapWithJavaUtilMap:(id<JavaUtilMap>)map;

- (jboolean)isRoundaboutWithEdgeIteratorState:(id<EdgeIteratorState>)edge;

- (jint)getAccessTypeWithNSString:(NSString *)accessStr;

- (jboolean)isForwardWithEdgeIteratorState:(id<EdgeIteratorState>)edge
                                   withInt:(jint)accessType;

- (jboolean)isForwardWithLong:(jlong)flags;

- (jboolean)isBackwardWithEdgeIteratorState:(id<EdgeIteratorState>)edge
                                    withInt:(jint)accessType;

- (jboolean)isBackwardWithLong:(jlong)flags;

- (jdouble)getMaxspeedWithEdgeIteratorState:(id<EdgeIteratorState>)edge
                                    withInt:(jint)accessType
                                withBoolean:(jboolean)reverse;

- (jlong)flagsDefaultWithBoolean:(jboolean)forward
                     withBoolean:(jboolean)backward;

- (jlong)setAccessWithLong:(jlong)flags
               withBoolean:(jboolean)forward
               withBoolean:(jboolean)backward;

- (jlong)setSpeedWithLong:(jlong)flags
               withDouble:(jdouble)speed;

- (jlong)setLowSpeedWithLong:(jlong)flags
                  withDouble:(jdouble)speed
                 withBoolean:(jboolean)reverse;

- (jdouble)getSpeedWithLong:(jlong)flags;

- (jlong)setReverseSpeedWithLong:(jlong)flags
                      withDouble:(jdouble)speed;

- (jdouble)getReverseSpeedWithLong:(jlong)flags;

- (jlong)setPropertiesWithDouble:(jdouble)speed
                     withBoolean:(jboolean)forward
                     withBoolean:(jboolean)backward;

- (jdouble)getMaxSpeedWithReaderWay:(ReaderWay *)way;

- (jdouble)getMaxSpeed;

- (jdouble)getMaxPossibleSpeed;

- (jboolean)supportsWithIOSClass:(IOSClass *)feature;

- (jint)getVersion;

- (NSString *)description;

/**
 @brief This method creates a Config map out of the PMap.
 Later on this conversion should not be necessary when we read JSON.
 */
- (ConfigMap *)readStringMapWithPMap:(PMap *)weightingMap;

@end

FOUNDATION_EXPORT BOOL DataFlagEncoder_initialized;
J2OBJC_STATIC_INIT(DataFlagEncoder)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT id<JavaUtilMap> DataFlagEncoder_DEFAULT_SPEEDS_;
J2OBJC_STATIC_FIELD_GETTER(DataFlagEncoder, DEFAULT_SPEEDS_, id<JavaUtilMap>)
CF_EXTERN_C_END

typedef DataFlagEncoder ComGraphhopperRoutingUtilDataFlagEncoder;

J2OBJC_TYPE_LITERAL_HEADER(DataFlagEncoder)

@interface DataFlagEncoder_$1 : JavaUtilLinkedHashMap {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(DataFlagEncoder_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(DataFlagEncoder_$1)

#endif // _DataFlagEncoder_H_
