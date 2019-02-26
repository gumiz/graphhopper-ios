//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/impl/hash/THash.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "gnu/trove/impl/Constants.h"
#include "gnu/trove/impl/HashFunctions.h"
#include "gnu/trove/impl/PrimeFinder.h"
#include "gnu/trove/impl/hash/THash.h"
#include "java/io/IOException.h"
#include "java/io/ObjectInput.h"
#include "java/io/ObjectOutput.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"

@implementation GnuTroveImplHashTHash

- (instancetype)init {
  return [self initGnuTroveImplHashTHashWithInt:GnuTroveImplHashTHash_DEFAULT_CAPACITY withFloat:GnuTroveImplHashTHash_DEFAULT_LOAD_FACTOR];
}

- (instancetype)initWithInt:(jint)initialCapacity {
  return [self initGnuTroveImplHashTHashWithInt:initialCapacity withFloat:GnuTroveImplHashTHash_DEFAULT_LOAD_FACTOR];
}

- (instancetype)initGnuTroveImplHashTHashWithInt:(jint)initialCapacity
                                       withFloat:(jfloat)loadFactor {
  if (self = [super init]) {
    _autoCompactTemporaryDisable_ = NO;
    _loadFactor_ = loadFactor;
    _autoCompactionFactor_ = loadFactor;
    [self setUpWithInt:GnuTroveImplHashFunctions_fastCeilWithFloat_(initialCapacity / loadFactor)];
  }
  return self;
}

- (instancetype)initWithInt:(jint)initialCapacity
                  withFloat:(jfloat)loadFactor {
  return [self initGnuTroveImplHashTHashWithInt:initialCapacity withFloat:loadFactor];
}

- (jboolean)isEmpty {
  return 0 == _size_;
}

- (jint)size {
  return _size_;
}

- (jint)capacity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)ensureCapacityWithInt:(jint)desiredCapacity {
  if (desiredCapacity > (_maxSize_ - [self size])) {
    [self rehashWithInt:GnuTroveImplPrimeFinder_nextPrimeWithInt_(JavaLangMath_maxWithInt_withInt_([self size] + 1, GnuTroveImplHashFunctions_fastCeilWithFloat_((desiredCapacity + [self size]) / _loadFactor_) + 1))];
    [self computeMaxSizeWithInt:[self capacity]];
  }
}

- (void)compact {
  [self rehashWithInt:GnuTroveImplPrimeFinder_nextPrimeWithInt_(JavaLangMath_maxWithInt_withInt_(_size_ + 1, GnuTroveImplHashFunctions_fastCeilWithFloat_([self size] / _loadFactor_) + 1))];
  [self computeMaxSizeWithInt:[self capacity]];
  if (_autoCompactionFactor_ != 0) {
    [self computeNextAutoCompactionAmountWithInt:[self size]];
  }
}

- (void)setAutoCompactionFactorWithFloat:(jfloat)factor {
  if (factor < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$F", @"Factor must be >= 0: ", factor)] autorelease];
  }
  _autoCompactionFactor_ = factor;
}

- (jfloat)getAutoCompactionFactor {
  return _autoCompactionFactor_;
}

- (void)trimToSize {
  [self compact];
}

- (void)removeAtWithInt:(jint)index {
  _size_--;
  if (_autoCompactionFactor_ != 0) {
    _autoCompactRemovesRemaining_--;
    if (!_autoCompactTemporaryDisable_ && _autoCompactRemovesRemaining_ <= 0) {
      [self compact];
    }
  }
}

- (void)clear {
  _size_ = 0;
  _free_ = [self capacity];
}

- (jint)setUpWithInt:(jint)initialCapacity {
  jint capacity;
  capacity = GnuTroveImplPrimeFinder_nextPrimeWithInt_(initialCapacity);
  [self computeMaxSizeWithInt:capacity];
  [self computeNextAutoCompactionAmountWithInt:initialCapacity];
  return capacity;
}

- (void)rehashWithInt:(jint)newCapacity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)tempDisableAutoCompaction {
  _autoCompactTemporaryDisable_ = YES;
}

- (void)reenableAutoCompactionWithBoolean:(jboolean)check_for_compaction {
  _autoCompactTemporaryDisable_ = NO;
  if (check_for_compaction && _autoCompactRemovesRemaining_ <= 0 && _autoCompactionFactor_ != 0) {
    [self compact];
  }
}

- (void)computeMaxSizeWithInt:(jint)capacity {
  _maxSize_ = JavaLangMath_minWithInt_withInt_(capacity - 1, J2ObjCFpToInt((capacity * _loadFactor_)));
  _free_ = capacity - _size_;
}

- (void)computeNextAutoCompactionAmountWithInt:(jint)size {
  if (_autoCompactionFactor_ != 0) {
    _autoCompactRemovesRemaining_ = J2ObjCFpToInt(((size * _autoCompactionFactor_) + 0.5f));
  }
}

