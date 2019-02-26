//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/TranslationMap.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/util/Helper.h"
#include "com/graphhopper/util/Translation.h"
#include "com/graphhopper/util/TranslationMap.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/nio/charset/Charset.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

__attribute__((unused)) static void TranslationMap_postImportHook(TranslationMap *self);

@interface TranslationMap () {
 @public
  id<JavaUtilMap> translations_;
}

/**
 @brief This method does some checks and fills missing translation from en
 */
- (void)postImportHook;
@end

J2OBJC_FIELD_SETTER(TranslationMap, translations_, id<JavaUtilMap>)

@interface TranslationMap_TranslationHashMap () {
 @public
  id<JavaUtilMap> map_;
}
@end

J2OBJC_FIELD_SETTER(TranslationMap_TranslationHashMap, map_, id<JavaUtilMap>)

BOOL TranslationMap_initialized = NO;

@implementation TranslationMap

id<JavaUtilList> TranslationMap_LOCALES_;

+ (jint)countOccurenceWithNSString:(NSString *)phrase
                      withNSString:(NSString *)splitter {
  return TranslationMap_countOccurenceWithNSString_withNSString_(phrase, splitter);
}

- (TranslationMap *)doImportWithJavaIoFile:(JavaIoFile *)folder {
  @try {
    for (NSString * __strong locale in nil_chk(TranslationMap_LOCALES_)) {
      TranslationMap_TranslationHashMap *trMap = [[[TranslationMap_TranslationHashMap alloc] initWithJavaUtilLocale:Helper_getLocaleWithNSString_(locale)] autorelease];
      [trMap doImportWithJavaIoInputStream:[[[JavaIoFileInputStream alloc] initWithJavaIoFile:[[[JavaIoFile alloc] initWithJavaIoFile:folder withNSString:JreStrcat("$$", locale, @".txt")] autorelease]] autorelease]];
      [self addWithTranslation:trMap];
    }
    TranslationMap_postImportHook(self);
    return self;
  }
  @catch (JavaLangException *ex) {
    @throw [[[JavaLangRuntimeException alloc] initWithJavaLangThrowable:ex] autorelease];
  }
}

- (TranslationMap *)doImport {
  @try {
    for (NSString * __strong locale in nil_chk(TranslationMap_LOCALES_)) {
      TranslationMap_TranslationHashMap *trMap = [[[TranslationMap_TranslationHashMap alloc] initWithJavaUtilLocale:Helper_getLocaleWithNSString_(locale)] autorelease];
      [trMap doImportWithJavaIoInputStream:[TranslationMap_class_() getResourceAsStream:JreStrcat("$$", locale, @".txt")]];
      [self addWithTranslation:trMap];
    }
    TranslationMap_postImportHook(self);
    return self;
  }
  @catch (JavaLangException *ex) {
    @throw [[[JavaLangRuntimeException alloc] initWithJavaLangThrowable:ex] autorelease];
  }
}

- (void)addWithTranslation:(id<Translation>)tr {
  JavaUtilLocale *locale = [((id<Translation>) nil_chk(tr)) getLocale];
  [((id<JavaUtilMap>) nil_chk(translations_)) putWithId:[((JavaUtilLocale *) nil_chk(locale)) description] withId:tr];
  if (![((NSString *) nil_chk([locale getCountry])) isEmpty] && ![translations_ containsKeyWithId:[tr getLanguage]]) [translations_ putWithId:[tr getLanguage] withId:tr];
  if ([@"iw" isEqual:[locale getLanguage]]) [translations_ putWithId:@"he" withId:tr];
  if ([@"in" isEqual:[locale getLanguage]]) [translations_ putWithId:@"id" withId:tr];
}

- (id<Translation>)getWithFallBackWithJavaUtilLocale:(JavaUtilLocale *)locale {
  id<Translation> tr = [self getWithNSString:[((JavaUtilLocale *) nil_chk(locale)) description]];
  if (tr == nil) {
    tr = [self getWithNSString:[locale getLanguage]];
    if (tr == nil) tr = [self getWithNSString:@"en"];
  }
  return tr;
}

- (id<Translation>)getWithNSString:(NSString *)locale {
  locale = [((NSString *) nil_chk(locale)) replace:@"-" withSequence:@"_"];
  id<Translation> tr = [((id<JavaUtilMap>) nil_chk(translations_)) getWithId:locale];
  if ([((NSString *) nil_chk(locale)) contains:@"_"] && tr == nil) tr = [translations_ getWithId:[locale substring:0 endIndex:2]];
  return tr;
}

- (void)postImportHook {
  TranslationMap_postImportHook(self);
}

- (NSString *)description {
  return [((id<JavaUtilMap>) nil_chk(translations_)) description];
}

