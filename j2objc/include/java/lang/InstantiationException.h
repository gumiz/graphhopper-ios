//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/InstantiationException.java
//

#ifndef _JavaLangInstantiationException_H_
#define _JavaLangInstantiationException_H_

@class IOSClass;

#include "J2ObjC_header.h"
#include "java/lang/ReflectiveOperationException.h"

#define JavaLangInstantiationException_serialVersionUID -8441929162975509110LL

@interface JavaLangInstantiationException : JavaLangReflectiveOperationException {
}

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)detailMessage;

- (instancetype)initWithIOSClass:(IOSClass *)clazz;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaLangInstantiationException)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaLangInstantiationException, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaLangInstantiationException)

#endif // _JavaLangInstantiationException_H_
