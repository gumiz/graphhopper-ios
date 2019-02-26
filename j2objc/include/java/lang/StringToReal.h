//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/StringToReal.java
//

#ifndef _JavaLangStringToReal_H_
#define _JavaLangStringToReal_H_

@class JavaLangNumberFormatException;
@class JavaLangStringToReal_StringExponentPair;

#include "J2ObjC_header.h"

@interface JavaLangStringToReal : NSObject {
}

+ (jdouble)parseDoubleWithNSString:(NSString *)s;

+ (jfloat)parseFloatWithNSString:(NSString *)s;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaLangStringToReal)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT jdouble JavaLangStringToReal_parseDoubleWithNSString_(NSString *s);

FOUNDATION_EXPORT jfloat JavaLangStringToReal_parseFloatWithNSString_(NSString *s);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaLangStringToReal)

@interface JavaLangStringToReal_StringExponentPair : NSObject {
 @public
  NSString *s_;
  jlong e_;
  jboolean negative_;
  jboolean infinity_;
  jboolean zero_;
}

- (jfloat)specialValue;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaLangStringToReal_StringExponentPair)

J2OBJC_FIELD_SETTER(JavaLangStringToReal_StringExponentPair, s_, NSString *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaLangStringToReal_StringExponentPair)

#endif // _JavaLangStringToReal_H_
