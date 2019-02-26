//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/Constants.java
//

#ifndef _Constants_H_
#define _Constants_H_

#include "J2ObjC_header.h"

#define Constants_VERSION_EDGE 14
#define Constants_VERSION_GEOMETRY 4
#define Constants_VERSION_LOCATION_IDX 3
#define Constants_VERSION_NAME_IDX 3
#define Constants_VERSION_NODE 5
#define Constants_VERSION_SHORTCUT 2

/**
 @brief Defining several important constants for GraphHopper.
 Partially taken from Lucene.
 */
@interface Constants : NSObject {
}

+ (NSString *)getVersions;

+ (NSString *)getMajorVersion;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL Constants_initialized;
J2OBJC_STATIC_INIT(Constants)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *Constants_getVersions();

FOUNDATION_EXPORT NSString *Constants_getMajorVersion();

FOUNDATION_EXPORT NSString *Constants_JAVA_VERSION_;
J2OBJC_STATIC_FIELD_GETTER(Constants, JAVA_VERSION_, NSString *)

FOUNDATION_EXPORT NSString *Constants_OS_NAME_;
J2OBJC_STATIC_FIELD_GETTER(Constants, OS_NAME_, NSString *)

FOUNDATION_EXPORT jboolean Constants_LINUX_;
J2OBJC_STATIC_FIELD_GETTER(Constants, LINUX_, jboolean)

FOUNDATION_EXPORT jboolean Constants_WINDOWS_;
J2OBJC_STATIC_FIELD_GETTER(Constants, WINDOWS_, jboolean)

FOUNDATION_EXPORT jboolean Constants_SUN_OS_;
J2OBJC_STATIC_FIELD_GETTER(Constants, SUN_OS_, jboolean)

FOUNDATION_EXPORT jboolean Constants_MAC_OS_X_;
J2OBJC_STATIC_FIELD_GETTER(Constants, MAC_OS_X_, jboolean)

FOUNDATION_EXPORT NSString *Constants_OS_ARCH_;
J2OBJC_STATIC_FIELD_GETTER(Constants, OS_ARCH_, NSString *)

FOUNDATION_EXPORT NSString *Constants_OS_VERSION_;
J2OBJC_STATIC_FIELD_GETTER(Constants, OS_VERSION_, NSString *)

FOUNDATION_EXPORT NSString *Constants_JAVA_VENDOR_;
J2OBJC_STATIC_FIELD_GETTER(Constants, JAVA_VENDOR_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(Constants, VERSION_NODE, jint)

J2OBJC_STATIC_FIELD_GETTER(Constants, VERSION_EDGE, jint)

J2OBJC_STATIC_FIELD_GETTER(Constants, VERSION_SHORTCUT, jint)

J2OBJC_STATIC_FIELD_GETTER(Constants, VERSION_GEOMETRY, jint)

J2OBJC_STATIC_FIELD_GETTER(Constants, VERSION_LOCATION_IDX, jint)

J2OBJC_STATIC_FIELD_GETTER(Constants, VERSION_NAME_IDX, jint)

FOUNDATION_EXPORT NSString *Constants_VERSION_;
J2OBJC_STATIC_FIELD_GETTER(Constants, VERSION_, NSString *)

FOUNDATION_EXPORT NSString *Constants_BUILD_DATE_;
J2OBJC_STATIC_FIELD_GETTER(Constants, BUILD_DATE_, NSString *)

FOUNDATION_EXPORT jboolean Constants_SNAPSHOT_;
J2OBJC_STATIC_FIELD_GETTER(Constants, SNAPSHOT_, jboolean)
CF_EXTERN_C_END

typedef Constants ComGraphhopperUtilConstants;

J2OBJC_TYPE_LITERAL_HEADER(Constants)

#endif // _Constants_H_
