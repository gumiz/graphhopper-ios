//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/testing/mockito/build_result/java/org/mockito/internal/matchers/EndsWith.java
//

#ifndef _OrgMockitoInternalMatchersEndsWith_H_
#define _OrgMockitoInternalMatchersEndsWith_H_

@protocol OrgHamcrestDescription;

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"
#include "org/mockito/ArgumentMatcher.h"

#define OrgMockitoInternalMatchersEndsWith_serialVersionUID 8556443228350129421LL

@interface OrgMockitoInternalMatchersEndsWith : OrgMockitoArgumentMatcher < JavaIoSerializable > {
}

- (instancetype)initWithNSString:(NSString *)suffix;

- (jboolean)matchesWithId:(id)actual;

- (void)describeToWithOrgHamcrestDescription:(id<OrgHamcrestDescription>)description_;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMockitoInternalMatchersEndsWith)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(OrgMockitoInternalMatchersEndsWith, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgMockitoInternalMatchersEndsWith)

#endif // _OrgMockitoInternalMatchersEndsWith_H_
