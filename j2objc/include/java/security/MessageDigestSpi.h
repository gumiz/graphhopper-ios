//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/security/MessageDigestSpi.java
//

#ifndef _JavaSecurityMessageDigestSpi_H_
#define _JavaSecurityMessageDigestSpi_H_

@class IOSByteArray;
@class JavaNioByteBuffer;

#include "J2ObjC_header.h"

@interface JavaSecurityMessageDigestSpi : NSObject {
}

- (jint)engineGetDigestLength;

- (void)engineUpdateWithByte:(jbyte)input;

- (void)engineUpdateWithByteArray:(IOSByteArray *)input
                          withInt:(jint)offset
                          withInt:(jint)len;

- (void)engineUpdateWithJavaNioByteBuffer:(JavaNioByteBuffer *)input;

- (IOSByteArray *)engineDigest;

- (jint)engineDigestWithByteArray:(IOSByteArray *)buf
                          withInt:(jint)offset
                          withInt:(jint)len;

- (void)engineReset;

- (id)clone;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaSecurityMessageDigestSpi)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaSecurityMessageDigestSpi)

#endif // _JavaSecurityMessageDigestSpi_H_
