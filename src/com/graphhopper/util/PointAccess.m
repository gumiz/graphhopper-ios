//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/PointAccess.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/util/PointAccess.h"

@interface PointAccess : NSObject
@end

@implementation PointAccess

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "is3D", NULL, "Z", 0x401, NULL },
    { "getDimension", NULL, "I", 0x401, NULL },
    { "ensureNodeWithInt:", "ensureNode", "V", 0x401, NULL },
    { "setNodeWithInt:withDouble:withDouble:", "setNode", "V", 0x401, NULL },
    { "setNodeWithInt:withDouble:withDouble:withDouble:", "setNode", "V", 0x401, NULL },
    { "getLatitudeWithInt:", "getLatitude", "D", 0x401, NULL },
    { "getLatWithInt:", "getLat", "D", 0x401, NULL },
    { "getLongitudeWithInt:", "getLongitude", "D", 0x401, NULL },
    { "getLonWithInt:", "getLon", "D", 0x401, NULL },
    { "getElevationWithInt:", "getElevation", "D", 0x401, NULL },
    { "getEleWithInt:", "getEle", "D", 0x401, NULL },
  };
  static const J2ObjcClassInfo _PointAccess = { 1, "PointAccess", "com.graphhopper.util", NULL, 0x201, 11, methods, 0, NULL, 0, NULL};
  return &_PointAccess;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(PointAccess)