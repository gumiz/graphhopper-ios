//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/testing/mockito/build_result/java/org/mockito/internal/stubbing/BaseStubbing.java
//

#ifndef _OrgMockitoInternalStubbingBaseStubbing_H_
#define _OrgMockitoInternalStubbingBaseStubbing_H_

@class IOSClass;
@class IOSObjectArray;
@class JavaLangThrowable;

#include "J2ObjC_header.h"
#include "org/mockito/stubbing/DeprecatedOngoingStubbing.h"
#include "org/mockito/stubbing/OngoingStubbing.h"

@interface OrgMockitoInternalStubbingBaseStubbing : NSObject < OrgMockitoStubbingOngoingStubbing, OrgMockitoStubbingDeprecatedOngoingStubbing > {
}

- (id<OrgMockitoStubbingOngoingStubbing>)thenReturnWithId:(id)value;

- (id<OrgMockitoStubbingOngoingStubbing>)thenReturnWithId:(id)value
                                        withNSObjectArray:(IOSObjectArray *)values;

- (id<OrgMockitoStubbingOngoingStubbing>)thenThrowWithJavaLangThrowableArray:(IOSObjectArray *)throwables;

- (id<OrgMockitoStubbingOngoingStubbing>)thenThrowWithIOSClassArray:(IOSObjectArray *)throwableClasses;

- (id<OrgMockitoStubbingOngoingStubbing>)thenCallRealMethod;

- (id<OrgMockitoStubbingDeprecatedOngoingStubbing>)toReturnWithId:(id)value;

- (id<OrgMockitoStubbingDeprecatedOngoingStubbing>)toThrowWithJavaLangThrowable:(JavaLangThrowable *)throwable;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMockitoInternalStubbingBaseStubbing)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgMockitoInternalStubbingBaseStubbing)

#endif // _OrgMockitoInternalStubbingBaseStubbing_H_
