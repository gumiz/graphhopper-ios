//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/testing/mockito/build_result/java/org/mockito/internal/configuration/DefaultAnnotationEngine.java
//

#ifndef _OrgMockitoInternalConfigurationDefaultAnnotationEngine_H_
#define _OrgMockitoInternalConfigurationDefaultAnnotationEngine_H_

@class IOSClass;
@class JavaLangReflectField;
@protocol JavaLangAnnotationAnnotation;
@protocol JavaUtilMap;

#include "J2ObjC_header.h"
#include "org/mockito/configuration/AnnotationEngine.h"
#include "org/mockito/internal/configuration/FieldAnnotationProcessor.h"

@interface OrgMockitoInternalConfigurationDefaultAnnotationEngine : NSObject < OrgMockitoConfigurationAnnotationEngine > {
}

- (instancetype)init;

- (id)createMockForWithJavaLangAnnotationAnnotation:(id<JavaLangAnnotationAnnotation>)annotation
                           withJavaLangReflectField:(JavaLangReflectField *)field;

- (void)processWithIOSClass:(IOSClass *)clazz
                     withId:(id)testInstance;

- (void)throwIfAlreadyAssignedWithJavaLangReflectField:(JavaLangReflectField *)field
                                           withBoolean:(jboolean)alreadyAssigned;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMockitoInternalConfigurationDefaultAnnotationEngine)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgMockitoInternalConfigurationDefaultAnnotationEngine)

@interface OrgMockitoInternalConfigurationDefaultAnnotationEngine_$1 : NSObject < OrgMockitoInternalConfigurationFieldAnnotationProcessor > {
}

- (id)processWithJavaLangAnnotationAnnotation:(id<JavaLangAnnotationAnnotation>)annotation
                     withJavaLangReflectField:(JavaLangReflectField *)field;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgMockitoInternalConfigurationDefaultAnnotationEngine_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgMockitoInternalConfigurationDefaultAnnotationEngine_$1)

#endif // _OrgMockitoInternalConfigurationDefaultAnnotationEngine_H_
