//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/ArithmeticException.java
//

#ifndef _JavaLangArithmeticException_H_
#define _JavaLangArithmeticException_H_

#include "J2ObjC_header.h"
#include "java/lang/RuntimeException.h"

#define JavaLangArithmeticException_serialVersionUID 2256477558314496007LL

@interface JavaLangArithmeticException : JavaLangRuntimeException {
}

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)detailMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaLangArithmeticException)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaLangArithmeticException, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaLangArithmeticException)

#endif // _JavaLangArithmeticException_H_
