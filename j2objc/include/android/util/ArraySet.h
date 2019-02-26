//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/frameworks/base/core/java/android/util/ArraySet.java
//

#ifndef _AndroidUtilArraySet_H_
#define _AndroidUtilArraySet_H_

@class IOSIntArray;
@class IOSObjectArray;
@protocol JavaUtilIterator;
@protocol JavaUtilMap;

#include "J2ObjC_header.h"
#include "android/util/MapCollections.h"
#include "java/util/Collection.h"
#include "java/util/Set.h"

#define AndroidUtilArraySet_BASE_SIZE 4
#define AndroidUtilArraySet_CACHE_SIZE 10
#define AndroidUtilArraySet_DEBUG NO

@interface AndroidUtilArraySet : NSObject < JavaUtilCollection, JavaUtilSet > {
 @public
  IOSIntArray *mHashes_;
  IOSObjectArray *mArray_;
  jint mSize_;
  AndroidUtilMapCollections *mCollections_;
}

- (instancetype)init;

- (instancetype)initWithInt:(jint)capacity;

- (instancetype)initWithAndroidUtilArraySet:(AndroidUtilArraySet *)set;

- (void)clear;

- (void)ensureCapacityWithInt:(jint)minimumCapacity;

- (jboolean)containsWithId:(id)key;

- (id)valueAtWithInt:(jint)index;

- (jboolean)isEmpty;

- (jboolean)addWithId:(id)value;

- (void)putAllWithAndroidUtilArraySet:(AndroidUtilArraySet *)array;

- (jboolean)removeWithId:(id)object;

- (id)removeAtWithInt:(jint)index;

- (jint)size;

- (IOSObjectArray *)toArray;

- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)array;

- (jboolean)isEqual:(id)object;

- (NSUInteger)hash;

- (NSString *)description;

- (id<JavaUtilIterator>)iterator;

- (jboolean)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

- (jboolean)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

- (jboolean)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;


@end

J2OBJC_EMPTY_STATIC_INIT(AndroidUtilArraySet)

J2OBJC_FIELD_SETTER(AndroidUtilArraySet, mHashes_, IOSIntArray *)
J2OBJC_FIELD_SETTER(AndroidUtilArraySet, mArray_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(AndroidUtilArraySet, mCollections_, AndroidUtilMapCollections *)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(AndroidUtilArraySet, DEBUG, jboolean)

FOUNDATION_EXPORT NSString *AndroidUtilArraySet_TAG_;
J2OBJC_STATIC_FIELD_GETTER(AndroidUtilArraySet, TAG_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(AndroidUtilArraySet, BASE_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(AndroidUtilArraySet, CACHE_SIZE, jint)

FOUNDATION_EXPORT IOSObjectArray *AndroidUtilArraySet_mBaseCache_;
J2OBJC_STATIC_FIELD_GETTER(AndroidUtilArraySet, mBaseCache_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(AndroidUtilArraySet, mBaseCache_, IOSObjectArray *)

FOUNDATION_EXPORT jint AndroidUtilArraySet_mBaseCacheSize_;
J2OBJC_STATIC_FIELD_GETTER(AndroidUtilArraySet, mBaseCacheSize_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(AndroidUtilArraySet, mBaseCacheSize_, jint)

FOUNDATION_EXPORT IOSObjectArray *AndroidUtilArraySet_mTwiceBaseCache_;
J2OBJC_STATIC_FIELD_GETTER(AndroidUtilArraySet, mTwiceBaseCache_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(AndroidUtilArraySet, mTwiceBaseCache_, IOSObjectArray *)

FOUNDATION_EXPORT jint AndroidUtilArraySet_mTwiceBaseCacheSize_;
J2OBJC_STATIC_FIELD_GETTER(AndroidUtilArraySet, mTwiceBaseCacheSize_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(AndroidUtilArraySet, mTwiceBaseCacheSize_, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(AndroidUtilArraySet)

@interface AndroidUtilArraySet_getCollection_InteropMapCollections : AndroidUtilMapCollections {
}

- (jint)colGetSize;

- (id)colGetEntryWithInt:(jint)index
                 withInt:(jint)offset;

- (jint)colIndexOfKeyWithId:(id)key;

- (jint)colIndexOfValueWithId:(id)value;

- (id<JavaUtilMap>)colGetMap;

- (void)colPutWithId:(id)key
              withId:(id)value;

- (id)colSetValueWithInt:(jint)index
                  withId:(id)value;

- (void)colRemoveAtWithInt:(jint)index;

- (void)colClear;

- (instancetype)initWithAndroidUtilArraySet:(AndroidUtilArraySet *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidUtilArraySet_getCollection_InteropMapCollections)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(AndroidUtilArraySet_getCollection_InteropMapCollections)

#endif // _AndroidUtilArraySet_H_
