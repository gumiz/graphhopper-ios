//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/fake_slf4j/src/org/slf4j/Logger.java
//

#include "J2ObjC_source.h"
#include "java/lang/Throwable.h"
#include "org/slf4j/Logger.h"

@interface OrgSlf4jLogger : NSObject
@end

@implementation OrgSlf4jLogger

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "infoWithNSString:", "info", "V", 0x401, NULL },
    { "warnWithNSString:withJavaLangThrowable:", "warn", "V", 0x401, NULL },
    { "warnWithNSString:", "warn", "V", 0x401, NULL },
    { "errorWithNSString:withJavaLangThrowable:", "error", "V", 0x401, NULL },
    { "errorWithNSString:", "error", "V", 0x401, NULL },
  };
  static const J2ObjcClassInfo _OrgSlf4jLogger = { 1, "Logger", "org.slf4j", NULL, 0x201, 5, methods, 0, NULL, 0, NULL};
  return &_OrgSlf4jLogger;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgSlf4jLogger)