- (instancetype)init {
  if (self = [super init]) {
    TranslationMap_setAndConsume_translations_(self, [[JavaUtilHashMap alloc] init]);
  }
  return self;
}

- (void)dealloc {
  RELEASE_(translations_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(TranslationMap *)other {
  [super copyAllFieldsTo:other];
  TranslationMap_set_translations_(other, translations_);
}

+ (void)initialize {
  if (self == [TranslationMap class]) {
    JreStrongAssign(&TranslationMap_LOCALES_, nil, JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ @"ar", @"ast", @"bg", @"ca", @"cs_CZ", @"da_DK", @"de_DE", @"el", @"en_US", @"es", @"fa", @"fil", @"fi", @"fr_FR", @"fr_CH", @"gl", @"he", @"hr_HR", @"hsb", @"hu_HU", @"it", @"ja", @"ko", @"lt_LT", @"ne", @"nl", @"pl_PL", @"pt_BR", @"pt_PT", @"ro", @"ru", @"si", @"sk", @"sv_SE", @"tr", @"uk", @"vi_VI", @"zh_CN", @"zh_HK" } count:39 type:NSString_class_()]));
    J2OBJC_SET_INITIALIZED(TranslationMap)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "countOccurenceWithNSString:withNSString:", "countOccurence", "I", 0x9, NULL },
    { "doImportWithJavaIoFile:", "doImport", "Lcom.graphhopper.util.TranslationMap;", 0x1, NULL },
    { "doImport", NULL, "Lcom.graphhopper.util.TranslationMap;", 0x1, NULL },
    { "addWithTranslation:", "add", "V", 0x1, NULL },
    { "getWithFallBackWithJavaUtilLocale:", "getWithFallBack", "Lcom.graphhopper.util.Translation;", 0x1, NULL },
    { "getWithNSString:", "get", "Lcom.graphhopper.util.Translation;", 0x1, NULL },
    { "postImportHook", NULL, "V", 0x2, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LOCALES_", NULL, 0x1a, "Ljava.util.List;", &TranslationMap_LOCALES_,  },
    { "translations_", NULL, 0x12, "Ljava.util.Map;", NULL,  },
  };
  static const J2ObjcClassInfo _TranslationMap = { 1, "TranslationMap", "com.graphhopper.util", NULL, 0x1, 9, methods, 2, fields, 0, NULL};
  return &_TranslationMap;
}

@end

jint TranslationMap_countOccurenceWithNSString_withNSString_(NSString *phrase, NSString *splitter) {
  TranslationMap_init();
  if (Helper_isEmptyWithNSString_(phrase)) return 0;
  return ((IOSObjectArray *) nil_chk([((NSString *) nil_chk([((NSString *) nil_chk(phrase)) trim])) split:splitter]))->size_;
}

void TranslationMap_postImportHook(TranslationMap *self) {
  id<JavaUtilMap> enMap = [((id<Translation>) nil_chk([self getWithNSString:@"en"])) asMap];
  JavaLangStringBuilder *sb = [[[JavaLangStringBuilder alloc] init] autorelease];
  for (id<Translation> __strong tr in nil_chk([((id<JavaUtilMap>) nil_chk(self->translations_)) values])) {
    id<JavaUtilMap> trMap = [((id<Translation>) nil_chk(tr)) asMap];
    for (id<JavaUtilMap_Entry> __strong enEntry in nil_chk([((id<JavaUtilMap>) nil_chk(enMap)) entrySet])) {
      NSString *value = [((id<JavaUtilMap>) nil_chk(trMap)) getWithId:[((id<JavaUtilMap_Entry>) nil_chk(enEntry)) getKey]];
      if (Helper_isEmptyWithNSString_(value)) {
        [trMap putWithId:[enEntry getKey] withId:[enEntry getValue]];
        continue;
      }
      jint expectedCount = TranslationMap_countOccurenceWithNSString_withNSString_([enEntry getValue], @"\\%");
      if (expectedCount != TranslationMap_countOccurenceWithNSString_withNSString_(value, @"\\%")) {
        [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithId:[tr getLocale]])) appendWithNSString:@" - error in "])) appendWithNSString:[enEntry getKey]])) appendWithNSString:@"->"])) appendWithNSString:value])) appendWithNSString:@"\n"];
      }
      else {
        IOSObjectArray *strs = [IOSObjectArray arrayWithLength:expectedCount type:NSString_class_()];
        JavaUtilArrays_fillWithNSObjectArray_withId_(strs, @"tmp");
        @try {
          NSString_formatWithNSString_withNSObjectArray_(value, strs);
        }
        @catch (JavaLangException *ex) {
          [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithId:[tr getLocale]])) appendWithNSString:@" - error "])) appendWithNSString:[((JavaLangException *) nil_chk(ex)) getMessage]])) appendWithNSString:@"in "])) appendWithNSString:[enEntry getKey]])) appendWithNSString:@"->"])) appendWithNSString:value])) appendWithNSString:@"\n"];
        }
      }
    }
  }
  if ([sb sequenceLength] > 0) {
    [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithId:sb];
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:[sb description]] autorelease];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(TranslationMap)

