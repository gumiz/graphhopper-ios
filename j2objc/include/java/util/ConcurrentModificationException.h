//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/ConcurrentModificationException.java
//

#ifndef _JavaUtilConcurrentModificationException_H_
#define _JavaUtilConcurrentModificationException_H_

@class JavaLangThrowable;

#include "J2ObjC_header.h"
#include "java/lang/RuntimeException.h"

#define JavaUtilConcurrentModificationException_serialVersionUID -3666751008965953603LL

@interface JavaUtilConcurrentModificationException : JavaLangRuntimeException {
}

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)detailMessage;

- (instancetype)initWithNSString:(NSString *)detailMessage
           withJavaLangThrowable:(JavaLangThrowable *)cause;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaUtilConcurrentModificationException)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaUtilConcurrentModificationException, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaUtilConcurrentModificationException)

#endif // _JavaUtilConcurrentModificationException_H_
