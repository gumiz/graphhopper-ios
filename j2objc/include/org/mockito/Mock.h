//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/testing/mockito/build_result/java/org/mockito/Mock.java
//

#ifndef _OrgMockitoMock_H_
#define _OrgMockitoMock_H_

@class IOSObjectArray;
@class OrgMockitoAnswersEnum;

#include "J2ObjC_header.h"
#include "java/lang/annotation/Annotation.h"

@protocol OrgMockitoMock < JavaLangAnnotationAnnotation >

@property (readonly) OrgMockitoAnswersEnum *answer;
@property (readonly) NSString *name;
@property (readonly) IOSObjectArray *extraInterfaces;

@end

@interface OrgMockitoMock : NSObject < OrgMockitoMock > {
 @private
  OrgMockitoAnswersEnum *answer;
  NSString *name;
  IOSObjectArray *extraInterfaces;
}

- (instancetype)initWithAnswer:(OrgMockitoAnswersEnum *)answer_ withExtraInterfaces:(IOSObjectArray *)extraInterfaces_ withName:(NSString *)name_;

+ (OrgMockitoAnswersEnum *)answerDefault;
+ (NSString *)nameDefault;
+ (IOSObjectArray *)extraInterfacesDefault;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMockitoMock)

J2OBJC_TYPE_LITERAL_HEADER(OrgMockitoMock)

#endif // _OrgMockitoMock_H_