//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/nio/NIOAccess.java
//

#ifndef _JavaNioNIOAccess_H_
#define _JavaNioNIOAccess_H_

@class JavaNioBuffer;

#include "J2ObjC_header.h"

@interface JavaNioNIOAccess : NSObject {
}

+ (jlong)getBasePointerWithJavaNioBuffer:(JavaNioBuffer *)b;

+ (id)getBaseArrayWithJavaNioBuffer:(JavaNioBuffer *)b;

+ (jint)getBaseArrayOffsetWithJavaNioBuffer:(JavaNioBuffer *)b;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaNioNIOAccess)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT jlong JavaNioNIOAccess_getBasePointerWithJavaNioBuffer_(JavaNioBuffer *b);

FOUNDATION_EXPORT id JavaNioNIOAccess_getBaseArrayWithJavaNioBuffer_(JavaNioBuffer *b);

FOUNDATION_EXPORT jint JavaNioNIOAccess_getBaseArrayOffsetWithJavaNioBuffer_(JavaNioBuffer *b);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaNioNIOAccess)

#endif // _JavaNioNIOAccess_H_
