//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/NativeFSLockFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/storage/Lock.h"
#include "com/graphhopper/storage/NativeFSLockFactory.h"
#include "com/graphhopper/util/Helper.h"
#include "java/io/File.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/PrintStream.h"
#include "java/io/RandomAccessFile.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/nio/channels/FileChannel.h"
#include "java/nio/channels/FileLock.h"

__attribute__((unused)) static jboolean NativeFSLockFactory_NativeLock_lockExists(NativeFSLockFactory_NativeLock *self);

@interface NativeFSLockFactory () {
 @public
  JavaIoFile *lockDir_;
}
@end

J2OBJC_FIELD_SETTER(NativeFSLockFactory, lockDir_, JavaIoFile *)

@interface NativeFSLockFactory_NativeLock () {
 @public
  NSString *name_;
  JavaIoFile *lockDir_;
  JavaIoFile *lockFile_;
  jboolean writeLock_;
  JavaIoRandomAccessFile *tmpRaFile_;
  JavaNioChannelsFileChannel *tmpChannel_;
  JavaNioChannelsFileLock *tmpLock_;
  JavaLangException *failedReason_;
}

- (jboolean)lockExists;
@end

J2OBJC_FIELD_SETTER(NativeFSLockFactory_NativeLock, name_, NSString *)
J2OBJC_FIELD_SETTER(NativeFSLockFactory_NativeLock, lockDir_, JavaIoFile *)
J2OBJC_FIELD_SETTER(NativeFSLockFactory_NativeLock, lockFile_, JavaIoFile *)
J2OBJC_FIELD_SETTER(NativeFSLockFactory_NativeLock, tmpRaFile_, JavaIoRandomAccessFile *)
J2OBJC_FIELD_SETTER(NativeFSLockFactory_NativeLock, tmpChannel_, JavaNioChannelsFileChannel *)
J2OBJC_FIELD_SETTER(NativeFSLockFactory_NativeLock, tmpLock_, JavaNioChannelsFileLock *)
J2OBJC_FIELD_SETTER(NativeFSLockFactory_NativeLock, failedReason_, JavaLangException *)

@implementation NativeFSLockFactory

- (instancetype)init {
  return [super init];
}

- (instancetype)initWithJavaIoFile:(JavaIoFile *)dir {
  if (self = [super init]) {
    NativeFSLockFactory_set_lockDir_(self, dir);
  }
  return self;
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  NativeFSLockFactory_mainWithNSStringArray_(args);
}

- (void)setLockDirWithJavaIoFile:(JavaIoFile *)lockDir {
  NativeFSLockFactory_set_lockDir_(self, lockDir);
}

