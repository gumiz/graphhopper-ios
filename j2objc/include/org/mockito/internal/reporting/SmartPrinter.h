//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/testing/mockito/build_result/java/org/mockito/internal/reporting/SmartPrinter.java
//

#ifndef _OrgMockitoInternalReportingSmartPrinter_H_
#define _OrgMockitoInternalReportingSmartPrinter_H_

@class IOSObjectArray;
@class OrgMockitoInternalInvocationInvocationMatcher;
@protocol OrgMockitoInvocationInvocation;

#include "J2ObjC_header.h"

@interface OrgMockitoInternalReportingSmartPrinter : NSObject {
}

- (instancetype)initWithOrgMockitoInternalInvocationInvocationMatcher:(OrgMockitoInternalInvocationInvocationMatcher *)wanted
                                   withOrgMockitoInvocationInvocation:(id<OrgMockitoInvocationInvocation>)actual
                                             withJavaLangIntegerArray:(IOSObjectArray *)indexesOfMatchersToBeDescribedWithExtraTypeInfo;

- (NSString *)getWanted;

- (NSString *)getActual;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMockitoInternalReportingSmartPrinter)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgMockitoInternalReportingSmartPrinter)

#endif // _OrgMockitoInternalReportingSmartPrinter_H_
