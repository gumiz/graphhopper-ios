//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/lang/IllegalMonitorStateException.java
//

#ifndef _JavaLangIllegalMonitorStateException_H_
#define _JavaLangIllegalMonitorStateException_H_

#include "J2ObjC_header.h"
#include "java/lang/RuntimeException.h"

#define JavaLangIllegalMonitorStateException_serialVersionUID 3713306369498869069LL

@interface JavaLangIllegalMonitorStateException : JavaLangRuntimeException {
}

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)detailMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaLangIllegalMonitorStateException)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaLangIllegalMonitorStateException, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaLangIllegalMonitorStateException)

#endif // _JavaLangIllegalMonitorStateException_H_
