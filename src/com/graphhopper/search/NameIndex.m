//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/search/NameIndex.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/search/NameIndex.h"
#include "com/graphhopper/storage/DataAccess.h"
#include "com/graphhopper/storage/Directory.h"
#include "com/graphhopper/util/BitUtil.h"
#include "com/graphhopper/util/Helper.h"
#include "java/lang/IllegalStateException.h"
#include "java/nio/charset/Charset.h"
#include "org/slf4j/Logger.h"
#include "org/slf4j/LoggerFactory.h"

__attribute__((unused)) static IOSByteArray *NameIndex_getBytesWithNSString_(NameIndex *self, NSString *name);

@interface NameIndex () {
 @public
  id<DataAccess> names_;
  jlong bytePointer_;
  NSString *lastName_;
  jlong lastIndex_;
}

- (IOSByteArray *)getBytesWithNSString:(NSString *)name;
@end

J2OBJC_FIELD_SETTER(NameIndex, names_, id<DataAccess>)
J2OBJC_FIELD_SETTER(NameIndex, lastName_, NSString *)

BOOL NameIndex_initialized = NO;

@implementation NameIndex

id<OrgSlf4jLogger> NameIndex_logger_;

- (instancetype)initWithDirectory:(id<Directory>)dir {
  if (self = [super init]) {
    bytePointer_ = NameIndex_START_POINTER;
    NameIndex_set_names_(self, [((id<Directory>) nil_chk(dir)) findWithNSString:@"names"]);
  }
  return self;
}

- (NameIndex *)createWithLong:(jlong)cap {
  [((id<DataAccess>) nil_chk(names_)) createWithLong:cap];
  return self;
}

- (jboolean)loadExisting {
  if ([((id<DataAccess>) nil_chk(names_)) loadExisting]) {
    bytePointer_ = [((BitUtil *) nil_chk(BitUtil_get_LITTLE_())) combineIntsToLongWithInt:[names_ getHeaderWithInt:0] withInt:[names_ getHeaderWithInt:4]];
    return YES;
  }
  return NO;
}

- (jlong)putWithNSString:(NSString *)name {
  if (name == nil || [name isEmpty]) {
    return 0;
  }
  if ([((NSString *) nil_chk(name)) isEqual:lastName_]) {
    return lastIndex_;
  }
  IOSByteArray *bytes = NameIndex_getBytesWithNSString_(self, name);
  jlong oldPointer = bytePointer_;
  [((id<DataAccess>) nil_chk(names_)) ensureCapacityWithLong:bytePointer_ + 1 + ((IOSByteArray *) nil_chk(bytes))->size_];
  IOSByteArray *sizeBytes = [IOSByteArray arrayWithBytes:(jbyte[]){ (jbyte) bytes->size_ } count:1];
  [names_ setBytesWithLong:bytePointer_ withByteArray:sizeBytes withInt:sizeBytes->size_];
  bytePointer_++;
  [names_ setBytesWithLong:bytePointer_ withByteArray:bytes withInt:bytes->size_];
  bytePointer_ += bytes->size_;
  NameIndex_set_lastName_(self, name);
  lastIndex_ = oldPointer;
  return oldPointer;
}

- (IOSByteArray *)getBytesWithNSString:(NSString *)name {
  return NameIndex_getBytesWithNSString_(self, name);
}

- (NSString *)getWithLong:(jlong)pointer {
  if (pointer < 0) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$J", @"Pointer to access NameIndex cannot be negative:", pointer)] autorelease];
  if (pointer == 0) return @"";
  IOSByteArray *sizeBytes = [IOSByteArray arrayWithLength:1];
  [((id<DataAccess>) nil_chk(names_)) getBytesWithLong:pointer withByteArray:sizeBytes withInt:1];
  jint size = IOSByteArray_Get(sizeBytes, 0) & (jint) 0xFF;
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:size];
  [names_ getBytesWithLong:pointer + sizeBytes->size_ withByteArray:bytes withInt:size];
  return [NSString stringWithBytes:bytes charset:Helper_get_UTF_CS_()];
}

