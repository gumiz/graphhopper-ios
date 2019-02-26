//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/impl/Constants.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "gnu/trove/impl/Constants.h"
#include "java/io/PrintStream.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/SecurityException.h"
#include "java/lang/Short.h"
#include "java/lang/System.h"

@interface GnuTroveImplConstants () {
}
@end

BOOL GnuTroveImplConstants_initialized = NO;

@implementation GnuTroveImplConstants

jboolean GnuTroveImplConstants_VERBOSE_;
jbyte GnuTroveImplConstants_DEFAULT_BYTE_NO_ENTRY_VALUE_;
jshort GnuTroveImplConstants_DEFAULT_SHORT_NO_ENTRY_VALUE_;
jchar GnuTroveImplConstants_DEFAULT_CHAR_NO_ENTRY_VALUE_;
jint GnuTroveImplConstants_DEFAULT_INT_NO_ENTRY_VALUE_;
jlong GnuTroveImplConstants_DEFAULT_LONG_NO_ENTRY_VALUE_;
jfloat GnuTroveImplConstants_DEFAULT_FLOAT_NO_ENTRY_VALUE_;
jdouble GnuTroveImplConstants_DEFAULT_DOUBLE_NO_ENTRY_VALUE_;

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [GnuTroveImplConstants class]) {
    {
      jboolean verbose = NO;
      @try {
        verbose = (JavaLangSystem_getPropertyWithNSString_withNSString_(@"gnu.trove.verbose", nil) != nil);
      }
      @catch (JavaLangSecurityException *ex) {
      }
      GnuTroveImplConstants_VERBOSE_ = verbose;
    }
    {
      jbyte value;
      NSString *property = @"0";
      @try {
        property = JavaLangSystem_getPropertyWithNSString_withNSString_(@"gnu.trove.no_entry.byte", property);
      }
      @catch (JavaLangSecurityException *ex) {
      }
      if ([@"MAX_VALUE" equalsIgnoreCase:property]) value = JavaLangByte_MAX_VALUE;
      else if ([@"MIN_VALUE" equalsIgnoreCase:property]) value = JavaLangByte_MIN_VALUE;
      else value = [JavaLangByte_valueOfWithNSString_(property) charValue];
      if (value > JavaLangByte_MAX_VALUE) value = JavaLangByte_MAX_VALUE;
      else if (value < JavaLangByte_MIN_VALUE) value = JavaLangByte_MIN_VALUE;
      GnuTroveImplConstants_DEFAULT_BYTE_NO_ENTRY_VALUE_ = value;
      if (GnuTroveImplConstants_VERBOSE_) {
        [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:JreStrcat("$B", @"DEFAULT_BYTE_NO_ENTRY_VALUE: ", GnuTroveImplConstants_DEFAULT_BYTE_NO_ENTRY_VALUE_)];
      }
    }
    {
      jshort value;
      NSString *property = @"0";
      @try {
        property = JavaLangSystem_getPropertyWithNSString_withNSString_(@"gnu.trove.no_entry.short", property);
      }
      @catch (JavaLangSecurityException *ex) {
      }
      if ([@"MAX_VALUE" equalsIgnoreCase:property]) value = JavaLangShort_MAX_VALUE;
      else if ([@"MIN_VALUE" equalsIgnoreCase:property]) value = JavaLangShort_MIN_VALUE;
      else value = [JavaLangShort_valueOfWithNSString_(property) shortValue];
      if (value > JavaLangShort_MAX_VALUE) value = JavaLangShort_MAX_VALUE;
      else if (value < JavaLangShort_MIN_VALUE) value = JavaLangShort_MIN_VALUE;
      GnuTroveImplConstants_DEFAULT_SHORT_NO_ENTRY_VALUE_ = value;
      if (GnuTroveImplConstants_VERBOSE_) {
        [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:JreStrcat("$S", @"DEFAULT_SHORT_NO_ENTRY_VALUE: ", GnuTroveImplConstants_DEFAULT_SHORT_NO_ENTRY_VALUE_)];
      }
    }
    {
      jchar value;
      NSString *property = @"\x00";
      @try {
        property = JavaLangSystem_getPropertyWithNSString_withNSString_(@"gnu.trove.no_entry.char", property);
      }
      @catch (JavaLangSecurityException *ex) {
      }
      if ([@"MAX_VALUE" equalsIgnoreCase:property]) value = JavaLangCharacter_MAX_VALUE;
      else if ([@"MIN_VALUE" equalsIgnoreCase:property]) value = JavaLangCharacter_MIN_VALUE;
      else value = IOSCharArray_Get(nil_chk([((NSString *) nil_chk(property)) toCharArray]), 0);
      if (value > JavaLangCharacter_MAX_VALUE) value = JavaLangCharacter_MAX_VALUE;
      else if (value < JavaLangCharacter_MIN_VALUE) value = JavaLangCharacter_MIN_VALUE;
      GnuTroveImplConstants_DEFAULT_CHAR_NO_ENTRY_VALUE_ = value;
      if (GnuTroveImplConstants_VERBOSE_) {
        [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:JreStrcat("$@", @"DEFAULT_CHAR_NO_ENTRY_VALUE: ", JavaLangInteger_valueOfWithInt_(value))];
      }
    }
    {
      jint value;
      NSString *property = @"0";
      @try {
        property = JavaLangSystem_getPropertyWithNSString_withNSString_(@"gnu.trove.no_entry.int", property);
      }
      @catch (JavaLangSecurityException *ex) {
      }
      if ([@"MAX_VALUE" equalsIgnoreCase:property]) value = JavaLangInteger_MAX_VALUE;
      else if ([@"MIN_VALUE" equalsIgnoreCase:property]) value = JavaLangInteger_MIN_VALUE;
      else value = [JavaLangInteger_valueOfWithNSString_(property) intValue];
      GnuTroveImplConstants_DEFAULT_INT_NO_ENTRY_VALUE_ = value;
      if (GnuTroveImplConstants_VERBOSE_) {
        [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:JreStrcat("$I", @"DEFAULT_INT_NO_ENTRY_VALUE: ", GnuTroveImplConstants_DEFAULT_INT_NO_ENTRY_VALUE_)];
      }
    }
    {
      jlong value;
      NSString *property = @"0";
      @try {
        property = JavaLangSystem_getPropertyWithNSString_withNSString_(@"gnu.trove.no_entry.long", property);
      }
      @catch (JavaLangSecurityException *ex) {
      }
      if ([@"MAX_VALUE" equalsIgnoreCase:property]) value = JavaLangLong_MAX_VALUE;
      else if ([@"MIN_VALUE" equalsIgnoreCase:property]) value = JavaLangLong_MIN_VALUE;
      else value = [JavaLangLong_valueOfWithNSString_(property) longLongValue];
      GnuTroveImplConstants_DEFAULT_LONG_NO_ENTRY_VALUE_ = value;
      if (GnuTroveImplConstants_VERBOSE_) {
        [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:JreStrcat("$J", @"DEFAULT_LONG_NO_ENTRY_VALUE: ", GnuTroveImplConstants_DEFAULT_LONG_NO_ENTRY_VALUE_)];
      }
    }
    {
      jfloat value;
      NSString *property = @"0";
      @try {
        property = JavaLangSystem_getPropertyWithNSString_withNSString_(@"gnu.trove.no_entry.float", property);
      }
      @catch (JavaLangSecurityException *ex) {
      }
      if ([@"MAX_VALUE" equalsIgnoreCase:property]) value = JavaLangFloat_MAX_VALUE;
      else if ([@"MIN_VALUE" equalsIgnoreCase:property]) value = JavaLangFloat_MIN_VALUE;
      else if ([@"MIN_NORMAL" equalsIgnoreCase:property]) value = 1.1754943508222875E-38f;
      else if ([@"NEGATIVE_INFINITY" equalsIgnoreCase:property]) value = JavaLangFloat_NEGATIVE_INFINITY;
      else if ([@"POSITIVE_INFINITY" equalsIgnoreCase:property]) value = JavaLangFloat_POSITIVE_INFINITY;
      else value = [JavaLangFloat_valueOfWithNSString_(property) floatValue];
      GnuTroveImplConstants_DEFAULT_FLOAT_NO_ENTRY_VALUE_ = value;
      if (GnuTroveImplConstants_VERBOSE_) {
        [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:JreStrcat("$F", @"DEFAULT_FLOAT_NO_ENTRY_VALUE: ", GnuTroveImplConstants_DEFAULT_FLOAT_NO_ENTRY_VALUE_)];
      }
    }
    {
      jdouble value;
      NSString *property = @"0";
      @try {
        property = JavaLangSystem_getPropertyWithNSString_withNSString_(@"gnu.trove.no_entry.double", property);
      }
      @catch (JavaLangSecurityException *ex) {
      }
      if ([@"MAX_VALUE" equalsIgnoreCase:property]) value = JavaLangDouble_MAX_VALUE;
      else if ([@"MIN_VALUE" equalsIgnoreCase:property]) value = JavaLangDouble_MIN_VALUE;
      else if ([@"MIN_NORMAL" equalsIgnoreCase:property]) value = 2.2250738585072014E-308;
      else if ([@"NEGATIVE_INFINITY" equalsIgnoreCase:property]) value = JavaLangDouble_NEGATIVE_INFINITY;
      else if ([@"POSITIVE_INFINITY" equalsIgnoreCase:property]) value = JavaLangDouble_POSITIVE_INFINITY;
      else value = [JavaLangDouble_valueOfWithNSString_(property) doubleValue];
      GnuTroveImplConstants_DEFAULT_DOUBLE_NO_ENTRY_VALUE_ = value;
      if (GnuTroveImplConstants_VERBOSE_) {
        [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:JreStrcat("$D", @"DEFAULT_DOUBLE_NO_ENTRY_VALUE: ", GnuTroveImplConstants_DEFAULT_DOUBLE_NO_ENTRY_VALUE_)];
      }
    }
    J2OBJC_SET_INITIALIZED(GnuTroveImplConstants)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "VERBOSE_", NULL, 0x1a, "Z", &GnuTroveImplConstants_VERBOSE_,  },
    { "DEFAULT_CAPACITY_", NULL, 0x19, "I", NULL, .constantValue.asInt = GnuTroveImplConstants_DEFAULT_CAPACITY },
    { "DEFAULT_LOAD_FACTOR_", NULL, 0x19, "F", NULL, .constantValue.asFloat = GnuTroveImplConstants_DEFAULT_LOAD_FACTOR },
    { "DEFAULT_BYTE_NO_ENTRY_VALUE_", NULL, 0x19, "B", &GnuTroveImplConstants_DEFAULT_BYTE_NO_ENTRY_VALUE_,  },
    { "DEFAULT_SHORT_NO_ENTRY_VALUE_", NULL, 0x19, "S", &GnuTroveImplConstants_DEFAULT_SHORT_NO_ENTRY_VALUE_,  },
    { "DEFAULT_CHAR_NO_ENTRY_VALUE_", NULL, 0x19, "C", &GnuTroveImplConstants_DEFAULT_CHAR_NO_ENTRY_VALUE_,  },
    { "DEFAULT_INT_NO_ENTRY_VALUE_", NULL, 0x19, "I", &GnuTroveImplConstants_DEFAULT_INT_NO_ENTRY_VALUE_,  },
    { "DEFAULT_LONG_NO_ENTRY_VALUE_", NULL, 0x19, "J", &GnuTroveImplConstants_DEFAULT_LONG_NO_ENTRY_VALUE_,  },
    { "DEFAULT_FLOAT_NO_ENTRY_VALUE_", NULL, 0x19, "F", &GnuTroveImplConstants_DEFAULT_FLOAT_NO_ENTRY_VALUE_,  },
    { "DEFAULT_DOUBLE_NO_ENTRY_VALUE_", NULL, 0x19, "D", &GnuTroveImplConstants_DEFAULT_DOUBLE_NO_ENTRY_VALUE_,  },
  };
  static const J2ObjcClassInfo _GnuTroveImplConstants = { 1, "Constants", "gnu.trove.impl", NULL, 0x1, 1, methods, 10, fields, 0, NULL};
  return &_GnuTroveImplConstants;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GnuTroveImplConstants)