- (id<Lock>)createWithNSString:(NSString *)fileName
                   withBoolean:(jboolean)writeAccess {
  @synchronized(self) {
    if (lockDir_ == nil) @throw [[[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$$$", @"Set lockDir before creating ", (writeAccess ? @"write" : @"read"), @" locks")] autorelease];
    return [[[NativeFSLockFactory_NativeLock alloc] initWithJavaIoFile:lockDir_ withNSString:fileName withBoolean:writeAccess] autorelease];
  }
}

- (void)forceRemoveWithNSString:(NSString *)fileName
                    withBoolean:(jboolean)writeAccess {
  @synchronized(self) {
    if ([((JavaIoFile *) nil_chk(lockDir_)) exists]) {
      [((id<Lock>) nil_chk([self createWithNSString:fileName withBoolean:writeAccess])) release__];
      JavaIoFile *lockFile = [[[JavaIoFile alloc] initWithJavaIoFile:lockDir_ withNSString:fileName] autorelease];
      if ([lockFile exists] && ![lockFile delete__]) @throw [[[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$@", @"Cannot delete ", lockFile)] autorelease];
    }
  }
}

- (void)dealloc {
  RELEASE_(lockDir_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(NativeFSLockFactory *)other {
  [super copyAllFieldsTo:other];
  NativeFSLockFactory_set_lockDir_(other, lockDir_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "NativeFSLockFactory", NULL, 0x1, NULL },
    { "initWithJavaIoFile:", "NativeFSLockFactory", NULL, 0x1, NULL },
    { "mainWithNSStringArray:", "main", "V", 0x9, "Ljava.io.IOException;" },
    { "setLockDirWithJavaIoFile:", "setLockDir", "V", 0x1, NULL },
    { "createWithNSString:withBoolean:", "create", "Lcom.graphhopper.storage.Lock;", 0x21, NULL },
    { "forceRemoveWithNSString:withBoolean:", "forceRemove", "V", 0x21, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "lockDir_", NULL, 0x2, "Ljava.io.File;", NULL,  },
  };
  static const J2ObjcClassInfo _NativeFSLockFactory = { 1, "NativeFSLockFactory", "com.graphhopper.storage", NULL, 0x1, 6, methods, 1, fields, 0, NULL};
  return &_NativeFSLockFactory;
}

@end

void NativeFSLockFactory_mainWithNSStringArray_(IOSObjectArray *args) {
  NativeFSLockFactory_init();
  JavaIoFile *file = [[[JavaIoFile alloc] initWithNSString:@"tmp.lock"] autorelease];
  [file createNewFile];
  JavaNioChannelsFileChannel *channel = [((JavaIoRandomAccessFile *) [[[JavaIoRandomAccessFile alloc] initWithJavaIoFile:file withNSString:@"r"] autorelease]) getChannel];
  jboolean shared = YES;
  JavaNioChannelsFileLock *lock1 = [((JavaNioChannelsFileChannel *) nil_chk(channel)) tryLockWithLong:0 withLong:JavaLangLong_MAX_VALUE withBoolean:shared];
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:JreStrcat("$@", @"locked ", lock1)];
  [((JavaIoInputStream *) nil_chk(JavaLangSystem_get_in_())) read];
  [JavaLangSystem_get_out_() printlnWithNSString:JreStrcat("$@", @"release ", lock1)];
  [((JavaNioChannelsFileLock *) nil_chk(lock1)) release__];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NativeFSLockFactory)

@implementation NativeFSLockFactory_NativeLock

- (instancetype)initWithJavaIoFile:(JavaIoFile *)lockDir
                      withNSString:(NSString *)fileName
                       withBoolean:(jboolean)writeLock {
  if (self = [super init]) {
    NativeFSLockFactory_NativeLock_set_name_(self, fileName);
    NativeFSLockFactory_NativeLock_set_lockDir_(self, lockDir);
    NativeFSLockFactory_NativeLock_setAndConsume_lockFile_(self, [[JavaIoFile alloc] initWithJavaIoFile:lockDir withNSString:fileName]);
    self->writeLock_ = writeLock;
  }
  return self;
}

- (jboolean)tryLock {
  @synchronized(self) {
    if (NativeFSLockFactory_NativeLock_lockExists(self)) return NO;
    if (![((JavaIoFile *) nil_chk(lockDir_)) exists]) {
      if (![lockDir_ mkdirs]) @throw [[[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$@$@", @"Directory ", lockDir_, @" does not exist and cannot created to place lock file there: ", lockFile_)] autorelease];
    }
    if (![lockDir_ isDirectory]) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$@", @"lockDir has to be a directory: ", lockDir_)] autorelease];
    @try {
      NativeFSLockFactory_NativeLock_set_failedReason_(self, nil);
      NativeFSLockFactory_NativeLock_setAndConsume_tmpRaFile_(self, [[JavaIoRandomAccessFile alloc] initWithJavaIoFile:lockFile_ withNSString:@"rw"]);
    }
    @catch (JavaIoIOException *ex) {
      NativeFSLockFactory_NativeLock_set_failedReason_(self, ex);
      return NO;
    }
    @try {
      NativeFSLockFactory_NativeLock_set_tmpChannel_(self, [((JavaIoRandomAccessFile *) nil_chk(tmpRaFile_)) getChannel]);
      @try {
        NativeFSLockFactory_NativeLock_set_tmpLock_(self, [((JavaNioChannelsFileChannel *) nil_chk(tmpChannel_)) tryLockWithLong:0 withLong:JavaLangLong_MAX_VALUE withBoolean:!writeLock_]);
      }
      @catch (JavaLangException *ex) {
        NativeFSLockFactory_NativeLock_set_failedReason_(self, ex);
      }
      @finally {
        if (tmpLock_ == nil) {
          Helper_closeWithJavaIoCloseable_(tmpChannel_);
          NativeFSLockFactory_NativeLock_set_tmpChannel_(self, nil);
        }
      }
    }
    @finally {
      if (tmpChannel_ == nil) {
        Helper_closeWithJavaIoCloseable_(tmpRaFile_);
        NativeFSLockFactory_NativeLock_set_tmpRaFile_(self, nil);
      }
    }
    return NativeFSLockFactory_NativeLock_lockExists(self);
  }
}

- (jboolean)lockExists {
  return NativeFSLockFactory_NativeLock_lockExists(self);
}

- (jboolean)isLocked {
  @synchronized(self) {
    if (![((JavaIoFile *) nil_chk(lockFile_)) exists]) return NO;
    if (NativeFSLockFactory_NativeLock_lockExists(self)) return YES;
    @try {
      jboolean obtained = [self tryLock];
      if (obtained) [self release__];
      return !obtained;
    }
    @catch (JavaLangException *ex) {
      return NO;
    }
  }
}

- (void)release__ {
  @synchronized(self) {
    if (NativeFSLockFactory_NativeLock_lockExists(self)) {
      @try {
        NativeFSLockFactory_NativeLock_set_failedReason_(self, nil);
        [((JavaNioChannelsFileLock *) nil_chk(tmpLock_)) release__];
      }
      @catch (JavaLangException *ex) {
        @throw [[[JavaLangRuntimeException alloc] initWithJavaLangThrowable:ex] autorelease];
      }
      @finally {
        NativeFSLockFactory_NativeLock_set_tmpLock_(self, nil);
        @try {
          [((JavaNioChannelsFileChannel *) nil_chk(tmpChannel_)) close];
        }
        @catch (JavaLangException *ex) {
          @throw [[[JavaLangRuntimeException alloc] initWithJavaLangThrowable:ex] autorelease];
        }
        @finally {
          NativeFSLockFactory_NativeLock_set_tmpChannel_(self, nil);
          @try {
            [((JavaIoRandomAccessFile *) nil_chk(tmpRaFile_)) close];
          }
          @catch (JavaLangException *ex) {
            @throw [[[JavaLangRuntimeException alloc] initWithJavaLangThrowable:ex] autorelease];
          }
          @finally {
            NativeFSLockFactory_NativeLock_set_tmpRaFile_(self, nil);
          }
        }
      }
      [((JavaIoFile *) nil_chk(lockFile_)) delete__];
    }
  }
}

- (NSString *)getName {
  return name_;
}

- (JavaLangException *)getObtainFailedReason {
  return failedReason_;
}

- (NSString *)description {
  return [((JavaIoFile *) nil_chk(lockFile_)) description];
}

- (void)dealloc {
  RELEASE_(name_);
  RELEASE_(lockDir_);
  RELEASE_(lockFile_);
  RELEASE_(tmpRaFile_);
  RELEASE_(tmpChannel_);
  RELEASE_(tmpLock_);
  RELEASE_(failedReason_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(NativeFSLockFactory_NativeLock *)other {
  [super copyAllFieldsTo:other];
  NativeFSLockFactory_NativeLock_set_name_(other, name_);
  NativeFSLockFactory_NativeLock_set_lockDir_(other, lockDir_);
  NativeFSLockFactory_NativeLock_set_lockFile_(other, lockFile_);
  other->writeLock_ = writeLock_;
  NativeFSLockFactory_NativeLock_set_tmpRaFile_(other, tmpRaFile_);
  NativeFSLockFactory_NativeLock_set_tmpChannel_(other, tmpChannel_);
  NativeFSLockFactory_NativeLock_set_tmpLock_(other, tmpLock_);
  NativeFSLockFactory_NativeLock_set_failedReason_(other, failedReason_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoFile:withNSString:withBoolean:", "NativeLock", NULL, 0x1, NULL },
    { "tryLock", NULL, "Z", 0x21, NULL },
    { "lockExists", NULL, "Z", 0x22, NULL },
    { "isLocked", NULL, "Z", 0x21, NULL },
    { "release__", "release", "V", 0x21, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getObtainFailedReason", NULL, "Ljava.lang.Exception;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_", NULL, 0x12, "Ljava.lang.String;", NULL,  },
    { "lockDir_", NULL, 0x12, "Ljava.io.File;", NULL,  },
    { "lockFile_", NULL, 0x12, "Ljava.io.File;", NULL,  },
    { "writeLock_", NULL, 0x12, "Z", NULL,  },
    { "tmpRaFile_", NULL, 0x2, "Ljava.io.RandomAccessFile;", NULL,  },
    { "tmpChannel_", NULL, 0x2, "Ljava.nio.channels.FileChannel;", NULL,  },
    { "tmpLock_", NULL, 0x2, "Ljava.nio.channels.FileLock;", NULL,  },
    { "failedReason_", NULL, 0x2, "Ljava.lang.Exception;", NULL,  },
  };
  static const J2ObjcClassInfo _NativeFSLockFactory_NativeLock = { 1, "NativeLock", "com.graphhopper.storage", "NativeFSLockFactory", 0x8, 8, methods, 8, fields, 0, NULL};
  return &_NativeFSLockFactory_NativeLock;
}

@end

jboolean NativeFSLockFactory_NativeLock_lockExists(NativeFSLockFactory_NativeLock *self) {
  @synchronized(self) {
    return self->tmpLock_ != nil;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NativeFSLockFactory_NativeLock)