- (void)flush {
  [((id<DataAccess>) nil_chk(names_)) setHeaderWithInt:0 withInt:[((BitUtil *) nil_chk(BitUtil_get_LITTLE_())) getIntLowWithLong:bytePointer_]];
  [names_ setHeaderWithInt:4 withInt:[BitUtil_get_LITTLE_() getIntHighWithLong:bytePointer_]];
  [names_ flush];
}

- (void)close {
  [((id<DataAccess>) nil_chk(names_)) close];
}

- (jboolean)isClosed {
  return [((id<DataAccess>) nil_chk(names_)) isClosed];
}

- (void)setSegmentSizeWithInt:(jint)segments {
  [((id<DataAccess>) nil_chk(names_)) setSegmentSizeWithInt:segments];
}

- (jlong)getCapacity {
  return [((id<DataAccess>) nil_chk(names_)) getCapacity];
}

- (void)copyToWithNameIndex:(NameIndex *)nameIndex {
  [((id<DataAccess>) nil_chk(names_)) copyToWithDataAccess:((NameIndex *) nil_chk(nameIndex))->names_];
}

- (void)dealloc {
  RELEASE_(names_);
  RELEASE_(lastName_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(NameIndex *)other {
  [super copyAllFieldsTo:other];
  NameIndex_set_names_(other, names_);
  other->bytePointer_ = bytePointer_;
  NameIndex_set_lastName_(other, lastName_);
  other->lastIndex_ = lastIndex_;
}

+ (void)initialize {
  if (self == [NameIndex class]) {
    JreStrongAssign(&NameIndex_logger_, nil, OrgSlf4jLoggerFactory_getLoggerWithIOSClass_(NameIndex_class_()));
    J2OBJC_SET_INITIALIZED(NameIndex)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithDirectory:", "NameIndex", NULL, 0x1, NULL },
    { "createWithLong:", "create", "Lcom.graphhopper.search.NameIndex;", 0x1, NULL },
    { "loadExisting", NULL, "Z", 0x1, NULL },
    { "putWithNSString:", "put", "J", 0x1, NULL },
    { "getBytesWithNSString:", "getBytes", "[B", 0x2, NULL },
    { "getWithLong:", "get", "Ljava.lang.String;", 0x1, NULL },
    { "flush", NULL, "V", 0x1, NULL },
    { "close", NULL, "V", 0x1, NULL },
    { "isClosed", NULL, "Z", 0x1, NULL },
    { "setSegmentSizeWithInt:", "setSegmentSize", "V", 0x1, NULL },
    { "getCapacity", NULL, "J", 0x1, NULL },
    { "copyToWithNameIndex:", "copyTo", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "logger_", NULL, 0x1a, "Lorg.slf4j.Logger;", &NameIndex_logger_,  },
    { "START_POINTER_", NULL, 0x1a, "J", NULL, .constantValue.asLong = NameIndex_START_POINTER },
    { "names_", NULL, 0x12, "Lcom.graphhopper.storage.DataAccess;", NULL,  },
    { "bytePointer_", NULL, 0x2, "J", NULL,  },
    { "lastName_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "lastIndex_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _NameIndex = { 1, "NameIndex", "com.graphhopper.search", NULL, 0x1, 12, methods, 6, fields, 0, NULL};
  return &_NameIndex;
}

@end

IOSByteArray *NameIndex_getBytesWithNSString_(NameIndex *self, NSString *name) {
  IOSByteArray *bytes = nil;
  for (jint i = 0; i < 2; i++) {
    bytes = [((NSString *) nil_chk(name)) getBytesWithCharset:Helper_get_UTF_CS_()];
    if (((IOSByteArray *) nil_chk(bytes))->size_ > 255) {
      NSString *newName = [name substring:0 endIndex:256 / 4];
      [((id<OrgSlf4jLogger>) nil_chk(NameIndex_logger_)) infoWithNSString:JreStrcat("$$$$", @"Way name is too long: ", name, @" truncated to ", newName)];
      name = newName;
      continue;
    }
    break;
  }
  if (((IOSByteArray *) nil_chk(bytes))->size_ > 255) {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$", @"Way name is too long: ", name)] autorelease];
  }
  return bytes;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NameIndex)