//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/fake_slf4j/src/org/slf4j/Logger.java
//

#ifndef _OrgSlf4jLogger_H_
#define _OrgSlf4jLogger_H_

@class JavaLangThrowable;

#include "J2ObjC_header.h"

@protocol OrgSlf4jLogger < NSObject, JavaObject >

- (void)infoWithNSString:(NSString *)str;

- (void)warnWithNSString:(NSString *)str
   withJavaLangThrowable:(JavaLangThrowable *)t;

- (void)warnWithNSString:(NSString *)str;

- (void)errorWithNSString:(NSString *)str
    withJavaLangThrowable:(JavaLangThrowable *)t;

- (void)errorWithNSString:(NSString *)str;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgSlf4jLogger)

J2OBJC_TYPE_LITERAL_HEADER(OrgSlf4jLogger)

#endif // _OrgSlf4jLogger_H_