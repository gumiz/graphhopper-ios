//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/json/src/main/java/org/json/JSONTokener.java
//

#ifndef _OrgJsonJSONTokener_H_
#define _OrgJsonJSONTokener_H_

@class OrgJsonJSONArray;
@class OrgJsonJSONException;
@class OrgJsonJSONObject;

#include "J2ObjC_header.h"

@interface OrgJsonJSONTokener : NSObject {
}

- (instancetype)initWithNSString:(NSString *)inArg;

- (id)nextValue;

- (NSString *)nextStringWithChar:(jchar)quote;

- (OrgJsonJSONException *)syntaxErrorWithNSString:(NSString *)message;

- (NSString *)description;

- (jboolean)more;

- (jchar)next;

- (jchar)nextWithChar:(jchar)c;

- (jchar)nextClean;

- (NSString *)nextWithInt:(jint)length;

- (NSString *)nextToWithNSString:(NSString *)excluded;

- (NSString *)nextToWithChar:(jchar)excluded;

- (void)skipPastWithNSString:(NSString *)thru;

- (jchar)skipToWithChar:(jchar)to;

- (void)back;

+ (jint)dehexcharWithChar:(jchar)hex;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsonJSONTokener)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT jint OrgJsonJSONTokener_dehexcharWithChar_(jchar hex);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgJsonJSONTokener)

#endif // _OrgJsonJSONTokener_H_
