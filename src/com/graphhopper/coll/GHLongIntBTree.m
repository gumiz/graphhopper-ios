//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/coll/GHLongIntBTree.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/coll/GHLongIntBTree.h"
#include "com/graphhopper/util/Helper.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "org/slf4j/Logger.h"
#include "org/slf4j/LoggerFactory.h"

__attribute__((unused)) static jint GHLongIntBTree_getEntries(GHLongIntBTree *self);

@interface GHLongIntBTree () {
 @public
  jint noNumberValue_;
  id<OrgSlf4jLogger> logger_;
  jlong size_;
  jint maxLeafEntries_;
  jint initLeafSize_;
  jint splitIndex_;
  jfloat factor_;
  jint height__;
  GHLongIntBTree_BTreeEntry *root_;
}

- (jint)getEntries;
@end

J2OBJC_FIELD_SETTER(GHLongIntBTree, logger_, id<OrgSlf4jLogger>)
J2OBJC_FIELD_SETTER(GHLongIntBTree, root_, GHLongIntBTree_BTreeEntry *)

@interface GHLongIntBTree_BTreeEntry () {
 @public
  GHLongIntBTree *this$0_;
}
@end

J2OBJC_FIELD_SETTER(GHLongIntBTree_BTreeEntry, this$0_, GHLongIntBTree *)

@implementation GHLongIntBTree

- (instancetype)initWithInt:(jint)maxLeafEntries {
  if (self = [super init]) {
    noNumberValue_ = -1;
    GHLongIntBTree_set_logger_(self, OrgSlf4jLoggerFactory_getLoggerWithIOSClass_([self getClass]));
    self->maxLeafEntries_ = maxLeafEntries;
    if (maxLeafEntries < 1) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"illegal maxLeafEntries:", maxLeafEntries)] autorelease];
    }
    if (maxLeafEntries % 2 == 0) {
      maxLeafEntries++;
    }
    splitIndex_ = maxLeafEntries / 2;
    if (maxLeafEntries < 10) {
      factor_ = 2;
      initLeafSize_ = 1;
    }
    else if (maxLeafEntries < 20) {
      factor_ = 2;
      initLeafSize_ = 4;
    }
    else {
      factor_ = 1.7f;
      initLeafSize_ = maxLeafEntries / 10;
    }
    [self clear];
  }
  return self;
}

+ (jint)binarySearchWithLongArray:(IOSLongArray *)keys
                          withInt:(jint)start
                          withInt:(jint)len
                         withLong:(jlong)key {
  return GHLongIntBTree_binarySearchWithLongArray_withInt_withInt_withLong_(keys, start, len, key);
}

- (jint)putWithLong:(jlong)key
            withInt:(jint)value {
  if (key == noNumberValue_) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$J", @"Illegal key ", key)] autorelease];
  }
  GHLongIntBTree_ReturnValue *rv = [((GHLongIntBTree_BTreeEntry *) nil_chk(root_)) putWithLong:key withInt:value];
  if (((GHLongIntBTree_ReturnValue *) nil_chk(rv))->tree_ != nil) {
    height__++;
    GHLongIntBTree_set_root_(self, rv->tree_);
  }
  if (rv->oldValue_ == noNumberValue_) {
    size_++;
    if (size_ % 1000000 == 0) [self optimize];
  }
  return rv->oldValue_;
}

- (jint)getWithLong:(jlong)key {
  return [((GHLongIntBTree_BTreeEntry *) nil_chk(root_)) getWithLong:key];
}

- (jint)height {
  return height__;
}

- (jlong)getSize {
  return size_;
}

- (jint)getMemoryUsage {
  return JavaLangMath_roundWithFloat_([((GHLongIntBTree_BTreeEntry *) nil_chk(root_)) getCapacity] / Helper_MB);
}

- (void)clear {
  size_ = 0;
  height__ = 1;
  GHLongIntBTree_setAndConsume_root_(self, [[GHLongIntBTree_BTreeEntry alloc] initWithGHLongIntBTree:self withInt:initLeafSize_ withBoolean:YES]);
}

- (jint)getNoNumberValue {
  return noNumberValue_;
}

