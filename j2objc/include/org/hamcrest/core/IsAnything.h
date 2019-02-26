//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/junit/build_result/java/org/hamcrest/core/IsAnything.java
//

#ifndef _OrgHamcrestCoreIsAnything_H_
#define _OrgHamcrestCoreIsAnything_H_

@class IOSClass;
@protocol OrgHamcrestDescription;
@protocol OrgHamcrestMatcher;

#include "J2ObjC_header.h"
#include "org/hamcrest/BaseMatcher.h"

@interface OrgHamcrestCoreIsAnything : OrgHamcrestBaseMatcher {
}

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)description_;

- (jboolean)matchesWithId:(id)o;

- (void)describeToWithOrgHamcrestDescription:(id<OrgHamcrestDescription>)description_;

+ (id<OrgHamcrestMatcher>)anything;

+ (id<OrgHamcrestMatcher>)anythingWithNSString:(NSString *)description_;

+ (id<OrgHamcrestMatcher>)anyWithIOSClass:(IOSClass *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgHamcrestCoreIsAnything)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT id<OrgHamcrestMatcher> OrgHamcrestCoreIsAnything_anything();

FOUNDATION_EXPORT id<OrgHamcrestMatcher> OrgHamcrestCoreIsAnything_anythingWithNSString_(NSString *description_);

FOUNDATION_EXPORT id<OrgHamcrestMatcher> OrgHamcrestCoreIsAnything_anyWithIOSClass_(IOSClass *type);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgHamcrestCoreIsAnything)

#endif // _OrgHamcrestCoreIsAnything_H_
