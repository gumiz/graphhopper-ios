//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/frameworks/base/core/java/android/text/Editable.java
//

#ifndef _AndroidTextEditable_H_
#define _AndroidTextEditable_H_

@class IOSObjectArray;

#include "J2ObjC_header.h"
#include "android/text/GetChars.h"
#include "android/text/Spannable.h"
#include "java/lang/Appendable.h"
#include "java/lang/CharSequence.h"

@protocol AndroidTextEditable < JavaLangCharSequence, AndroidTextGetChars, AndroidTextSpannable, JavaLangAppendable, NSObject, JavaObject >
- (id<AndroidTextEditable>)replaceWithInt:(jint)st
                                  withInt:(jint)en
                 withJavaLangCharSequence:(id<JavaLangCharSequence>)source
                                  withInt:(jint)start
                                  withInt:(jint)end;

- (id<AndroidTextEditable>)replaceWithInt:(jint)st
                                  withInt:(jint)en
                 withJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (id<AndroidTextEditable>)insertWithInt:(jint)where
                withJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                 withInt:(jint)start
                                 withInt:(jint)end;

- (id<AndroidTextEditable>)insertWithInt:(jint)where
                withJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (id<AndroidTextEditable>)delete__WithInt:(jint)st
                                   withInt:(jint)en;

- (id<AndroidTextEditable>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (id<AndroidTextEditable>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)text
                                                  withInt:(jint)start
                                                  withInt:(jint)end;

- (id<AndroidTextEditable>)appendWithChar:(jchar)text;

- (void)clear;

- (void)clearSpans;

- (void)setFiltersWithAndroidTextInputFilterArray:(IOSObjectArray *)filters;

- (IOSObjectArray *)getFilters;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidTextEditable)

J2OBJC_TYPE_LITERAL_HEADER(AndroidTextEditable)

@interface AndroidTextEditable_Factory : NSObject {
}

+ (AndroidTextEditable_Factory *)getInstance;

- (id<AndroidTextEditable>)newEditableWithJavaLangCharSequence:(id<JavaLangCharSequence>)source OBJC_METHOD_FAMILY_NONE;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL AndroidTextEditable_Factory_initialized;
J2OBJC_STATIC_INIT(AndroidTextEditable_Factory)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT AndroidTextEditable_Factory *AndroidTextEditable_Factory_getInstance();

FOUNDATION_EXPORT AndroidTextEditable_Factory *AndroidTextEditable_Factory_sInstance_;
J2OBJC_STATIC_FIELD_GETTER(AndroidTextEditable_Factory, sInstance_, AndroidTextEditable_Factory *)
J2OBJC_STATIC_FIELD_SETTER(AndroidTextEditable_Factory, sInstance_, AndroidTextEditable_Factory *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(AndroidTextEditable_Factory)

#endif // _AndroidTextEditable_H_
