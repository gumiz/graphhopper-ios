//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/io/BufferedInputStream.java
//

#ifndef _JavaIoBufferedInputStream_H_
#define _JavaIoBufferedInputStream_H_

@class IOSByteArray;
@class JavaIoIOException;
@class JavaIoInputStream;

#include "J2ObjC_header.h"
#include "java/io/FilterInputStream.h"

#define JavaIoBufferedInputStream_DEFAULT_BUFFER_SIZE 8192

@interface JavaIoBufferedInputStream : JavaIoFilterInputStream {
 @public
  IOSByteArray *buf_;
  jint count_;
  jint marklimit_;
  jint markpos_;
  jint pos_;
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                  withInt:(jint)size;

- (jint)available;

- (void)close;

- (void)markWithInt:(jint)readlimit;

- (jboolean)markSupported;

- (jint)read;

- (jint)readWithByteArray:(IOSByteArray *)buffer
                  withInt:(jint)byteOffset
                  withInt:(jint)byteCount;

- (void)reset;

- (jlong)skipWithLong:(jlong)byteCount;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaIoBufferedInputStream)

J2OBJC_FIELD_SETTER(JavaIoBufferedInputStream, buf_, IOSByteArray *)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaIoBufferedInputStream, DEFAULT_BUFFER_SIZE, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaIoBufferedInputStream)

#endif // _JavaIoBufferedInputStream_H_
