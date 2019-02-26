//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/UnsafeDataAccess.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/storage/AbstractDataAccess.h"
#include "com/graphhopper/storage/DAType.h"
#include "com/graphhopper/storage/DataAccess.h"
#include "com/graphhopper/storage/UnsafeDataAccess.h"
#include "java/io/File.h"
#include "java/io/IOException.h"
#include "java/io/RandomAccessFile.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/OutOfMemoryError.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/reflect/Field.h"
#include "java/nio/ByteOrder.h"
#include "sun/misc/Unsafe.h"

__attribute__((unused)) static jboolean UnsafeDataAccess_ensureCapacityWithLong_(UnsafeDataAccess *self, jlong bytes);
__attribute__((unused)) static jboolean UnsafeDataAccess_ensureCapacityWithLong_withBoolean_(UnsafeDataAccess *self, jlong bytes, jboolean clearNewMem);
__attribute__((unused)) static void UnsafeDataAccess_setBytesWithLong_withByteArray_withInt_(UnsafeDataAccess *self, jlong bytePos, IOSByteArray *values, jint length);
__attribute__((unused)) static void UnsafeDataAccess_getBytesWithLong_withByteArray_withInt_(UnsafeDataAccess *self, jlong bytePos, IOSByteArray *values, jint length);
__attribute__((unused)) static jlong UnsafeDataAccess_getCapacity(UnsafeDataAccess *self);
__attribute__((unused)) static jint UnsafeDataAccess_getSegments(UnsafeDataAccess *self);

@interface UnsafeDataAccess () {
 @public
  jlong address_;
  jlong capacity_;
}
@end

BOOL UnsafeDataAccess_initialized = NO;

@implementation UnsafeDataAccess

SunMiscUnsafe * UnsafeDataAccess_UNSAFE_;

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)location
            withJavaNioByteOrder:(JavaNioByteOrder *)order {
  return [super initWithNSString:name withNSString:location withJavaNioByteOrder:order];
}

- (UnsafeDataAccess *)createWithLong:(jlong)bytes {
  [self setSegmentSizeWithInt:segmentSizeInBytes_];
  UnsafeDataAccess_ensureCapacityWithLong_(self, bytes);
  return self;
}

- (jboolean)ensureCapacityWithLong:(jlong)bytes {
  return UnsafeDataAccess_ensureCapacityWithLong_(self, bytes);
}

- (jboolean)ensureCapacityWithLong:(jlong)bytes
                       withBoolean:(jboolean)clearNewMem {
  return UnsafeDataAccess_ensureCapacityWithLong_withBoolean_(self, bytes, clearNewMem);
}

- (id<DataAccess>)copyToWithDataAccess:(id<DataAccess>)da {
  if ([da isKindOfClass:[UnsafeDataAccess class]]) {
  }
  return [super copyToWithDataAccess:da];
}

