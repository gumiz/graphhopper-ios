//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/ConfigMap.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/util/ConfigMap.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NullPointerException.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"

@interface ConfigMap () {
 @public
  id<JavaUtilMap> map_;
}
@end

J2OBJC_FIELD_SETTER(ConfigMap, map_, id<JavaUtilMap>)

@implementation ConfigMap

- (instancetype)init {
  return [self initConfigMapWithInt:5];
}

- (instancetype)initConfigMapWithInt:(jint)capacity {
  return [self initConfigMapWithJavaUtilMap:[[[JavaUtilHashMap alloc] initWithInt:capacity] autorelease]];
}

- (instancetype)initWithInt:(jint)capacity {
  return [self initConfigMapWithInt:capacity];
}

- (instancetype)initConfigMapWithJavaUtilMap:(id<JavaUtilMap>)map {
  if (self = [super init]) {
    ConfigMap_set_map_(self, map);
  }
  return self;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)map {
  return [self initConfigMapWithJavaUtilMap:map];
}

- (ConfigMap *)putWithConfigMap:(ConfigMap *)map {
  [((id<JavaUtilMap>) nil_chk(self->map_)) putAllWithJavaUtilMap:((ConfigMap *) nil_chk(map))->map_];
  return self;
}

- (NSString *)checkKeyWithNSString:(NSString *)key {
  if (![((NSString *) nil_chk([((NSString *) nil_chk(key)) lowercaseString])) isEqual:key]) @throw [[[JavaLangNullPointerException alloc] initWithNSString:JreStrcat("$$", @"keys have to be lower case but wasn't: ", key)] autorelease];
  return key;
}

- (ConfigMap *)putWithNSString:(NSString *)key
                        withId:(id)obj {
  if (obj == nil) @throw [[[JavaLangNullPointerException alloc] initWithNSString:JreStrcat("$$$", @"Value cannot be null for key ", key, @". Use remove instead.")] autorelease];
  [((id<JavaUtilMap>) nil_chk(map_)) putWithId:[self checkKeyWithNSString:key] withId:obj];
  return self;
}

- (ConfigMap *)removeWithNSString:(NSString *)key {
  [((id<JavaUtilMap>) nil_chk(map_)) removeWithId:[self checkKeyWithNSString:key]];
  return self;
}

- (jboolean)hasWithNSString:(NSString *)key {
  return [((id<JavaUtilMap>) nil_chk(map_)) containsKeyWithId:[self checkKeyWithNSString:key]];
}

- (jlong)getLongWithNSString:(NSString *)key
                    withLong:(jlong)_default {
  JavaLangLong *t = (JavaLangLong *) check_class_cast([((id<JavaUtilMap>) nil_chk(map_)) getWithId:[self checkKeyWithNSString:key]], [JavaLangLong class]);
  if (t == nil) return _default;
  return [((JavaLangLong *) nil_chk(t)) longLongValue];
}

- (jint)getIntWithNSString:(NSString *)key
                   withInt:(jint)_default {
  JavaLangInteger *t = (JavaLangInteger *) check_class_cast([((id<JavaUtilMap>) nil_chk(map_)) getWithId:[self checkKeyWithNSString:key]], [JavaLangInteger class]);
  if (t == nil) return _default;
  return [((JavaLangInteger *) nil_chk(t)) intValue];
}

- (jboolean)getBoolWithNSString:(NSString *)key
                    withBoolean:(jboolean)_default {
  JavaLangBoolean *t = (JavaLangBoolean *) check_class_cast([((id<JavaUtilMap>) nil_chk(map_)) getWithId:[self checkKeyWithNSString:key]], [JavaLangBoolean class]);
  if (t == nil) return _default;
  return [((JavaLangBoolean *) nil_chk(t)) booleanValue];
}

