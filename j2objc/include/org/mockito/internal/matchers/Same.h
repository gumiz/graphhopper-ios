//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/testing/mockito/build_result/java/org/mockito/internal/matchers/Same.java
//

#ifndef _OrgMockitoInternalMatchersSame_H_
#define _OrgMockitoInternalMatchersSame_H_

@protocol OrgHamcrestDescription;

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"
#include "org/mockito/ArgumentMatcher.h"

#define OrgMockitoInternalMatchersSame_serialVersionUID -1226959355938572597LL

@interface OrgMockitoInternalMatchersSame : OrgMockitoArgumentMatcher < JavaIoSerializable > {
}

- (instancetype)initWithId:(id)wanted;

- (jboolean)matchesWithId:(id)actual;

- (void)describeToWithOrgHamcrestDescription:(id<OrgHamcrestDescription>)description_;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMockitoInternalMatchersSame)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(OrgMockitoInternalMatchersSame, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgMockitoInternalMatchersSame)

#endif // _OrgMockitoInternalMatchersSame_H_
