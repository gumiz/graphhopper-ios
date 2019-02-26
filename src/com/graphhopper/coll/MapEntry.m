//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/coll/MapEntry.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/coll/MapEntry.h"

@interface MapEntry () {
 @public
  id key_;
  id value_;
}
@end

J2OBJC_FIELD_SETTER(MapEntry, key_, id)
J2OBJC_FIELD_SETTER(MapEntry, value_, id)

@implementation MapEntry

- (instancetype)initWithId:(id)key
                    withId:(id)value {
  if (self = [super init]) {
    MapEntry_set_key_(self, key);
    MapEntry_set_value_(self, value);
  }
  return self;
}

- (id)getKey {
  return key_;
}

- (id)getValue {
  return value_;
}

- (id)setValueWithId:(id)value {
  MapEntry_set_value_(self, value);
  return value;
}

- (NSString *)description {
  return JreStrcat("@$@", [self getKey], @", ", [self getValue]);
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) {
    return NO;
  }
  if ([self getClass] != [nil_chk(obj) getClass]) {
    return NO;
  }
  MapEntry *other = (MapEntry *) check_class_cast(obj, [MapEntry class]);
  if (self->key_ != other->key_ && (self->key_ == nil || ![self->key_ isEqual:other->key_])) {
    return NO;
  }
  if (self->value_ != other->value_ && (self->value_ == nil || ![self->value_ isEqual:other->value_])) {
    return NO;
  }
  return YES;
}

- (NSUInteger)hash {
  jint hash_ = 7;
  hash_ = 19 * hash_ + (self->key_ != nil ? ((jint) [self->key_ hash]) : 0);
  hash_ = 19 * hash_ + (self->value_ != nil ? ((jint) [self->value_ hash]) : 0);
  return hash_;
}

- (void)dealloc {
  RELEASE_(key_);
  RELEASE_(value_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(MapEntry *)other {
  [super copyAllFieldsTo:other];
  MapEntry_set_key_(other, key_);
  MapEntry_set_value_(other, value_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithId:withId:", "MapEntry", NULL, 0x1, NULL },
    { "getKey", NULL, "TK;", 0x1, NULL },
    { "getValue", NULL, "TV;", 0x1, NULL },
    { "setValueWithId:", "setValue", "TV;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = MapEntry_serialVersionUID },
    { "key_", NULL, 0x2, "TK;", NULL,  },
    { "value_", NULL, 0x2, "TV;", NULL,  },
  };
  static const J2ObjcClassInfo _MapEntry = { 1, "MapEntry", "com.graphhopper.coll", NULL, 0x1, 7, methods, 3, fields, 0, NULL};
  return &_MapEntry;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MapEntry)