- (jdouble)getDoubleWithNSString:(NSString *)key
                      withDouble:(jdouble)_default {
  JavaLangDouble *t = (JavaLangDouble *) check_class_cast([((id<JavaUtilMap>) nil_chk(map_)) getWithId:[self checkKeyWithNSString:key]], [JavaLangDouble class]);
  if (t == nil) return _default;
  return [((JavaLangDouble *) nil_chk(t)) doubleValue];
}

- (id)getWithNSString:(NSString *)key
               withId:(id)_default {
  id t = (id) [((id<JavaUtilMap>) nil_chk(map_)) getWithId:[self checkKeyWithNSString:key]];
  if (t == nil) return _default;
  return t;
}

- (id<JavaUtilMap>)getMapWithNSString:(NSString *)key
                         withIOSClass:(IOSClass *)embed {
  return (id<JavaUtilMap>) check_protocol_cast([((id<JavaUtilMap>) nil_chk(map_)) getWithId:[self checkKeyWithNSString:key]], @protocol(JavaUtilMap));
}

- (id<JavaUtilMap>)getMapWithNSString:(NSString *)key {
  return (id<JavaUtilMap>) check_protocol_cast([((id<JavaUtilMap>) nil_chk(map_)) getWithId:[self checkKeyWithNSString:key]], @protocol(JavaUtilMap));
}

- (id<JavaUtilList>)getListWithNSString:(NSString *)key {
  return (id<JavaUtilList>) check_protocol_cast([((id<JavaUtilMap>) nil_chk(map_)) getWithId:[self checkKeyWithNSString:key]], @protocol(JavaUtilList));
}

- (id<JavaUtilList>)getListWithNSString:(NSString *)key
                           withIOSClass:(IOSClass *)embed {
  return (id<JavaUtilList>) check_protocol_cast([((id<JavaUtilMap>) nil_chk(map_)) getWithId:[self checkKeyWithNSString:key]], @protocol(JavaUtilList));
}

- (NSString *)description {
  return [((id<JavaUtilMap>) nil_chk(map_)) description];
}

- (void)dealloc {
  RELEASE_(map_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ConfigMap *)other {
  [super copyAllFieldsTo:other];
  ConfigMap_set_map_(other, map_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ConfigMap", NULL, 0x1, NULL },
    { "initWithInt:", "ConfigMap", NULL, 0x1, NULL },
    { "initWithJavaUtilMap:", "ConfigMap", NULL, 0x1, NULL },
    { "putWithConfigMap:", "put", "Lcom.graphhopper.util.ConfigMap;", 0x1, NULL },
    { "checkKeyWithNSString:", "checkKey", "Ljava.lang.String;", 0x0, NULL },
    { "putWithNSString:withId:", "put", "Lcom.graphhopper.util.ConfigMap;", 0x1, NULL },
    { "removeWithNSString:", "remove", "Lcom.graphhopper.util.ConfigMap;", 0x1, NULL },
    { "hasWithNSString:", "has", "Z", 0x1, NULL },
    { "getLongWithNSString:withLong:", "getLong", "J", 0x1, NULL },
    { "getIntWithNSString:withInt:", "getInt", "I", 0x1, NULL },
    { "getBoolWithNSString:withBoolean:", "getBool", "Z", 0x1, NULL },
    { "getDoubleWithNSString:withDouble:", "getDouble", "D", 0x1, NULL },
    { "getWithNSString:withId:", "get", "TT;", 0x1, NULL },
    { "getMapWithNSString:withIOSClass:", "getMap", "Ljava.util.Map;", 0x1, NULL },
    { "getMapWithNSString:", "getMap", "Ljava.util.Map;", 0x1, NULL },
    { "getListWithNSString:", "getList", "Ljava.util.List;", 0x1, NULL },
    { "getListWithNSString:withIOSClass:", "getList", "Ljava.util.List;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "map_", NULL, 0x12, "Ljava.util.Map;", NULL,  },
  };
  static const J2ObjcClassInfo _ConfigMap = { 1, "ConfigMap", "com.graphhopper.util", NULL, 0x1, 18, methods, 1, fields, 0, NULL};
  return &_ConfigMap;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ConfigMap)
