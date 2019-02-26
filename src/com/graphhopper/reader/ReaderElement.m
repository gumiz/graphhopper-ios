//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/reader/ReaderElement.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/reader/ReaderElement.h"
#include "java/lang/StringBuilder.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@interface ReaderElement () {
 @public
  jint type_;
  jlong id__;
  id<JavaUtilMap> properties_;
}
@end

J2OBJC_FIELD_SETTER(ReaderElement, properties_, id<JavaUtilMap>)

@implementation ReaderElement

- (instancetype)initWithLong:(jlong)id_
                     withInt:(jint)type {
  if (self = [super init]) {
    ReaderElement_setAndConsume_properties_(self, [[JavaUtilHashMap alloc] initWithInt:5]);
    self->id__ = id_;
    self->type_ = type;
  }
  return self;
}

- (jlong)getId {
  return id__;
}

- (NSString *)tagsToString {
  if ([((id<JavaUtilMap>) nil_chk(properties_)) isEmpty]) return @"<empty>";
  JavaLangStringBuilder *tagTxt = [[[JavaLangStringBuilder alloc] init] autorelease];
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([properties_ entrySet])) {
    [tagTxt appendWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]];
    [tagTxt appendWithNSString:@"="];
    [tagTxt appendWithId:[entry_ getValue]];
    [tagTxt appendWithNSString:@"\n"];
  }
  return [tagTxt description];
}

- (id<JavaUtilMap>)getTags {
  return properties_;
}

- (void)setTagsWithJavaUtilMap:(id<JavaUtilMap>)newTags {
  [((id<JavaUtilMap>) nil_chk(properties_)) clear];
  if (newTags != nil) for (id<JavaUtilMap_Entry> __strong e in nil_chk([newTags entrySet])) {
    [self setTagWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(e)) getKey] withId:[e getValue]];
  }
}

- (jboolean)hasTags {
  return ![((id<JavaUtilMap>) nil_chk(properties_)) isEmpty];
}

- (NSString *)getTagWithNSString:(NSString *)name {
  return (NSString *) check_class_cast([((id<JavaUtilMap>) nil_chk(properties_)) getWithId:name], [NSString class]);
}

- (id)getTagWithNSString:(NSString *)key
                  withId:(id)defaultValue {
  id val = (id) [((id<JavaUtilMap>) nil_chk(properties_)) getWithId:key];
  if (val == nil) return defaultValue;
  return val;
}

- (void)setTagWithNSString:(NSString *)name
                    withId:(id)value {
  [((id<JavaUtilMap>) nil_chk(properties_)) putWithId:name withId:value];
}

- (jboolean)hasTagWithNSString:(NSString *)key
                        withId:(id)value {
  return [nil_chk(value) isEqual:[self getTagWithNSString:key withId:@""]];
}

- (jboolean)hasTagWithNSString:(NSString *)key
             withNSStringArray:(IOSObjectArray *)values {
  id value = [((id<JavaUtilMap>) nil_chk(properties_)) getWithId:key];
  if (value == nil) return NO;
  if (((IOSObjectArray *) nil_chk(values))->size_ == 0) return YES;
  {
    IOSObjectArray *a__ = values;
    NSString * const *b__ = a__->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *val = *b__++;
      if ([((NSString *) nil_chk(val)) isEqual:value]) return YES;
    }
  }
  return NO;
}

- (jboolean)hasTagWithNSString:(NSString *)key
               withJavaUtilSet:(id<JavaUtilSet>)values {
  return [((id<JavaUtilSet>) nil_chk(values)) containsWithId:[self getTagWithNSString:key withId:@""]];
}

- (jboolean)hasTagWithJavaUtilList:(id<JavaUtilList>)keyList
                   withJavaUtilSet:(id<JavaUtilSet>)values {
  for (NSString * __strong key in nil_chk(keyList)) {
    if ([((id<JavaUtilSet>) nil_chk(values)) containsWithId:[self getTagWithNSString:key withId:@""]]) return YES;
  }
  return NO;
}

- (NSString *)getFirstPriorityTagWithJavaUtilList:(id<JavaUtilList>)restrictions {
  for (NSString * __strong str in nil_chk(restrictions)) {
    if ([self hasTagWithNSString:str withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]]) return [self getTagWithNSString:str];
  }
  return @"";
}

- (void)removeTagWithNSString:(NSString *)name {
  [((id<JavaUtilMap>) nil_chk(properties_)) removeWithId:name];
}

- (void)clearTags {
  [((id<JavaUtilMap>) nil_chk(properties_)) clear];
}

- (jint)getType {
  return type_;
}

- (jboolean)isTypeWithInt:(jint)type {
  return self->type_ == type;
}

- (NSString *)description {
  return [((id<JavaUtilMap>) nil_chk(properties_)) description];
}

- (void)dealloc {
  RELEASE_(properties_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ReaderElement *)other {
  [super copyAllFieldsTo:other];
  other->type_ = type_;
  other->id__ = id__;
  ReaderElement_set_properties_(other, properties_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withInt:", "ReaderElement", NULL, 0x4, NULL },
    { "getId", NULL, "J", 0x1, NULL },
    { "tagsToString", NULL, "Ljava.lang.String;", 0x4, NULL },
    { "getTags", NULL, "Ljava.util.Map;", 0x4, NULL },
    { "setTagsWithJavaUtilMap:", "setTags", "V", 0x1, NULL },
    { "hasTags", NULL, "Z", 0x1, NULL },
    { "getTagWithNSString:", "getTag", "Ljava.lang.String;", 0x1, NULL },
    { "getTagWithNSString:withId:", "getTag", "TT;", 0x1, NULL },
    { "setTagWithNSString:withId:", "setTag", "V", 0x1, NULL },
    { "hasTagWithNSString:withId:", "hasTag", "Z", 0x1, NULL },
    { "hasTagWithNSString:withNSStringArray:", "hasTag", "Z", 0x81, NULL },
    { "hasTagWithNSString:withJavaUtilSet:", "hasTag", "Z", 0x11, NULL },
    { "hasTagWithJavaUtilList:withJavaUtilSet:", "hasTag", "Z", 0x1, NULL },
    { "getFirstPriorityTagWithJavaUtilList:", "getFirstPriorityTag", "Ljava.lang.String;", 0x1, NULL },
    { "removeTagWithNSString:", "removeTag", "V", 0x1, NULL },
    { "clearTags", NULL, "V", 0x1, NULL },
    { "getType", NULL, "I", 0x1, NULL },
    { "isTypeWithInt:", "isType", "Z", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NODE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ReaderElement_NODE },
    { "WAY_", NULL, 0x19, "I", NULL, .constantValue.asInt = ReaderElement_WAY },
    { "RELATION_", NULL, 0x19, "I", NULL, .constantValue.asInt = ReaderElement_RELATION },
    { "FILEHEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ReaderElement_FILEHEADER },
    { "type_", NULL, 0x12, "I", NULL,  },
    { "id__", "id", 0x12, "J", NULL,  },
    { "properties_", NULL, 0x12, "Ljava.util.Map;", NULL,  },
  };
  static const J2ObjcClassInfo _ReaderElement = { 1, "ReaderElement", "com.graphhopper.reader", NULL, 0x401, 19, methods, 7, fields, 0, NULL};
  return &_ReaderElement;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ReaderElement)