//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/coll/GHLongIntBTree.java
//

#ifndef _GHLongIntBTree_H_
#define _GHLongIntBTree_H_

@class GHLongIntBTree_BTreeEntry;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@protocol OrgSlf4jLogger;

#include "J2ObjC_header.h"
#include "com/graphhopper/coll/LongIntMap.h"

/**
 @brief An in-memory simple B-Tree.
 Later we'll use DataAccess to allow on-disc storage for very large data sets. Delete not supported. <p>
 @author Peter Karich
 */
@interface GHLongIntBTree : NSObject < LongIntMap > {
}

- (instancetype)initWithInt:(jint)maxLeafEntries;

+ (jint)binarySearchWithLongArray:(IOSLongArray *)keys
                          withInt:(jint)start
                          withInt:(jint)len
                         withLong:(jlong)key;

- (jint)putWithLong:(jlong)key
            withInt:(jint)value;

- (jint)getWithLong:(jlong)key;

- (jint)height;

- (jlong)getSize;

/**
 @return memory usage in MB
 */
- (jint)getMemoryUsage;

- (void)clear;

- (jint)getNoNumberValue;

- (void)flush;

- (void)optimize;

- (NSString *)description;

- (void)print;

@end

J2OBJC_EMPTY_STATIC_INIT(GHLongIntBTree)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT jint GHLongIntBTree_binarySearchWithLongArray_withInt_withInt_withLong_(IOSLongArray *keys, jint start, jint len, jlong key);
CF_EXTERN_C_END

typedef GHLongIntBTree ComGraphhopperCollGHLongIntBTree;

J2OBJC_TYPE_LITERAL_HEADER(GHLongIntBTree)

@interface GHLongIntBTree_ReturnValue : NSObject {
 @public
  jint oldValue_;
  GHLongIntBTree_BTreeEntry *tree_;
}

- (instancetype)init;

- (instancetype)initWithInt:(jint)oldValue;

@end

J2OBJC_EMPTY_STATIC_INIT(GHLongIntBTree_ReturnValue)

J2OBJC_FIELD_SETTER(GHLongIntBTree_ReturnValue, tree_, GHLongIntBTree_BTreeEntry *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GHLongIntBTree_ReturnValue)

@interface GHLongIntBTree_BTreeEntry : NSObject {
 @public
  jint entrySize_;
  IOSLongArray *keys_;
  IOSIntArray *values_;
  IOSObjectArray *children_;
  jboolean isLeaf_;
}

- (instancetype)initWithGHLongIntBTree:(GHLongIntBTree *)outer$
                               withInt:(jint)tmpSize
                           withBoolean:(jboolean)leaf;

/**
 @return the old value which was associated with the specified key or if no update it returns noNumberValue
 */
- (GHLongIntBTree_ReturnValue *)putWithLong:(jlong)key
                                    withInt:(jint)newValue;

/**
 @return null if nothing to do or a new sub tree if this tree capacity is no longer sufficient.
 */
- (GHLongIntBTree_BTreeEntry *)checkSplitEntry;

- (void)copy__WithGHLongIntBTree_BTreeEntry:(GHLongIntBTree_BTreeEntry *)fromChild
              withGHLongIntBTree_BTreeEntry:(GHLongIntBTree_BTreeEntry *)toChild
                                    withInt:(jint)from
                                    withInt:(jint)count OBJC_METHOD_FAMILY_NONE;

- (void)insertKeyValueWithInt:(jint)index
                     withLong:(jlong)key
                      withInt:(jint)newValue;

- (void)insertTreeWithInt:(jint)index
withGHLongIntBTree_BTreeEntry:(GHLongIntBTree_BTreeEntry *)tree;

- (jint)getWithLong:(jlong)key;

/**
 @return used bytes
 */
- (jlong)getCapacity;

- (jint)getEntries;

- (void)ensureSizeWithInt:(jint)size;

- (void)compact;

- (NSString *)toStringWithInt:(jint)height;

@end

J2OBJC_EMPTY_STATIC_INIT(GHLongIntBTree_BTreeEntry)

J2OBJC_FIELD_SETTER(GHLongIntBTree_BTreeEntry, keys_, IOSLongArray *)
J2OBJC_FIELD_SETTER(GHLongIntBTree_BTreeEntry, values_, IOSIntArray *)
J2OBJC_FIELD_SETTER(GHLongIntBTree_BTreeEntry, children_, IOSObjectArray *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GHLongIntBTree_BTreeEntry)

#endif // _GHLongIntBTree_H_