- (void)flush {
  @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"not supported yet"] autorelease];
}

- (jint)getEntries {
  return GHLongIntBTree_getEntries(self);
}

- (void)optimize {
  if ([self getSize] > 10000) {
    [((GHLongIntBTree_BTreeEntry *) nil_chk(root_)) compact];
  }
}

- (NSString *)description {
  return JreStrcat("$I$I", @"Height:", [self height], @", entries:", GHLongIntBTree_getEntries(self));
}

- (void)print {
  [((id<OrgSlf4jLogger>) nil_chk(logger_)) infoWithNSString:[((GHLongIntBTree_BTreeEntry *) nil_chk(root_)) toStringWithInt:1]];
}

- (void)dealloc {
  RELEASE_(logger_);
  RELEASE_(root_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(GHLongIntBTree *)other {
  [super copyAllFieldsTo:other];
  other->noNumberValue_ = noNumberValue_;
  GHLongIntBTree_set_logger_(other, logger_);
  other->size_ = size_;
  other->maxLeafEntries_ = maxLeafEntries_;
  other->initLeafSize_ = initLeafSize_;
  other->splitIndex_ = splitIndex_;
  other->factor_ = factor_;
  other->height__ = height__;
  GHLongIntBTree_set_root_(other, root_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "GHLongIntBTree", NULL, 0x1, NULL },
    { "binarySearchWithLongArray:withInt:withInt:withLong:", "binarySearch", "I", 0x8, NULL },
    { "putWithLong:withInt:", "put", "I", 0x1, NULL },
    { "getWithLong:", "get", "I", 0x1, NULL },
    { "height", NULL, "I", 0x0, NULL },
    { "getSize", NULL, "J", 0x1, NULL },
    { "getMemoryUsage", NULL, "I", 0x1, NULL },
    { "clear", NULL, "V", 0x0, NULL },
    { "getNoNumberValue", NULL, "I", 0x0, NULL },
    { "flush", NULL, "V", 0x0, NULL },
    { "getEntries", NULL, "I", 0x2, NULL },
    { "optimize", NULL, "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "print", NULL, "V", 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "noNumberValue_", NULL, 0x12, "I", NULL,  },
    { "logger_", NULL, 0x2, "Lorg.slf4j.Logger;", NULL,  },
    { "size_", NULL, 0x2, "J", NULL,  },
    { "maxLeafEntries_", NULL, 0x2, "I", NULL,  },
    { "initLeafSize_", NULL, 0x2, "I", NULL,  },
    { "splitIndex_", NULL, 0x2, "I", NULL,  },
    { "factor_", NULL, 0x2, "F", NULL,  },
    { "height__", "height", 0x2, "I", NULL,  },
    { "root_", NULL, 0x2, "Lcom.graphhopper.coll.GHLongIntBTree$BTreeEntry;", NULL,  },
  };
  static const J2ObjcClassInfo _GHLongIntBTree = { 1, "GHLongIntBTree", "com.graphhopper.coll", NULL, 0x1, 14, methods, 9, fields, 0, NULL};
  return &_GHLongIntBTree;
}

@end

jint GHLongIntBTree_binarySearchWithLongArray_withInt_withInt_withLong_(IOSLongArray *keys, jint start, jint len, jlong key) {
  GHLongIntBTree_init();
  jint high = start + len, low = start - 1, guess;
  while (high - low > 1) {
    guess = URShift32((high + low), 1);
    jlong guessedKey = IOSLongArray_Get(nil_chk(keys), guess);
    if (guessedKey < key) {
      low = guess;
    }
    else {
      high = guess;
    }
  }
  if (high == start + len) {
    return ~(start + len);
  }
  jlong highKey = IOSLongArray_Get(nil_chk(keys), high);
  if (highKey == key) {
    return high;
  }
  else {
    return ~high;
  }
}

jint GHLongIntBTree_getEntries(GHLongIntBTree *self) {
  return [((GHLongIntBTree_BTreeEntry *) nil_chk(self->root_)) getEntries];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GHLongIntBTree)

@implementation GHLongIntBTree_ReturnValue

- (instancetype)init {
  return [super init];
}

- (instancetype)initWithInt:(jint)oldValue {
  if (self = [super init]) {
    self->oldValue_ = oldValue;
  }
  return self;
}

- (void)dealloc {
  RELEASE_(tree_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(GHLongIntBTree_ReturnValue *)other {
  [super copyAllFieldsTo:other];
  other->oldValue_ = oldValue_;
  GHLongIntBTree_ReturnValue_set_tree_(other, tree_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ReturnValue", NULL, 0x1, NULL },
    { "initWithInt:", "ReturnValue", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "oldValue_", NULL, 0x0, "I", NULL,  },
    { "tree_", NULL, 0x0, "Lcom.graphhopper.coll.GHLongIntBTree$BTreeEntry;", NULL,  },
  };
  static const J2ObjcClassInfo _GHLongIntBTree_ReturnValue = { 1, "ReturnValue", "com.graphhopper.coll", "GHLongIntBTree", 0x8, 2, methods, 2, fields, 0, NULL};
  return &_GHLongIntBTree_ReturnValue;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GHLongIntBTree_ReturnValue)

@implementation GHLongIntBTree_BTreeEntry

- (instancetype)initWithGHLongIntBTree:(GHLongIntBTree *)outer$
                               withInt:(jint)tmpSize
                           withBoolean:(jboolean)leaf {
  GHLongIntBTree_BTreeEntry_set_this$0_(self, outer$);
  if (self = [super init]) {
    self->isLeaf_ = leaf;
    GHLongIntBTree_BTreeEntry_setAndConsume_keys_(self, [IOSLongArray newArrayWithLength:tmpSize]);
    GHLongIntBTree_BTreeEntry_setAndConsume_values_(self, [IOSIntArray newArrayWithLength:tmpSize]);
    if (!isLeaf_) {
      GHLongIntBTree_BTreeEntry_setAndConsume_children_(self, [IOSObjectArray newArrayWithLength:tmpSize + 1 type:GHLongIntBTree_BTreeEntry_class_()]);
    }
  }
  return self;
}

- (GHLongIntBTree_ReturnValue *)putWithLong:(jlong)key
                                    withInt:(jint)newValue {
  jint index = GHLongIntBTree_binarySearchWithLongArray_withInt_withInt_withLong_(keys_, 0, entrySize_, key);
  if (index >= 0) {
    jint oldValue = IOSIntArray_Get(nil_chk(values_), index);
    *IOSIntArray_GetRef(values_, index) = newValue;
    return [[[GHLongIntBTree_ReturnValue alloc] initWithInt:oldValue] autorelease];
  }
  index = ~index;
  GHLongIntBTree_ReturnValue *downTreeRV;
  if (isLeaf_ || IOSObjectArray_Get(nil_chk(children_), index) == nil) {
    downTreeRV = [[[GHLongIntBTree_ReturnValue alloc] initWithInt:this$0_->noNumberValue_] autorelease];
    GHLongIntBTree_ReturnValue_set_tree_(downTreeRV, [self checkSplitEntry]);
    if (downTreeRV->tree_ == nil) {
      [self insertKeyValueWithInt:index withLong:key withInt:newValue];
    }
    else if (index <= this$0_->splitIndex_) {
      [((GHLongIntBTree_BTreeEntry *) nil_chk(IOSObjectArray_Get(nil_chk(downTreeRV->tree_->children_), 0))) insertKeyValueWithInt:index withLong:key withInt:newValue];
    }
    else {
      [((GHLongIntBTree_BTreeEntry *) nil_chk(IOSObjectArray_Get(nil_chk(downTreeRV->tree_->children_), 1))) insertKeyValueWithInt:index - this$0_->splitIndex_ - 1 withLong:key withInt:newValue];
    }
    return downTreeRV;
  }
  downTreeRV = [((GHLongIntBTree_BTreeEntry *) nil_chk(IOSObjectArray_Get(nil_chk(children_), index))) putWithLong:key withInt:newValue];
  if (((GHLongIntBTree_ReturnValue *) nil_chk(downTreeRV))->oldValue_ != this$0_->noNumberValue_) {
    return downTreeRV;
  }
  if (downTreeRV->tree_ != nil) {
    GHLongIntBTree_BTreeEntry *returnTree, *downTree = returnTree = [self checkSplitEntry];
    if (downTree == nil) {
      [self insertTreeWithInt:index withGHLongIntBTree_BTreeEntry:downTreeRV->tree_];
    }
    else if (index <= this$0_->splitIndex_) {
      [((GHLongIntBTree_BTreeEntry *) nil_chk(IOSObjectArray_Get(downTree->children_, 0))) insertTreeWithInt:index withGHLongIntBTree_BTreeEntry:downTreeRV->tree_];
    }
    else {
      [((GHLongIntBTree_BTreeEntry *) nil_chk(IOSObjectArray_Get(downTree->children_, 1))) insertTreeWithInt:index - this$0_->splitIndex_ - 1 withGHLongIntBTree_BTreeEntry:downTreeRV->tree_];
    }
    GHLongIntBTree_ReturnValue_set_tree_(downTreeRV, returnTree);
  }
  return downTreeRV;
}

- (GHLongIntBTree_BTreeEntry *)checkSplitEntry {
  if (entrySize_ < this$0_->maxLeafEntries_) {
    return nil;
  }
  jint count = entrySize_ - this$0_->splitIndex_ - 1;
  GHLongIntBTree_BTreeEntry *newRightChild = [[[GHLongIntBTree_BTreeEntry alloc] initWithGHLongIntBTree:this$0_ withInt:JavaLangMath_maxWithInt_withInt_(this$0_->initLeafSize_, count) withBoolean:isLeaf_] autorelease];
  [self copy__WithGHLongIntBTree_BTreeEntry:self withGHLongIntBTree_BTreeEntry:newRightChild withInt:this$0_->splitIndex_ + 1 withInt:count];
  GHLongIntBTree_BTreeEntry *newLeftChild = [[[GHLongIntBTree_BTreeEntry alloc] initWithGHLongIntBTree:this$0_ withInt:JavaLangMath_maxWithInt_withInt_(this$0_->initLeafSize_, this$0_->splitIndex_) withBoolean:isLeaf_] autorelease];
  [self copy__WithGHLongIntBTree_BTreeEntry:self withGHLongIntBTree_BTreeEntry:newLeftChild withInt:0 withInt:this$0_->splitIndex_];
  GHLongIntBTree_BTreeEntry *newTree = [[[GHLongIntBTree_BTreeEntry alloc] initWithGHLongIntBTree:this$0_ withInt:1 withBoolean:NO] autorelease];
  newTree->entrySize_ = 1;
  *IOSLongArray_GetRef(nil_chk(newTree->keys_), 0) = IOSLongArray_Get(self->keys_, this$0_->splitIndex_);
  *IOSIntArray_GetRef(nil_chk(newTree->values_), 0) = IOSIntArray_Get(self->values_, this$0_->splitIndex_);
  IOSObjectArray_Set(nil_chk(newTree->children_), 0, newLeftChild);
  IOSObjectArray_Set(newTree->children_, 1, newRightChild);
  return newTree;
}

- (void)copy__WithGHLongIntBTree_BTreeEntry:(GHLongIntBTree_BTreeEntry *)fromChild
              withGHLongIntBTree_BTreeEntry:(GHLongIntBTree_BTreeEntry *)toChild
                                    withInt:(jint)from
                                    withInt:(jint)count {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(((GHLongIntBTree_BTreeEntry *) nil_chk(fromChild))->keys_, from, ((GHLongIntBTree_BTreeEntry *) nil_chk(toChild))->keys_, 0, count);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(fromChild->values_, from, toChild->values_, 0, count);
  if (!fromChild->isLeaf_) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(fromChild->children_, from, toChild->children_, 0, count + 1);
  }
  toChild->entrySize_ = count;
}

- (void)insertKeyValueWithInt:(jint)index
                     withLong:(jlong)key
                      withInt:(jint)newValue {
  [self ensureSizeWithInt:entrySize_ + 1];
  jint count = entrySize_ - index;
  if (count > 0) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(keys_, index, keys_, index + 1, count);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(values_, index, values_, index + 1, count);
    if (!isLeaf_) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(children_, index + 1, children_, index + 2, count);
    }
  }
  *IOSLongArray_GetRef(nil_chk(keys_), index) = key;
  *IOSIntArray_GetRef(nil_chk(values_), index) = newValue;
  entrySize_++;
}

- (void)insertTreeWithInt:(jint)index
withGHLongIntBTree_BTreeEntry:(GHLongIntBTree_BTreeEntry *)tree {
  [self insertKeyValueWithInt:index withLong:IOSLongArray_Get(nil_chk(((GHLongIntBTree_BTreeEntry *) nil_chk(tree))->keys_), 0) withInt:IOSIntArray_Get(nil_chk(tree->values_), 0)];
  if (!isLeaf_) {
    IOSObjectArray_Set(nil_chk(children_), index, IOSObjectArray_Get(tree->children_, 0));
    IOSObjectArray_Set(children_, index + 1, IOSObjectArray_Get(tree->children_, 1));
  }
}

- (jint)getWithLong:(jlong)key {
  jint index = GHLongIntBTree_binarySearchWithLongArray_withInt_withInt_withLong_(keys_, 0, entrySize_, key);
  if (index >= 0) {
    return IOSIntArray_Get(nil_chk(values_), index);
  }
  index = ~index;
  if (isLeaf_ || IOSObjectArray_Get(nil_chk(children_), index) == nil) {
    return this$0_->noNumberValue_;
  }
  return [((GHLongIntBTree_BTreeEntry *) nil_chk(IOSObjectArray_Get(nil_chk(children_), index))) getWithLong:key];
}

- (jlong)getCapacity {
  jlong cap = ((IOSLongArray *) nil_chk(keys_))->size_ * (8 + 4) + 3 * 12 + 4 + 1;
  if (!isLeaf_) {
    cap += ((IOSObjectArray *) nil_chk(children_))->size_ * 4;
    for (jint i = 0; i < children_->size_; i++) {
      if (IOSObjectArray_Get(children_, i) != nil) {
        cap += [((GHLongIntBTree_BTreeEntry *) nil_chk(IOSObjectArray_Get(children_, i))) getCapacity];
      }
    }
  }
  return cap;
}

- (jint)getEntries {
  jint entries = 1;
  if (!isLeaf_) {
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(children_))->size_; i++) {
      if (IOSObjectArray_Get(children_, i) != nil) {
        entries += [((GHLongIntBTree_BTreeEntry *) nil_chk(IOSObjectArray_Get(children_, i))) getEntries];
      }
    }
  }
  return entries;
}

