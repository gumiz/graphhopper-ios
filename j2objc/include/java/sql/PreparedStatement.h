//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/sql/PreparedStatement.java
//

#ifndef _JavaSqlPreparedStatement_H_
#define _JavaSqlPreparedStatement_H_

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoReader;
@class JavaMathBigDecimal;
@class JavaNetURL;
@class JavaSqlDate;
@class JavaSqlTime;
@class JavaSqlTimestamp;
@class JavaUtilCalendar;
@protocol JavaSqlArray;
@protocol JavaSqlBlob;
@protocol JavaSqlClob;
@protocol JavaSqlNClob;
@protocol JavaSqlParameterMetaData;
@protocol JavaSqlRef;
@protocol JavaSqlResultSet;
@protocol JavaSqlResultSetMetaData;
@protocol JavaSqlRowId;
@protocol JavaSqlSQLXML;

#include "J2ObjC_header.h"
#include "java/sql/Statement.h"

@protocol JavaSqlPreparedStatement < JavaSqlStatement, NSObject, JavaObject >
- (void)addBatch;

- (void)clearParameters;

- (jboolean)execute;

- (id<JavaSqlResultSet>)executeQuery;

- (jint)executeUpdate;

- (id<JavaSqlResultSetMetaData>)getMetaData;

- (id<JavaSqlParameterMetaData>)getParameterMetaData;

- (void)setArrayWithInt:(jint)parameterIndex
       withJavaSqlArray:(id<JavaSqlArray>)theArray;

- (void)setAsciiStreamWithInt:(jint)parameterIndex
        withJavaIoInputStream:(JavaIoInputStream *)theInputStream
                      withInt:(jint)length;

- (void)setBigDecimalWithInt:(jint)parameterIndex
      withJavaMathBigDecimal:(JavaMathBigDecimal *)theBigDecimal;

- (void)setBinaryStreamWithInt:(jint)parameterIndex
         withJavaIoInputStream:(JavaIoInputStream *)theInputStream
                       withInt:(jint)length;

- (void)setBlobWithInt:(jint)parameterIndex
       withJavaSqlBlob:(id<JavaSqlBlob>)theBlob;

- (void)setBooleanWithInt:(jint)parameterIndex
              withBoolean:(jboolean)theBoolean;

- (void)setByteWithInt:(jint)parameterIndex
              withByte:(jbyte)theByte;

- (void)setBytesWithInt:(jint)parameterIndex
          withByteArray:(IOSByteArray *)theBytes;

- (void)setCharacterStreamWithInt:(jint)parameterIndex
                 withJavaIoReader:(JavaIoReader *)reader
                          withInt:(jint)length;

- (void)setClobWithInt:(jint)parameterIndex
       withJavaSqlClob:(id<JavaSqlClob>)theClob;

- (void)setDateWithInt:(jint)parameterIndex
       withJavaSqlDate:(JavaSqlDate *)theDate;

- (void)setDateWithInt:(jint)parameterIndex
       withJavaSqlDate:(JavaSqlDate *)theDate
  withJavaUtilCalendar:(JavaUtilCalendar *)cal;

- (void)setDoubleWithInt:(jint)parameterIndex
              withDouble:(jdouble)theDouble;

- (void)setFloatWithInt:(jint)parameterIndex
              withFloat:(jfloat)theFloat;

- (void)setIntWithInt:(jint)parameterIndex
              withInt:(jint)theInt;

- (void)setLongWithInt:(jint)parameterIndex
              withLong:(jlong)theLong;

- (void)setNullWithInt:(jint)parameterIndex
               withInt:(jint)sqlType;

- (void)setNullWithInt:(jint)paramIndex
               withInt:(jint)sqlType
          withNSString:(NSString *)typeName;

- (void)setObjectWithInt:(jint)parameterIndex
                  withId:(id)theObject;

- (void)setObjectWithInt:(jint)parameterIndex
                  withId:(id)theObject
                 withInt:(jint)targetSqlType;

- (void)setObjectWithInt:(jint)parameterIndex
                  withId:(id)theObject
                 withInt:(jint)targetSqlType
                 withInt:(jint)scale_;

