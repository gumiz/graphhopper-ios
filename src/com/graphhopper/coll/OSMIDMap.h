//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/coll/OSMIDMap.java
//

#ifndef _OSMIDMap_H_
#define _OSMIDMap_H_

@class BitUtil;
@protocol DataAccess;
@protocol Directory;

#include "J2ObjC_header.h"
#include "com/graphhopper/coll/LongIntMap.h"

/**
 @brief This is a special purpose map for writing increasing OSM IDs with consecutive values.
 It stores a map from long to int in a memory friendly way and but does NOT provide O(1) access. <p>
 @author Peter Karich
 */
@interface OSMIDMap : NSObject < LongIntMap > {
}

- (instancetype)initWithDirectory:(id<Directory>)dir;

- (instancetype)initWithDirectory:(id<Directory>)dir
                          withInt:(jint)noNumber;

+ (jlong)binarySearchWithDataAccess:(id<DataAccess>)da
                           withLong:(jlong)start
                           withLong:(jlong)len
                           withLong:(jlong)key;

- (void)remove;

- (jint)putWithLong:(jlong)key
            withInt:(jint)value;

- (jint)getWithLong:(jlong)key;

- (jlong)getSize;

- (jlong)getCapacity;

- (jint)getMemoryUsage;

- (void)optimize;

@end

FOUNDATION_EXPORT BOOL OSMIDMap_initialized;
J2OBJC_STATIC_INIT(OSMIDMap)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT jlong OSMIDMap_binarySearchWithDataAccess_withLong_withLong_withLong_(id<DataAccess> da, jlong start, jlong len, jlong key);

FOUNDATION_EXPORT BitUtil *OSMIDMap_bitUtil_;
J2OBJC_STATIC_FIELD_GETTER(OSMIDMap, bitUtil_, BitUtil *)
CF_EXTERN_C_END

typedef OSMIDMap ComGraphhopperCollOSMIDMap;

J2OBJC_TYPE_LITERAL_HEADER(OSMIDMap)

#endif // _OSMIDMap_H_
