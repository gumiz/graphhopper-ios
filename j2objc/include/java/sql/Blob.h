//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/sql/Blob.java
//

#ifndef _JavaSqlBlob_H_
#define _JavaSqlBlob_H_

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;

#include "J2ObjC_header.h"

@protocol JavaSqlBlob < NSObject, JavaObject >

- (JavaIoInputStream *)getBinaryStream;

- (JavaIoInputStream *)getBinaryStreamWithLong:(jlong)pos
                                      withLong:(jlong)length;

- (IOSByteArray *)getBytesWithLong:(jlong)pos
                           withInt:(jint)length;

- (jlong)length;

- (jlong)positionWithJavaSqlBlob:(id<JavaSqlBlob>)pattern
                        withLong:(jlong)start;

- (jlong)positionWithByteArray:(IOSByteArray *)pattern
                      withLong:(jlong)start;

- (JavaIoOutputStream *)setBinaryStreamWithLong:(jlong)pos;

- (jint)setBytesWithLong:(jlong)pos
           withByteArray:(IOSByteArray *)theBytes;

- (jint)setBytesWithLong:(jlong)pos
           withByteArray:(IOSByteArray *)theBytes
                 withInt:(jint)offset
                 withInt:(jint)len;

- (void)truncateWithLong:(jlong)len;

- (void)free;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaSqlBlob)

J2OBJC_TYPE_LITERAL_HEADER(JavaSqlBlob)

#endif // _JavaSqlBlob_H_
