//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/UnsafeDataAccess.java
//

#ifndef _UnsafeDataAccess_H_
#define _UnsafeDataAccess_H_

@class DAType;
@class IOSByteArray;
@class JavaNioByteOrder;
@class SunMiscUnsafe;
@protocol DataAccess;

#include "J2ObjC_header.h"
#include "com/graphhopper/storage/AbstractDataAccess.h"

/**
 @brief This is a data structure which uses an unsafe access to native memory.
 The speed up compared to RAMDataAccess is roughly 10% due to index calculations and BitUtil overhead in RAMDataAccess. Notes: <p> 1. Highly experimental. Still some bugs and access through file/MMAP should work at some point <p> 2. Compared to MMAP no syncDAWrapper is need to make it read and write safe from multiple threads <p> 3. Cannot be used on Android as no memory allocation methods are available there <p>
 @author Peter Karich
 */
@interface UnsafeDataAccess : AbstractDataAccess {
}

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)location
            withJavaNioByteOrder:(JavaNioByteOrder *)order;

- (UnsafeDataAccess *)createWithLong:(jlong)bytes;

- (jboolean)ensureCapacityWithLong:(jlong)bytes;

- (jboolean)ensureCapacityWithLong:(jlong)bytes
                       withBoolean:(jboolean)clearNewMem;

- (id<DataAccess>)copyToWithDataAccess:(id<DataAccess>)da OBJC_METHOD_FAMILY_NONE;

- (jboolean)loadExisting;

- (void)flush;

- (void)close;

- (void)setIntWithLong:(jlong)bytePos
               withInt:(jint)value;

- (jint)getIntWithLong:(jlong)bytePos;

- (jshort)getShortWithLong:(jlong)bytePos;

- (void)setShortWithLong:(jlong)bytePos
               withShort:(jshort)value;

- (void)setBytesWithLong:(jlong)bytePos
           withByteArray:(IOSByteArray *)values
                 withInt:(jint)length;

- (void)getBytesWithLong:(jlong)bytePos
           withByteArray:(IOSByteArray *)values
                 withInt:(jint)length;

- (jlong)getCapacity;

- (jint)getSegments;

- (void)trimToWithLong:(jlong)bytes;

- (DAType *)getType;

@end

FOUNDATION_EXPORT BOOL UnsafeDataAccess_initialized;
J2OBJC_STATIC_INIT(UnsafeDataAccess)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT SunMiscUnsafe *UnsafeDataAccess_UNSAFE_;
J2OBJC_STATIC_FIELD_GETTER(UnsafeDataAccess, UNSAFE_, SunMiscUnsafe *)
CF_EXTERN_C_END

typedef UnsafeDataAccess ComGraphhopperStorageUnsafeDataAccess;

J2OBJC_TYPE_LITERAL_HEADER(UnsafeDataAccess)

#endif // _UnsafeDataAccess_H_