@implementation TranslationMap_TranslationHashMap

- (instancetype)initWithJavaUtilLocale:(JavaUtilLocale *)locale {
  if (self = [super init]) {
    TranslationMap_TranslationHashMap_setAndConsume_map_(self, [[JavaUtilHashMap alloc] init]);
    TranslationMap_TranslationHashMap_set_locale_(self, locale);
  }
  return self;
}

- (void)clear {
  [((id<JavaUtilMap>) nil_chk(map_)) clear];
}

- (JavaUtilLocale *)getLocale {
  return locale_;
}

- (NSString *)getLanguage {
  return [((JavaUtilLocale *) nil_chk(locale_)) getLanguage];
}

- (NSString *)trWithNSString:(NSString *)key
           withNSObjectArray:(IOSObjectArray *)params {
  NSString *val = [((id<JavaUtilMap>) nil_chk(map_)) getWithId:[((NSString *) nil_chk(key)) lowercaseString]];
  if (Helper_isEmptyWithNSString_(val)) return key;
  return NSString_formatWithNSString_withNSObjectArray_(val, params);
}

- (TranslationMap_TranslationHashMap *)putWithNSString:(NSString *)key
                                          withNSString:(NSString *)val {
  NSString *existing = [((id<JavaUtilMap>) nil_chk(map_)) putWithId:[((NSString *) nil_chk(key)) lowercaseString] withId:val];
  if (existing != nil) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$$$$$", @"Cannot overwrite key ", key, @" with ", val, @", was: ", existing)] autorelease];
  return self;
}

- (NSString *)description {
  return [((id<JavaUtilMap>) nil_chk(map_)) description];
}

- (id<JavaUtilMap>)asMap {
  return map_;
}

- (TranslationMap_TranslationHashMap *)doImportWithJavaIoInputStream:(JavaIoInputStream *)is {
  if (is == nil) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"No input stream found in class path!?"] autorelease];
  @try {
    for (NSString * __strong line in nil_chk(Helper_readFileWithJavaIoReader_([[[JavaIoInputStreamReader alloc] initWithJavaIoInputStream:is withJavaNioCharsetCharset:Helper_get_UTF_CS_()] autorelease]))) {
      if ([((NSString *) nil_chk(line)) isEmpty] || [line hasPrefix:@"//"] || [line hasPrefix:@"#"]) continue;
      jint index = [line indexOf:'='];
      if (index < 0) continue;
      NSString *key = [line substring:0 endIndex:index];
      if ([((NSString *) nil_chk(key)) isEmpty]) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$", @"No key provided:", line)] autorelease];
      NSString *value = [line substring:index + 1];
      if (![((NSString *) nil_chk(value)) isEmpty]) [self putWithNSString:key withNSString:value];
    }
  }
  @catch (JavaIoIOException *ex) {
    @throw [[[JavaLangRuntimeException alloc] initWithJavaLangThrowable:ex] autorelease];
  }
  return self;
}

- (void)dealloc {
  RELEASE_(locale_);
  RELEASE_(map_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(TranslationMap_TranslationHashMap *)other {
  [super copyAllFieldsTo:other];
  TranslationMap_TranslationHashMap_set_locale_(other, locale_);
  TranslationMap_TranslationHashMap_set_map_(other, map_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilLocale:", "TranslationHashMap", NULL, 0x1, NULL },
    { "clear", NULL, "V", 0x1, NULL },
    { "getLocale", NULL, "Ljava.util.Locale;", 0x1, NULL },
    { "getLanguage", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "trWithNSString:withNSObjectArray:", "tr", "Ljava.lang.String;", 0x81, NULL },
    { "putWithNSString:withNSString:", "put", "Lcom.graphhopper.util.TranslationMap$TranslationHashMap;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "asMap", NULL, "Ljava.util.Map;", 0x1, NULL },
    { "doImportWithJavaIoInputStream:", "doImport", "Lcom.graphhopper.util.TranslationMap$TranslationHashMap;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "locale_", NULL, 0x10, "Ljava.util.Locale;", NULL,  },
    { "map_", NULL, 0x12, "Ljava.util.Map;", NULL,  },
  };
  static const J2ObjcClassInfo _TranslationMap_TranslationHashMap = { 1, "TranslationHashMap", "com.graphhopper.util", "TranslationMap", 0x9, 9, methods, 2, fields, 0, NULL};
  return &_TranslationMap_TranslationHashMap;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(TranslationMap_TranslationHashMap)
