//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/testing/mockito/build_result/java/org/mockito/stubbing/OngoingStubbing.java
//

#ifndef _OrgMockitoStubbingOngoingStubbing_H_
#define _OrgMockitoStubbingOngoingStubbing_H_

@class IOSObjectArray;
@protocol OrgMockitoStubbingAnswer;

#include "J2ObjC_header.h"
#include "org/mockito/internal/progress/IOngoingStubbing.h"

@protocol OrgMockitoStubbingOngoingStubbing < OrgMockitoInternalProgressIOngoingStubbing, NSObject, JavaObject >
- (id<OrgMockitoStubbingOngoingStubbing>)thenReturnWithId:(id)value;

- (id<OrgMockitoStubbingOngoingStubbing>)thenReturnWithId:(id)value
                                        withNSObjectArray:(IOSObjectArray *)values;

- (id<OrgMockitoStubbingOngoingStubbing>)thenThrowWithJavaLangThrowableArray:(IOSObjectArray *)throwables;

- (id<OrgMockitoStubbingOngoingStubbing>)thenThrowWithIOSClassArray:(IOSObjectArray *)throwableClasses;

- (id<OrgMockitoStubbingOngoingStubbing>)thenCallRealMethod;

- (id<OrgMockitoStubbingOngoingStubbing>)thenAnswerWithOrgMockitoStubbingAnswer:(id<OrgMockitoStubbingAnswer>)answer;

- (id<OrgMockitoStubbingOngoingStubbing>)thenWithOrgMockitoStubbingAnswer:(id<OrgMockitoStubbingAnswer>)answer;

- (id)getMock;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMockitoStubbingOngoingStubbing)

J2OBJC_TYPE_LITERAL_HEADER(OrgMockitoStubbingOngoingStubbing)

#endif // _OrgMockitoStubbingOngoingStubbing_H_