- (void)setRefWithInt:(jint)parameterIndex
       withJavaSqlRef:(id<JavaSqlRef>)theRef;

- (void)setShortWithInt:(jint)parameterIndex
              withShort:(jshort)theShort;

- (void)setStringWithInt:(jint)parameterIndex
            withNSString:(NSString *)theString;

- (void)setTimeWithInt:(jint)parameterIndex
       withJavaSqlTime:(JavaSqlTime *)theTime;

- (void)setTimeWithInt:(jint)parameterIndex
       withJavaSqlTime:(JavaSqlTime *)theTime
  withJavaUtilCalendar:(JavaUtilCalendar *)cal;

- (void)setTimestampWithInt:(jint)parameterIndex
       withJavaSqlTimestamp:(JavaSqlTimestamp *)theTimestamp;

- (void)setTimestampWithInt:(jint)parameterIndex
       withJavaSqlTimestamp:(JavaSqlTimestamp *)theTimestamp
       withJavaUtilCalendar:(JavaUtilCalendar *)cal;

- (void)setUnicodeStreamWithInt:(jint)parameterIndex
          withJavaIoInputStream:(JavaIoInputStream *)theInputStream
                        withInt:(jint)length;

- (void)setURLWithInt:(jint)parameterIndex
       withJavaNetURL:(JavaNetURL *)theURL;

- (void)setRowIdWithInt:(jint)parameterIndex
       withJavaSqlRowId:(id<JavaSqlRowId>)theRowId;

- (void)setNStringWithInt:(jint)parameterIndex
             withNSString:(NSString *)theString;

- (void)setNCharacterStreamWithInt:(jint)parameterIndex
                  withJavaIoReader:(JavaIoReader *)reader
                          withLong:(jlong)length;

- (void)setNClobWithInt:(jint)parameterIndex
       withJavaSqlNClob:(id<JavaSqlNClob>)value;

- (void)setClobWithInt:(jint)parameterIndex
      withJavaIoReader:(JavaIoReader *)reader
              withLong:(jlong)length;

- (void)setBlobWithInt:(jint)parameterIndex
 withJavaIoInputStream:(JavaIoInputStream *)inputStream
              withLong:(jlong)length;

- (void)setNClobWithInt:(jint)parameterIndex
       withJavaIoReader:(JavaIoReader *)reader
               withLong:(jlong)length;

- (void)setSQLXMLWithInt:(jint)parameterIndex
       withJavaSqlSQLXML:(id<JavaSqlSQLXML>)xmlObject;

- (void)setAsciiStreamWithInt:(jint)parameterIndex
        withJavaIoInputStream:(JavaIoInputStream *)inputStream
                     withLong:(jlong)length;

- (void)setBinaryStreamWithInt:(jint)parameterIndex
         withJavaIoInputStream:(JavaIoInputStream *)inputStream
                      withLong:(jlong)length;

- (void)setCharacterStreamWithInt:(jint)parameterIndex
                 withJavaIoReader:(JavaIoReader *)reader
                         withLong:(jlong)length;

- (void)setAsciiStreamWithInt:(jint)parameterIndex
        withJavaIoInputStream:(JavaIoInputStream *)inputStream;

- (void)setBinaryStreamWithInt:(jint)parameterIndex
         withJavaIoInputStream:(JavaIoInputStream *)inputStream;

- (void)setCharacterStreamWithInt:(jint)parameterIndex
                 withJavaIoReader:(JavaIoReader *)reader;

- (void)setNCharacterStreamWithInt:(jint)parameterIndex
                  withJavaIoReader:(JavaIoReader *)reader;

- (void)setClobWithInt:(jint)parameterIndex
      withJavaIoReader:(JavaIoReader *)reader;

- (void)setBlobWithInt:(jint)parameterIndex
 withJavaIoInputStream:(JavaIoInputStream *)inputStream;

- (void)setNClobWithInt:(jint)parameterIndex
       withJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaSqlPreparedStatement)

J2OBJC_TYPE_LITERAL_HEADER(JavaSqlPreparedStatement)

#endif // _JavaSqlPreparedStatement_H_
