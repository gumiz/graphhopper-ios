//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/io/InvalidObjectException.java
//

#ifndef _JavaIoInvalidObjectException_H_
#define _JavaIoInvalidObjectException_H_

#include "J2ObjC_header.h"
#include "java/io/ObjectStreamException.h"

#define JavaIoInvalidObjectException_serialVersionUID 3233174318281839583LL

@interface JavaIoInvalidObjectException : JavaIoObjectStreamException {
}

- (instancetype)initWithNSString:(NSString *)detailMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaIoInvalidObjectException)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaIoInvalidObjectException, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaIoInvalidObjectException)

#endif // _JavaIoInvalidObjectException_H_
