//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/datatype/Duration.java
//

#ifndef _JavaxXmlDatatypeDuration_H_
#define _JavaxXmlDatatypeDuration_H_

@class JavaMathBigDecimal;
@class JavaUtilCalendar;
@class JavaUtilDate;
@class JavaxXmlDatatypeDatatypeConstants_Field;
@class JavaxXmlNamespaceQName;

#include "J2ObjC_header.h"

@interface JavaxXmlDatatypeDuration : NSObject {
}

- (JavaxXmlNamespaceQName *)getXMLSchemaType;

- (jint)getSign;

- (jint)getYears;

- (jint)getMonths;

- (jint)getDays;

- (jint)getHours;

- (jint)getMinutes;

- (jint)getSeconds;

- (jlong)getTimeInMillisWithJavaUtilCalendar:(JavaUtilCalendar *)startInstant;

- (jlong)getTimeInMillisWithJavaUtilDate:(JavaUtilDate *)startInstant;

- (NSNumber *)getFieldWithJavaxXmlDatatypeDatatypeConstants_Field:(JavaxXmlDatatypeDatatypeConstants_Field *)field;

- (jboolean)isSetWithJavaxXmlDatatypeDatatypeConstants_Field:(JavaxXmlDatatypeDatatypeConstants_Field *)field;

- (JavaxXmlDatatypeDuration *)addWithJavaxXmlDatatypeDuration:(JavaxXmlDatatypeDuration *)rhs;

- (void)addToWithJavaUtilCalendar:(JavaUtilCalendar *)calendar;

- (void)addToWithJavaUtilDate:(JavaUtilDate *)date;

- (JavaxXmlDatatypeDuration *)subtractWithJavaxXmlDatatypeDuration:(JavaxXmlDatatypeDuration *)rhs;

- (JavaxXmlDatatypeDuration *)multiplyWithInt:(jint)factor;

- (JavaxXmlDatatypeDuration *)multiplyWithJavaMathBigDecimal:(JavaMathBigDecimal *)factor;

- (JavaxXmlDatatypeDuration *)negate;

- (JavaxXmlDatatypeDuration *)normalizeWithWithJavaUtilCalendar:(JavaUtilCalendar *)startTimeInstant;

- (jint)compareWithJavaxXmlDatatypeDuration:(JavaxXmlDatatypeDuration *)duration;

- (jboolean)isLongerThanWithJavaxXmlDatatypeDuration:(JavaxXmlDatatypeDuration *)duration;

- (jboolean)isShorterThanWithJavaxXmlDatatypeDuration:(JavaxXmlDatatypeDuration *)duration;

- (jboolean)isEqual:(id)duration;

- (NSUInteger)hash;

- (NSString *)description;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxXmlDatatypeDuration)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaxXmlDatatypeDuration)

#endif // _JavaxXmlDatatypeDuration_H_
