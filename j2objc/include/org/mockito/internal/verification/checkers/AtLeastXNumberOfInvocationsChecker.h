//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/testing/mockito/build_result/java/org/mockito/internal/verification/checkers/AtLeastXNumberOfInvocationsChecker.java
//

#ifndef _OrgMockitoInternalVerificationCheckersAtLeastXNumberOfInvocationsChecker_H_
#define _OrgMockitoInternalVerificationCheckersAtLeastXNumberOfInvocationsChecker_H_

@class OrgMockitoExceptionsReporter;
@class OrgMockitoInternalInvocationInvocationMarker;
@class OrgMockitoInternalInvocationInvocationMatcher;
@class OrgMockitoInternalInvocationInvocationsFinder;
@protocol JavaUtilList;

#include "J2ObjC_header.h"

@interface OrgMockitoInternalVerificationCheckersAtLeastXNumberOfInvocationsChecker : NSObject {
 @public
  OrgMockitoExceptionsReporter *reporter_;
  OrgMockitoInternalInvocationInvocationsFinder *finder_;
  OrgMockitoInternalInvocationInvocationMarker *invocationMarker_;
}

- (void)checkWithJavaUtilList:(id<JavaUtilList>)invocations
withOrgMockitoInternalInvocationInvocationMatcher:(OrgMockitoInternalInvocationInvocationMatcher *)wanted
                      withInt:(jint)wantedCount;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMockitoInternalVerificationCheckersAtLeastXNumberOfInvocationsChecker)

J2OBJC_FIELD_SETTER(OrgMockitoInternalVerificationCheckersAtLeastXNumberOfInvocationsChecker, reporter_, OrgMockitoExceptionsReporter *)
J2OBJC_FIELD_SETTER(OrgMockitoInternalVerificationCheckersAtLeastXNumberOfInvocationsChecker, finder_, OrgMockitoInternalInvocationInvocationsFinder *)
J2OBJC_FIELD_SETTER(OrgMockitoInternalVerificationCheckersAtLeastXNumberOfInvocationsChecker, invocationMarker_, OrgMockitoInternalInvocationInvocationMarker *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgMockitoInternalVerificationCheckersAtLeastXNumberOfInvocationsChecker)

#endif // _OrgMockitoInternalVerificationCheckersAtLeastXNumberOfInvocationsChecker_H_
