//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/annotation/AnnotationTypeMismatchException.java
//

#ifndef _JavaLangAnnotationAnnotationTypeMismatchException_H_
#define _JavaLangAnnotationAnnotationTypeMismatchException_H_

@class JavaLangReflectMethod;

#include "J2ObjC_header.h"
#include "java/lang/RuntimeException.h"

#define JavaLangAnnotationAnnotationTypeMismatchException_serialVersionUID 8125925355765570191LL

@interface JavaLangAnnotationAnnotationTypeMismatchException : JavaLangRuntimeException {
}

- (instancetype)initWithJavaLangReflectMethod:(JavaLangReflectMethod *)element
                                 withNSString:(NSString *)foundType;

- (JavaLangReflectMethod *)element;

- (NSString *)foundType;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaLangAnnotationAnnotationTypeMismatchException)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaLangAnnotationAnnotationTypeMismatchException, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaLangAnnotationAnnotationTypeMismatchException)

#endif // _JavaLangAnnotationAnnotationTypeMismatchException_H_
