//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/annotation/AnnotationFormatError.java
//

#ifndef _JavaLangAnnotationAnnotationFormatError_H_
#define _JavaLangAnnotationAnnotationFormatError_H_

@class JavaLangThrowable;

#include "J2ObjC_header.h"
#include "java/lang/Error.h"

#define JavaLangAnnotationAnnotationFormatError_serialVersionUID -4256701562333669892LL

@interface JavaLangAnnotationAnnotationFormatError : JavaLangError {
}

- (instancetype)initWithNSString:(NSString *)message;

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaLangAnnotationAnnotationFormatError)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaLangAnnotationAnnotationFormatError, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaLangAnnotationAnnotationFormatError)

#endif // _JavaLangAnnotationAnnotationFormatError_H_