- (void)ensureSizeWithInt:(jint)size {
  if (size <= ((IOSLongArray *) nil_chk(keys_))->size_) {
    return;
  }
  jint newSize = JavaLangMath_minWithInt_withInt_(this$0_->maxLeafEntries_, JavaLangMath_maxWithInt_withInt_(size + 1, JavaLangMath_roundWithFloat_(size * this$0_->factor_)));
  GHLongIntBTree_BTreeEntry_set_keys_(self, JavaUtilArrays_copyOfWithLongArray_withInt_(keys_, newSize));
  GHLongIntBTree_BTreeEntry_set_values_(self, JavaUtilArrays_copyOfWithIntArray_withInt_(values_, newSize));
  if (!isLeaf_) {
    GHLongIntBTree_BTreeEntry_set_children_(self, JavaUtilArrays_copyOfWithNSObjectArray_withInt_(children_, newSize + 1));
  }
}

- (void)compact {
  jint tolerance = 1;
  if (entrySize_ + tolerance < ((IOSLongArray *) nil_chk(keys_))->size_) {
    GHLongIntBTree_BTreeEntry_set_keys_(self, JavaUtilArrays_copyOfWithLongArray_withInt_(keys_, entrySize_));
    GHLongIntBTree_BTreeEntry_set_values_(self, JavaUtilArrays_copyOfWithIntArray_withInt_(values_, entrySize_));
    if (!isLeaf_) {
      GHLongIntBTree_BTreeEntry_set_children_(self, JavaUtilArrays_copyOfWithNSObjectArray_withInt_(children_, entrySize_ + 1));
    }
  }
  if (!isLeaf_) {
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(children_))->size_; i++) {
      if (IOSObjectArray_Get(children_, i) != nil) {
        [((GHLongIntBTree_BTreeEntry *) nil_chk(IOSObjectArray_Get(children_, i))) compact];
      }
    }
  }
}

