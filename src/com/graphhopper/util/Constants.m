//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/Constants.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/GraphHopper.h"
#include "com/graphhopper/util/Constants.h"
#include "com/graphhopper/util/Helper.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/System.h"
#include "java/nio/charset/Charset.h"
#include "java/util/List.h"

BOOL Constants_initialized = NO;

@implementation Constants

NSString * Constants_JAVA_VERSION_;
NSString * Constants_OS_NAME_;
jboolean Constants_LINUX_;
jboolean Constants_WINDOWS_;
jboolean Constants_SUN_OS_;
jboolean Constants_MAC_OS_X_;
NSString * Constants_OS_ARCH_;
NSString * Constants_OS_VERSION_;
NSString * Constants_JAVA_VENDOR_;
NSString * Constants_VERSION_;
NSString * Constants_BUILD_DATE_;
jboolean Constants_SNAPSHOT_;

+ (NSString *)getVersions {
  return Constants_getVersions();
}

+ (NSString *)getMajorVersion {
  return Constants_getMajorVersion();
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [Constants class]) {
    JreStrongAssign(&Constants_JAVA_VERSION_, nil, JavaLangSystem_getPropertyWithNSString_(@"java.version"));
    JreStrongAssign(&Constants_OS_NAME_, nil, JavaLangSystem_getPropertyWithNSString_(@"os.name"));
    Constants_LINUX_ = [((NSString *) nil_chk(Constants_OS_NAME_)) hasPrefix:@"Linux"];
    Constants_WINDOWS_ = [Constants_OS_NAME_ hasPrefix:@"Windows"];
    Constants_SUN_OS_ = [Constants_OS_NAME_ hasPrefix:@"SunOS"];
    Constants_MAC_OS_X_ = [Constants_OS_NAME_ hasPrefix:@"Mac OS X"];
    JreStrongAssign(&Constants_OS_ARCH_, nil, JavaLangSystem_getPropertyWithNSString_(@"os.arch"));
    JreStrongAssign(&Constants_OS_VERSION_, nil, JavaLangSystem_getPropertyWithNSString_(@"os.version"));
    JreStrongAssign(&Constants_JAVA_VENDOR_, nil, JavaLangSystem_getPropertyWithNSString_(@"java.vendor"));
    {
      NSString *version_ = @"0.0";
      @try {
        id<JavaUtilList> v = Helper_readFileWithJavaIoReader_([[[JavaIoInputStreamReader alloc] initWithJavaIoInputStream:[GraphHopper_class_() getResourceAsStream:@"version"] withJavaNioCharsetCharset:Helper_get_UTF_CS_()] autorelease]);
        version_ = [((id<JavaUtilList>) nil_chk(v)) getWithInt:0];
      }
      @catch (JavaLangException *ex) {
        [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:JreStrcat("$$", @"GraphHopper Initialization ERROR: cannot read version!? ", [((JavaLangException *) nil_chk(ex)) getMessage])];
      }
      jint indexM = [((NSString *) nil_chk(version_)) indexOfString:@"-"];
      if ([@"${project.version}" isEqual:version_]) {
        JreStrongAssign(&Constants_VERSION_, nil, @"0.0");
        Constants_SNAPSHOT_ = YES;
        [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:@"GraphHopper Initialization WARNING: maven did not preprocess the version file! Do not use the jar for a release!"];
      }
      else if ([@"0.0" isEqual:version_]) {
        JreStrongAssign(&Constants_VERSION_, nil, @"0.0");
        Constants_SNAPSHOT_ = YES;
        [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:@"GraphHopper Initialization WARNING: cannot get version!?"];
      }
      else {
        NSString *tmp = version_;
        if (indexM >= 0) tmp = [version_ substring:0 endIndex:indexM];
        Constants_SNAPSHOT_ = [((NSString *) nil_chk([version_ lowercaseString])) contains:@"-snapshot"];
        JreStrongAssign(&Constants_VERSION_, nil, tmp);
      }
      NSString *buildDate = @"";
      @try {
        id<JavaUtilList> v = Helper_readFileWithJavaIoReader_([[[JavaIoInputStreamReader alloc] initWithJavaIoInputStream:[GraphHopper_class_() getResourceAsStream:@"builddate"] withJavaNioCharsetCharset:Helper_get_UTF_CS_()] autorelease]);
        buildDate = [((id<JavaUtilList>) nil_chk(v)) getWithInt:0];
      }
      @catch (JavaLangException *ex) {
      }
      JreStrongAssign(&Constants_BUILD_DATE_, nil, buildDate);
    }
    J2OBJC_SET_INITIALIZED(Constants)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getVersions", NULL, "Ljava.lang.String;", 0x9, NULL },
    { "getMajorVersion", NULL, "Ljava.lang.String;", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "JAVA_VERSION_", NULL, 0x19, "Ljava.lang.String;", &Constants_JAVA_VERSION_,  },
    { "OS_NAME_", NULL, 0x19, "Ljava.lang.String;", &Constants_OS_NAME_,  },
    { "LINUX_", NULL, 0x19, "Z", &Constants_LINUX_,  },
    { "WINDOWS_", NULL, 0x19, "Z", &Constants_WINDOWS_,  },
    { "SUN_OS_", NULL, 0x19, "Z", &Constants_SUN_OS_,  },
    { "MAC_OS_X_", NULL, 0x19, "Z", &Constants_MAC_OS_X_,  },
    { "OS_ARCH_", NULL, 0x19, "Ljava.lang.String;", &Constants_OS_ARCH_,  },
    { "OS_VERSION_", NULL, 0x19, "Ljava.lang.String;", &Constants_OS_VERSION_,  },
    { "JAVA_VENDOR_", NULL, 0x19, "Ljava.lang.String;", &Constants_JAVA_VENDOR_,  },
    { "VERSION_NODE_", NULL, 0x19, "I", NULL, .constantValue.asInt = Constants_VERSION_NODE },
    { "VERSION_EDGE_", NULL, 0x19, "I", NULL, .constantValue.asInt = Constants_VERSION_EDGE },
    { "VERSION_SHORTCUT_", NULL, 0x19, "I", NULL, .constantValue.asInt = Constants_VERSION_SHORTCUT },
    { "VERSION_GEOMETRY_", NULL, 0x19, "I", NULL, .constantValue.asInt = Constants_VERSION_GEOMETRY },
    { "VERSION_LOCATION_IDX_", NULL, 0x19, "I", NULL, .constantValue.asInt = Constants_VERSION_LOCATION_IDX },
    { "VERSION_NAME_IDX_", NULL, 0x19, "I", NULL, .constantValue.asInt = Constants_VERSION_NAME_IDX },
    { "VERSION_", NULL, 0x19, "Ljava.lang.String;", &Constants_VERSION_,  },
    { "BUILD_DATE_", NULL, 0x19, "Ljava.lang.String;", &Constants_BUILD_DATE_,  },
    { "SNAPSHOT_", NULL, 0x19, "Z", &Constants_SNAPSHOT_,  },
  };
  static const J2ObjcClassInfo _Constants = { 1, "Constants", "com.graphhopper.util", NULL, 0x1, 3, methods, 18, fields, 0, NULL};
  return &_Constants;
}

@end

NSString *Constants_getVersions() {
  Constants_init();
  return JreStrcat("ICICICICICI", Constants_VERSION_NODE, ',', Constants_VERSION_EDGE, ',', Constants_VERSION_GEOMETRY, ',', Constants_VERSION_LOCATION_IDX, ',', Constants_VERSION_NAME_IDX, ',', Constants_VERSION_SHORTCUT);
}

NSString *Constants_getMajorVersion() {
  Constants_init();
  jint firstIdx = [((NSString *) nil_chk(Constants_VERSION_)) indexOfString:@"."];
  if (firstIdx < 0) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$", @"Cannot extract major version from version ", Constants_VERSION_)] autorelease];
  jint sndIdx = [Constants_VERSION_ indexOfString:@"." fromIndex:firstIdx + 1];
  if (sndIdx < 0) return Constants_VERSION_;
  return [Constants_VERSION_ substring:0 endIndex:sndIdx];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Constants)