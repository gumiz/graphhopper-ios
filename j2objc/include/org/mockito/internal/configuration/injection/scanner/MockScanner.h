//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/testing/mockito/build_result/java/org/mockito/internal/configuration/injection/scanner/MockScanner.java
//

#ifndef _OrgMockitoInternalConfigurationInjectionScannerMockScanner_H_
#define _OrgMockitoInternalConfigurationInjectionScannerMockScanner_H_

@class IOSClass;
@class JavaLangReflectField;
@class OrgMockitoInternalUtilMockUtil;
@protocol JavaUtilSet;

#include "J2ObjC_header.h"

@interface OrgMockitoInternalConfigurationInjectionScannerMockScanner : NSObject {
}

- (instancetype)initWithId:(id)instance
              withIOSClass:(IOSClass *)clazz;

- (void)addPreparedMocksWithJavaUtilSet:(id<JavaUtilSet>)mocks;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMockitoInternalConfigurationInjectionScannerMockScanner)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgMockitoInternalConfigurationInjectionScannerMockScanner)

#endif // _OrgMockitoInternalConfigurationInjectionScannerMockScanner_H_