- (void)postInsertHookWithBoolean:(jboolean)usedFreeSlot {
  if (usedFreeSlot) {
    _free_--;
  }
  if (++_size_ > _maxSize_ || _free_ == 0) {
    jint newCapacity = _size_ > _maxSize_ ? GnuTroveImplPrimeFinder_nextPrimeWithInt_(LShift32([self capacity], 1)) : [self capacity];
    [self rehashWithInt:newCapacity];
    [self computeMaxSizeWithInt:[self capacity]];
  }
}

- (jint)calculateGrownCapacity {
  return LShift32([self capacity], 1);
}

- (void)writeExternalWithJavaIoObjectOutput:(id<JavaIoObjectOutput>)outArg {
  [((id<JavaIoObjectOutput>) nil_chk(outArg)) writeByteWithInt:0];
  [outArg writeFloatWithFloat:_loadFactor_];
  [outArg writeFloatWithFloat:_autoCompactionFactor_];
}

- (void)readExternalWithJavaIoObjectInput:(id<JavaIoObjectInput>)inArg {
  [((id<JavaIoObjectInput>) nil_chk(inArg)) readByte];
  jfloat old_factor = _loadFactor_;
  _loadFactor_ = [inArg readFloat];
  _autoCompactionFactor_ = [inArg readFloat];
  if (old_factor != _loadFactor_) {
    [self setUpWithInt:J2ObjCFpToInt(JavaLangMath_ceilWithDouble_(GnuTroveImplHashTHash_DEFAULT_CAPACITY / _loadFactor_))];
  }
}

- (void)copyAllFieldsTo:(GnuTroveImplHashTHash *)other {
  [super copyAllFieldsTo:other];
  other->_size_ = _size_;
  other->_free_ = _free_;
  other->_loadFactor_ = _loadFactor_;
  other->_maxSize_ = _maxSize_;
  other->_autoCompactRemovesRemaining_ = _autoCompactRemovesRemaining_;
  other->_autoCompactionFactor_ = _autoCompactionFactor_;
  other->_autoCompactTemporaryDisable_ = _autoCompactTemporaryDisable_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "THash", NULL, 0x1, NULL },
    { "initWithInt:", "THash", NULL, 0x1, NULL },
    { "initWithInt:withFloat:", "THash", NULL, 0x1, NULL },
    { "isEmpty", NULL, "Z", 0x1, NULL },
    { "size", NULL, "I", 0x1, NULL },
    { "capacity", NULL, "I", 0x401, NULL },
    { "ensureCapacityWithInt:", "ensureCapacity", "V", 0x1, NULL },
    { "compact", NULL, "V", 0x1, NULL },
    { "setAutoCompactionFactorWithFloat:", "setAutoCompactionFactor", "V", 0x1, NULL },
    { "getAutoCompactionFactor", NULL, "F", 0x1, NULL },
    { "trimToSize", NULL, "V", 0x11, NULL },
    { "removeAtWithInt:", "removeAt", "V", 0x4, NULL },
    { "clear", NULL, "V", 0x1, NULL },
    { "setUpWithInt:", "setUp", "I", 0x4, NULL },
    { "rehashWithInt:", "rehash", "V", 0x404, NULL },
    { "tempDisableAutoCompaction", NULL, "V", 0x1, NULL },
    { "reenableAutoCompactionWithBoolean:", "reenableAutoCompaction", "V", 0x1, NULL },
    { "computeMaxSizeWithInt:", "computeMaxSize", "V", 0x4, NULL },
    { "computeNextAutoCompactionAmountWithInt:", "computeNextAutoCompactionAmount", "V", 0x4, NULL },
    { "postInsertHookWithBoolean:", "postInsertHook", "V", 0x14, NULL },
    { "calculateGrownCapacity", NULL, "I", 0x4, NULL },
    { "writeExternalWithJavaIoObjectOutput:", "writeExternal", "V", 0x1, "Ljava.io.IOException;" },
    { "readExternalWithJavaIoObjectInput:", "readExternal", "V", 0x1, "Ljava.io.IOException;Ljava.lang.ClassNotFoundException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x18, "J", NULL, .constantValue.asLong = GnuTroveImplHashTHash_serialVersionUID },
    { "DEFAULT_LOAD_FACTOR_", NULL, 0x1c, "F", NULL, .constantValue.asFloat = GnuTroveImplHashTHash_DEFAULT_LOAD_FACTOR },
    { "DEFAULT_CAPACITY_", NULL, 0x1c, "I", NULL, .constantValue.asInt = GnuTroveImplHashTHash_DEFAULT_CAPACITY },
    { "_size_", NULL, 0x84, "I", NULL,  },
    { "_free_", NULL, 0x84, "I", NULL,  },
    { "_loadFactor_", NULL, 0x4, "F", NULL,  },
    { "_maxSize_", NULL, 0x4, "I", NULL,  },
    { "_autoCompactRemovesRemaining_", NULL, 0x4, "I", NULL,  },
    { "_autoCompactionFactor_", NULL, 0x4, "F", NULL,  },
    { "_autoCompactTemporaryDisable_", NULL, 0x84, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _GnuTroveImplHashTHash = { 1, "THash", "gnu.trove.impl.hash", NULL, 0x401, 23, methods, 10, fields, 0, NULL};
  return &_GnuTroveImplHashTHash;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GnuTroveImplHashTHash)