- (jboolean)loadExisting {
  if ([self isClosed]) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"already closed"] autorelease];
  JavaIoFile *file = [[[JavaIoFile alloc] initWithNSString:[self getFullName]] autorelease];
  if (![file exists] || [file length] == 0) return NO;
  @try {
    JavaIoRandomAccessFile *raFile = [[[JavaIoRandomAccessFile alloc] initWithNSString:[self getFullName] withNSString:@"r"] autorelease];
    @try {
      jlong byteCount = [self readHeaderWithJavaIoRandomAccessFile:raFile] - AbstractDataAccess_HEADER_OFFSET;
      if (byteCount < 0) return NO;
      [raFile seekWithLong:AbstractDataAccess_HEADER_OFFSET];
      jint segmentCount = (jint) (byteCount / segmentSizeInBytes_);
      if (byteCount % segmentSizeInBytes_ != 0) segmentCount++;
      UnsafeDataAccess_ensureCapacityWithLong_withBoolean_(self, byteCount, NO);
      IOSByteArray *bytes = [IOSByteArray arrayWithLength:segmentSizeInBytes_];
      for (jint s = 0; s < segmentCount; s++) {
        jint read = [raFile readWithByteArray:bytes];
        if (read <= 0) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$I$$", @"segment ", s, @" is empty? ", [self description])] autorelease];
        UnsafeDataAccess_setBytesWithLong_withByteArray_withInt_(self, s * segmentSizeInBytes_, bytes, segmentSizeInBytes_);
      }
      return YES;
    }
    @finally {
      [raFile close];
    }
  }
  @catch (JavaIoIOException *ex) {
    @throw [[[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$$", @"Problem while loading ", [self getFullName]) withJavaLangThrowable:ex] autorelease];
  }
}

- (void)flush {
  if ([self isClosed]) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"already closed"] autorelease];
  @try {
    JavaIoRandomAccessFile *raFile = [[[JavaIoRandomAccessFile alloc] initWithNSString:[self getFullName] withNSString:@"rw"] autorelease];
    @try {
      jlong len = UnsafeDataAccess_getCapacity(self);
      [self writeHeaderWithJavaIoRandomAccessFile:raFile withLong:len withInt:segmentSizeInBytes_];
      [raFile seekWithLong:AbstractDataAccess_HEADER_OFFSET];
      IOSByteArray *bytes = [IOSByteArray arrayWithLength:segmentSizeInBytes_];
      jint segs = UnsafeDataAccess_getSegments(self);
      for (jint s = 0; s < segs; s++) {
        UnsafeDataAccess_getBytesWithLong_withByteArray_withInt_(self, s * segmentSizeInBytes_, bytes, segmentSizeInBytes_);
        [raFile writeWithByteArray:bytes];
      }
    }
    @finally {
      [raFile close];
    }
  }
  @catch (JavaLangException *ex) {
    @throw [[[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$$", @"Couldn't store bytes to ", [self description]) withJavaLangThrowable:ex] autorelease];
  }
}

- (void)close {
  [super close];
}

- (void)setIntWithLong:(jlong)bytePos
               withInt:(jint)value {
}

- (jint)getIntWithLong:(jlong)bytePos {
  return 0;
}

- (jshort)getShortWithLong:(jlong)bytePos {
  return 0;
}

- (void)setShortWithLong:(jlong)bytePos
               withShort:(jshort)value {
}

- (void)setBytesWithLong:(jlong)bytePos
           withByteArray:(IOSByteArray *)values
                 withInt:(jint)length {
  UnsafeDataAccess_setBytesWithLong_withByteArray_withInt_(self, bytePos, values, length);
}

- (void)getBytesWithLong:(jlong)bytePos
           withByteArray:(IOSByteArray *)values
                 withInt:(jint)length {
  UnsafeDataAccess_getBytesWithLong_withByteArray_withInt_(self, bytePos, values, length);
}

- (jlong)getCapacity {
  return UnsafeDataAccess_getCapacity(self);
}

- (jint)getSegments {
  return UnsafeDataAccess_getSegments(self);
}

- (void)trimToWithLong:(jlong)bytes {
  if (bytes > self->capacity_) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Use ensureCapacity to increase capacity!"] autorelease];
  jint allSegments = (jint) (bytes / segmentSizeInBytes_);
  if (bytes % segmentSizeInBytes_ != 0) allSegments++;
  if (allSegments <= 0) allSegments = 1;
  capacity_ = allSegments * segmentSizeInBytes_;
}

- (DAType *)getType {
  return DAType_get_UNSAFE_STORE_();
}

- (void)copyAllFieldsTo:(UnsafeDataAccess *)other {
  [super copyAllFieldsTo:other];
  other->address_ = address_;
  other->capacity_ = capacity_;
}

+ (void)initialize {
  if (self == [UnsafeDataAccess class]) {
    {
      @try {
        JavaLangReflectField *field = [SunMiscUnsafe_class_() getDeclaredField:@"theUnsafe"];
        [((JavaLangReflectField *) nil_chk(field)) setAccessibleWithBoolean:YES];
        JreStrongAssign(&UnsafeDataAccess_UNSAFE_, nil, (SunMiscUnsafe *) check_class_cast([field getWithId:nil], [SunMiscUnsafe class]));
      }
      @catch (JavaLangException *e) {
        @throw [[[JavaLangAssertionError alloc] initWithId:e] autorelease];
      }
    }
    J2OBJC_SET_INITIALIZED(UnsafeDataAccess)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:withJavaNioByteOrder:", "UnsafeDataAccess", NULL, 0x0, NULL },
    { "createWithLong:", "create", "Lcom.graphhopper.storage.UnsafeDataAccess;", 0x1, NULL },
    { "ensureCapacityWithLong:", "ensureCapacity", "Z", 0x11, NULL },
    { "ensureCapacityWithLong:withBoolean:", "ensureCapacity", "Z", 0x10, NULL },
    { "copyToWithDataAccess:", "copyTo", "Lcom.graphhopper.storage.DataAccess;", 0x1, NULL },
    { "loadExisting", NULL, "Z", 0x1, NULL },
    { "flush", NULL, "V", 0x1, NULL },
    { "close", NULL, "V", 0x1, NULL },
    { "setIntWithLong:withInt:", "setInt", "V", 0x11, NULL },
    { "getIntWithLong:", "getInt", "I", 0x11, NULL },
    { "getShortWithLong:", "getShort", "S", 0x1, NULL },
    { "setShortWithLong:withShort:", "setShort", "V", 0x1, NULL },
    { "setBytesWithLong:withByteArray:withInt:", "setBytes", "V", 0x11, NULL },
    { "getBytesWithLong:withByteArray:withInt:", "getBytes", "V", 0x11, NULL },
    { "getCapacity", NULL, "J", 0x11, NULL },
    { "getSegments", NULL, "I", 0x11, NULL },
    { "trimToWithLong:", "trimTo", "V", 0x11, NULL },
    { "getType", NULL, "Lcom.graphhopper.storage.DAType;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "UNSAFE_", NULL, 0x18, "Lsun.misc.Unsafe;", &UnsafeDataAccess_UNSAFE_,  },
    { "address_", NULL, 0x2, "J", NULL,  },
    { "capacity_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _UnsafeDataAccess = { 1, "UnsafeDataAccess", "com.graphhopper.storage", NULL, 0x1, 18, methods, 3, fields, 0, NULL};
  return &_UnsafeDataAccess;
}

@end

jboolean UnsafeDataAccess_ensureCapacityWithLong_(UnsafeDataAccess *self, jlong bytes) {
  return UnsafeDataAccess_ensureCapacityWithLong_withBoolean_(self, bytes, YES);
}

jboolean UnsafeDataAccess_ensureCapacityWithLong_withBoolean_(UnsafeDataAccess *self, jlong bytes, jboolean clearNewMem) {
  jlong oldCap = UnsafeDataAccess_getCapacity(self);
  jlong newBytes = bytes - oldCap;
  if (newBytes <= 0) return NO;
  jint allSegments = (jint) (bytes / self->segmentSizeInBytes_);
  if (bytes % self->segmentSizeInBytes_ != 0) allSegments++;
  self->capacity_ = allSegments * self->segmentSizeInBytes_;
  @try {
  }
  @catch (JavaLangOutOfMemoryError *err) {
    @throw [[[JavaLangOutOfMemoryError alloc] initWithNSString:JreStrcat("$$J$J$I", [((JavaLangOutOfMemoryError *) nil_chk(err)) getMessage], @" - problem when allocating new memory. Old capacity: ", oldCap, @", new bytes:", newBytes, @", segmentSizeIntsPower:", self->segmentSizePower_)] autorelease];
  }
  return YES;
}

void UnsafeDataAccess_setBytesWithLong_withByteArray_withInt_(UnsafeDataAccess *self, jlong bytePos, IOSByteArray *values, jint length) {
  for (jint offset = 0; offset < length; offset++) {
  }
}

void UnsafeDataAccess_getBytesWithLong_withByteArray_withInt_(UnsafeDataAccess *self, jlong bytePos, IOSByteArray *values, jint length) {
  NSCAssert(length <= self->segmentSizeInBytes_, [JreStrcat("$I$I" J2OBJC_COMMA() @"the length has to be smaller or equal to the segment size: " J2OBJC_COMMA() length J2OBJC_COMMA() @" vs. " J2OBJC_COMMA() self->segmentSizeInBytes_) description]);
  for (jint offset = 0; offset < length; offset++) {
  }
}

jlong UnsafeDataAccess_getCapacity(UnsafeDataAccess *self) {
  return self->capacity_;
}

jint UnsafeDataAccess_getSegments(UnsafeDataAccess *self) {
  return (jint) (self->capacity_ / self->segmentSizeInBytes_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(UnsafeDataAccess)