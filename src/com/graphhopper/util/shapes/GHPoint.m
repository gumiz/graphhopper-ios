//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/shapes/GHPoint.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/util/NumHelper.h"
#include "com/graphhopper/util/shapes/GHPoint.h"
#include "java/lang/Double.h"
#include "java/lang/Exception.h"

@implementation GHPoint

- (instancetype)init {
  if (self = [super init]) {
    lat_ = JavaLangDouble_NaN;
    lon_ = JavaLangDouble_NaN;
  }
  return self;
}

- (instancetype)initWithDouble:(jdouble)lat
                    withDouble:(jdouble)lon {
  if (self = [super init]) {
    lat_ = JavaLangDouble_NaN;
    lon_ = JavaLangDouble_NaN;
    self->lat_ = lat;
    self->lon_ = lon;
  }
  return self;
}

+ (GHPoint *)parseWithNSString:(NSString *)str {
  return GHPoint_parseWithNSString_(str);
}

- (jdouble)getLon {
  return lon_;
}

- (jdouble)getLat {
  return lat_;
}

- (jboolean)isValid {
  return !JavaLangDouble_isNaNWithDouble_(lat_) && !JavaLangDouble_isNaNWithDouble_(lon_);
}

- (NSUInteger)hash {
  jint hash_ = 7;
  hash_ = 83 * hash_ + (jint) (JavaLangDouble_doubleToLongBitsWithDouble_(self->lat_) ^ (URShift64(JavaLangDouble_doubleToLongBitsWithDouble_(self->lat_), 32)));
  hash_ = 83 * hash_ + (jint) (JavaLangDouble_doubleToLongBitsWithDouble_(self->lon_) ^ (URShift64(JavaLangDouble_doubleToLongBitsWithDouble_(self->lon_), 32)));
  return hash_;
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) return NO;
  GHPoint *other = (GHPoint *) check_class_cast(obj, [GHPoint class]);
  return NumHelper_equalsEpsWithDouble_withDouble_(lat_, ((GHPoint *) nil_chk(other))->lat_) && NumHelper_equalsEpsWithDouble_withDouble_(lon_, other->lon_);
}

- (NSString *)description {
  return JreStrcat("DCD", lat_, ',', lon_);
}

- (IOSObjectArray *)toGeoJson {
  return [IOSObjectArray arrayWithObjects:(id[]){ JavaLangDouble_valueOfWithDouble_(lon_), JavaLangDouble_valueOfWithDouble_(lat_) } count:2 type:JavaLangDouble_class_()];
}

- (void)copyAllFieldsTo:(GHPoint *)other {
  [super copyAllFieldsTo:other];
  other->lat_ = lat_;
  other->lon_ = lon_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "GHPoint", NULL, 0x1, NULL },
    { "initWithDouble:withDouble:", "GHPoint", NULL, 0x1, NULL },
    { "parseWithNSString:", "parse", "Lcom.graphhopper.util.shapes.GHPoint;", 0x9, NULL },
    { "getLon", NULL, "D", 0x1, NULL },
    { "getLat", NULL, "D", 0x1, NULL },
    { "isValid", NULL, "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "toGeoJson", NULL, "[Ljava.lang.Double;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "lat_", NULL, 0x1, "D", NULL,  },
    { "lon_", NULL, 0x1, "D", NULL,  },
  };
  static const J2ObjcClassInfo _GHPoint = { 1, "GHPoint", "com.graphhopper.util.shapes", NULL, 0x1, 10, methods, 2, fields, 0, NULL};
  return &_GHPoint;
}

@end

GHPoint *GHPoint_parseWithNSString_(NSString *str) {
  GHPoint_init();
  IOSObjectArray *fromStrs = [((NSString *) nil_chk(str)) split:@","];
  if (((IOSObjectArray *) nil_chk(fromStrs))->size_ == 2) {
    @try {
      jdouble fromLat = JavaLangDouble_parseDoubleWithNSString_(IOSObjectArray_Get(fromStrs, 0));
      jdouble fromLon = JavaLangDouble_parseDoubleWithNSString_(IOSObjectArray_Get(fromStrs, 1));
      return [[[GHPoint alloc] initWithDouble:fromLat withDouble:fromLon] autorelease];
    }
    @catch (JavaLangException *ex) {
    }
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GHPoint)
