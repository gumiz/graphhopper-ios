//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/io/FileDescriptor.java
//

#ifndef _JavaIoFileDescriptor_H_
#define _JavaIoFileDescriptor_H_

#include "J2ObjC_header.h"

@interface JavaIoFileDescriptor : NSObject {
}

- (instancetype)init;

- (void)sync;

- (jboolean)valid;

- (jint)getInt$;

- (void)setInt$WithInt:(jint)fd;

- (NSString *)description;

@end

FOUNDATION_EXPORT BOOL JavaIoFileDescriptor_initialized;
J2OBJC_STATIC_INIT(JavaIoFileDescriptor)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT JavaIoFileDescriptor *JavaIoFileDescriptor_in_;
J2OBJC_STATIC_FIELD_GETTER(JavaIoFileDescriptor, in_, JavaIoFileDescriptor *)

FOUNDATION_EXPORT JavaIoFileDescriptor *JavaIoFileDescriptor_out_;
J2OBJC_STATIC_FIELD_GETTER(JavaIoFileDescriptor, out_, JavaIoFileDescriptor *)

FOUNDATION_EXPORT JavaIoFileDescriptor *JavaIoFileDescriptor_err_;
J2OBJC_STATIC_FIELD_GETTER(JavaIoFileDescriptor, err_, JavaIoFileDescriptor *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaIoFileDescriptor)

#endif // _JavaIoFileDescriptor_H_
