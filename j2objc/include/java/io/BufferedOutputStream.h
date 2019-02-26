//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/io/BufferedOutputStream.java
//

#ifndef _JavaIoBufferedOutputStream_H_
#define _JavaIoBufferedOutputStream_H_

@class IOSByteArray;
@class JavaIoOutputStream;

#include "J2ObjC_header.h"
#include "java/io/FilterOutputStream.h"

@interface JavaIoBufferedOutputStream : JavaIoFilterOutputStream {
 @public
  IOSByteArray *buf_;
  jint count_;
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                   withInt:(jint)size;

- (void)flush;

- (void)writeWithByteArray:(IOSByteArray *)buffer
                   withInt:(jint)offset
                   withInt:(jint)length;

- (void)close;

- (void)writeWithInt:(jint)oneByte;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaIoBufferedOutputStream)

J2OBJC_FIELD_SETTER(JavaIoBufferedOutputStream, buf_, IOSByteArray *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaIoBufferedOutputStream)

#endif // _JavaIoBufferedOutputStream_H_
