//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/GPXEntry.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/util/GPXEntry.h"
#include "com/graphhopper/util/shapes/GHPoint.h"
#include "java/lang/Double.h"

@interface GPXEntry () {
 @public
  jlong time_;
}
@end

@implementation GPXEntry

- (instancetype)initWithGHPoint:(GHPoint *)p
                       withLong:(jlong)millis {
  return [self initGPXEntryWithDouble:((GHPoint *) nil_chk(p))->lat_ withDouble:p->lon_ withLong:millis];
}

- (instancetype)initGPXEntryWithDouble:(jdouble)lat
                            withDouble:(jdouble)lon
                              withLong:(jlong)millis {
  if (self = [super initWithDouble:lat withDouble:lon withDouble:JavaLangDouble_NaN]) {
    self->time_ = millis;
  }
  return self;
}

- (instancetype)initWithDouble:(jdouble)lat
                    withDouble:(jdouble)lon
                      withLong:(jlong)millis {
  return [self initGPXEntryWithDouble:lat withDouble:lon withLong:millis];
}

- (instancetype)initWithDouble:(jdouble)lat
                    withDouble:(jdouble)lon
                    withDouble:(jdouble)ele
                      withLong:(jlong)millis {
  if (self = [super initWithDouble:lat withDouble:lon withDouble:ele]) {
    self->time_ = millis;
  }
  return self;
}

- (jboolean)is3D {
  return !JavaLangDouble_isNaNWithDouble_(ele_);
}

- (jlong)getTime {
  return time_;
}

- (void)setTimeWithLong:(jlong)time {
  self->time_ = time;
}

- (NSUInteger)hash {
  return 59 * [super hash] + (jint) (time_ ^ (URShift64(time_, 32)));
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) return NO;
  GPXEntry *other = (GPXEntry *) check_class_cast(obj, [GPXEntry class]);
  return time_ == ((GPXEntry *) nil_chk(other))->time_ && [super isEqual:obj];
}

- (NSString *)description {
  return JreStrcat("$$J", [super description], @", ", time_);
}

- (void)copyAllFieldsTo:(GPXEntry *)other {
  [super copyAllFieldsTo:other];
  other->time_ = time_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithGHPoint:withLong:", "GPXEntry", NULL, 0x1, NULL },
    { "initWithDouble:withDouble:withLong:", "GPXEntry", NULL, 0x1, NULL },
    { "initWithDouble:withDouble:withDouble:withLong:", "GPXEntry", NULL, 0x1, NULL },
    { "is3D", NULL, "Z", 0x0, NULL },
    { "getTime", NULL, "J", 0x1, NULL },
    { "setTimeWithLong:", "setTime", "V", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "time_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _GPXEntry = { 1, "GPXEntry", "com.graphhopper.util", NULL, 0x1, 9, methods, 1, fields, 0, NULL};
  return &_GPXEntry;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GPXEntry)
