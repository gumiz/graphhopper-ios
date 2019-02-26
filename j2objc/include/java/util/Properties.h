//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/Properties.java
//

#ifndef _JavaUtilProperties_H_
#define _JavaUtilProperties_H_

@class IOSCharArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaIoPrintStream;
@class JavaIoPrintWriter;
@class JavaIoReader;
@class JavaIoWriter;
@class JavaLangStringBuilder;
@protocol JavaLangAppendable;
@protocol JavaUtilEnumeration;
@protocol JavaUtilSet;
@protocol OrgXmlSaxAttributes;

#include "J2ObjC_header.h"
#include "java/util/Hashtable.h"
#include "org/xml/sax/helpers/DefaultHandler.h"

#define JavaUtilProperties_CONTINUE 3
#define JavaUtilProperties_IGNORE 5
#define JavaUtilProperties_KEY_DONE 4
#define JavaUtilProperties_NONE 0
#define JavaUtilProperties_SLASH 1
#define JavaUtilProperties_UNICODE 2
#define JavaUtilProperties_serialVersionUID 4112578634029874840LL

@interface JavaUtilProperties : JavaUtilHashtable {
 @public
  JavaUtilProperties *defaults_;
}

- (instancetype)init;

- (instancetype)initWithJavaUtilProperties:(JavaUtilProperties *)properties;

- (NSString *)getPropertyWithNSString:(NSString *)name;

- (NSString *)getPropertyWithNSString:(NSString *)name
                         withNSString:(NSString *)defaultValue;

- (void)listWithJavaIoPrintStream:(JavaIoPrintStream *)outArg;

- (void)listWithJavaIoPrintWriter:(JavaIoPrintWriter *)outArg;

- (void)load__WithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (void)load__WithJavaIoReader:(JavaIoReader *)inArg;

- (id<JavaUtilEnumeration>)propertyNames;

- (id<JavaUtilSet>)stringPropertyNames;

- (void)saveWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                      withNSString:(NSString *)comment;

- (id)setPropertyWithNSString:(NSString *)name
                 withNSString:(NSString *)value;

- (void)storeWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                       withNSString:(NSString *)comment;

- (void)storeWithJavaIoWriter:(JavaIoWriter *)writer
                 withNSString:(NSString *)comment;

- (void)loadFromXMLWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (void)storeToXMLWithJavaIoOutputStream:(JavaIoOutputStream *)os
                            withNSString:(NSString *)comment;

- (void)storeToXMLWithJavaIoOutputStream:(JavaIoOutputStream *)os
                            withNSString:(NSString *)comment
                            withNSString:(NSString *)encoding;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaUtilProperties)

J2OBJC_FIELD_SETTER(JavaUtilProperties, defaults_, JavaUtilProperties *)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaUtilProperties, serialVersionUID, jlong)

FOUNDATION_EXPORT NSString *JavaUtilProperties_PROP_DTD_NAME_;
J2OBJC_STATIC_FIELD_GETTER(JavaUtilProperties, PROP_DTD_NAME_, NSString *)

FOUNDATION_EXPORT NSString *JavaUtilProperties_PROP_DTD_;
J2OBJC_STATIC_FIELD_GETTER(JavaUtilProperties, PROP_DTD_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(JavaUtilProperties, NONE, jint)

J2OBJC_STATIC_FIELD_GETTER(JavaUtilProperties, SLASH, jint)

J2OBJC_STATIC_FIELD_GETTER(JavaUtilProperties, UNICODE, jint)

J2OBJC_STATIC_FIELD_GETTER(JavaUtilProperties, CONTINUE, jint)

J2OBJC_STATIC_FIELD_GETTER(JavaUtilProperties, KEY_DONE, jint)

J2OBJC_STATIC_FIELD_GETTER(JavaUtilProperties, IGNORE, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaUtilProperties)

@interface JavaUtilProperties_$1 : OrgXmlSaxHelpersDefaultHandler {
}

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)attributes;

- (void)charactersWithCharArray:(IOSCharArray *)ch
                        withInt:(jint)start
                        withInt:(jint)length;

- (instancetype)initWithJavaUtilProperties:(JavaUtilProperties *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaUtilProperties_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaUtilProperties_$1)

#endif // _JavaUtilProperties_H_