- (NSString *)toStringWithInt:(jint)height {
  NSString *str = JreStrcat("I$", height, @": ");
  for (jint i = 0; i < entrySize_; i++) {
    if (i > 0) {
      str = JreStrcat("$C", str, ',');
    }
    if (IOSLongArray_Get(nil_chk(keys_), i) == this$0_->noNumberValue_) {
      str = JreStrcat("$C", str, '-');
    }
    else {
      str = JreStrcat("$J", str, IOSLongArray_Get(keys_, i));
    }
  }
  str = JreStrcat("$C", str, 0x000a);
  if (!isLeaf_) {
    for (jint i = 0; i < entrySize_ + 1; i++) {
      if (IOSObjectArray_Get(nil_chk(children_), i) != nil) {
        str = JreStrcat("$$", str, JreStrcat("$$", [((GHLongIntBTree_BTreeEntry *) nil_chk(IOSObjectArray_Get(children_, i))) toStringWithInt:height + 1], @"| "));
      }
    }
  }
  return str;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(keys_);
  RELEASE_(values_);
  RELEASE_(children_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(GHLongIntBTree_BTreeEntry *)other {
  [super copyAllFieldsTo:other];
  GHLongIntBTree_BTreeEntry_set_this$0_(other, this$0_);
  other->entrySize_ = entrySize_;
  GHLongIntBTree_BTreeEntry_set_keys_(other, keys_);
  GHLongIntBTree_BTreeEntry_set_values_(other, values_);
  GHLongIntBTree_BTreeEntry_set_children_(other, children_);
  other->isLeaf_ = isLeaf_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithGHLongIntBTree:withInt:withBoolean:", "BTreeEntry", NULL, 0x1, NULL },
    { "putWithLong:withInt:", "put", "Lcom.graphhopper.coll.GHLongIntBTree$ReturnValue;", 0x0, NULL },
    { "checkSplitEntry", NULL, "Lcom.graphhopper.coll.GHLongIntBTree$BTreeEntry;", 0x0, NULL },
    { "copy__WithGHLongIntBTree_BTreeEntry:withGHLongIntBTree_BTreeEntry:withInt:withInt:", "copy", "V", 0x0, NULL },
    { "insertKeyValueWithInt:withLong:withInt:", "insertKeyValue", "V", 0x0, NULL },
    { "insertTreeWithInt:withGHLongIntBTree_BTreeEntry:", "insertTree", "V", 0x0, NULL },
    { "getWithLong:", "get", "I", 0x0, NULL },
    { "getCapacity", NULL, "J", 0x0, NULL },
    { "getEntries", NULL, "I", 0x0, NULL },
    { "ensureSizeWithInt:", "ensureSize", "V", 0x0, NULL },
    { "compact", NULL, "V", 0x0, NULL },
    { "toStringWithInt:", "toString", "Ljava.lang.String;", 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.graphhopper.coll.GHLongIntBTree;", NULL,  },
    { "entrySize_", NULL, 0x0, "I", NULL,  },
    { "keys_", NULL, 0x0, "[J", NULL,  },
    { "values_", NULL, 0x0, "[I", NULL,  },
    { "children_", NULL, 0x0, "[Lcom.graphhopper.coll.GHLongIntBTree$BTreeEntry;", NULL,  },
    { "isLeaf_", NULL, 0x0, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _GHLongIntBTree_BTreeEntry = { 1, "BTreeEntry", "com.graphhopper.coll", "GHLongIntBTree", 0x0, 12, methods, 6, fields, 0, NULL};
  return &_GHLongIntBTree_BTreeEntry;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GHLongIntBTree_BTreeEntry)