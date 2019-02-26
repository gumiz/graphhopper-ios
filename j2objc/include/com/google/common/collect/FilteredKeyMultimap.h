//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/guava/sources/com/google/common/collect/FilteredKeyMultimap.java
//

#include "J2ObjC_header.h"

#if !ComGoogleCommonCollectFilteredKeyMultimap_RESTRICT
#define ComGoogleCommonCollectFilteredKeyMultimap_INCLUDE_ALL 1
#endif
#undef ComGoogleCommonCollectFilteredKeyMultimap_RESTRICT
#if !defined (_ComGoogleCommonCollectFilteredKeyMultimap_) && (ComGoogleCommonCollectFilteredKeyMultimap_INCLUDE_ALL || ComGoogleCommonCollectFilteredKeyMultimap_INCLUDE)
#define _ComGoogleCommonCollectFilteredKeyMultimap_

@protocol ComGoogleCommonBasePredicate;
@protocol ComGoogleCommonCollectMultimap;
@protocol ComGoogleCommonCollectMultiset;
@protocol JavaUtilCollection;
@protocol JavaUtilIterator;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

#define ComGoogleCommonCollectFilteredMultimap_RESTRICT 1
#define ComGoogleCommonCollectFilteredMultimap_INCLUDE 1
#include "com/google/common/collect/FilteredMultimap.h"


@interface ComGoogleCommonCollectFilteredKeyMultimap : ComGoogleCommonCollectFilteredMultimap {
 @public
  id<ComGoogleCommonBasePredicate> keyPredicate_;
}

- (instancetype)initWithComGoogleCommonCollectMultimap:(id<ComGoogleCommonCollectMultimap>)unfiltered
                      withComGoogleCommonBasePredicate:(id<ComGoogleCommonBasePredicate>)keyPredicate;

- (id<ComGoogleCommonBasePredicate>)entryPredicate;

- (jint)size;

- (jboolean)containsKeyWithId:(id)key;

- (id<JavaUtilCollection>)removeAllWithId:(id)key;

- (id<JavaUtilCollection>)unmodifiableEmptyCollection;

- (void)clear;

- (id<JavaUtilSet>)createKeySet;

- (id<JavaUtilCollection>)getWithId:(id)key;

- (id<JavaUtilIterator>)entryIterator;

- (id<JavaUtilCollection>)createEntries;

- (id<JavaUtilMap>)createAsMap;

- (id<ComGoogleCommonCollectMultiset>)createKeys;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectFilteredKeyMultimap)

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectFilteredKeyMultimap, keyPredicate_, id<ComGoogleCommonBasePredicate>)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectFilteredKeyMultimap)
#if !defined (_ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingSet_) && (ComGoogleCommonCollectFilteredKeyMultimap_INCLUDE_ALL || ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingSet_INCLUDE)
#define _ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingSet_

@protocol JavaUtilCollection;
@protocol JavaUtilSet;

#define ComGoogleCommonCollectForwardingSet_RESTRICT 1
#define ComGoogleCommonCollectForwardingSet_INCLUDE 1
#include "com/google/common/collect/ForwardingSet.h"


@interface ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingSet : ComGoogleCommonCollectForwardingSet {
 @public
  id key_;
}

- (instancetype)initWithId:(id)key;

- (jboolean)addWithId:(id)element;

- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

- (id<JavaUtilSet>)delegate;


@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingSet)

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingSet, key_, id)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingSet)
#if !defined (_ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingList_) && (ComGoogleCommonCollectFilteredKeyMultimap_INCLUDE_ALL || ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingList_INCLUDE)
#define _ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingList_

@protocol JavaUtilCollection;
@protocol JavaUtilList;

#define ComGoogleCommonCollectForwardingList_RESTRICT 1
#define ComGoogleCommonCollectForwardingList_INCLUDE 1
#include "com/google/common/collect/ForwardingList.h"


@interface ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingList : ComGoogleCommonCollectForwardingList {
 @public
  id key_;
}

- (instancetype)initWithId:(id)key;

- (jboolean)addWithId:(id)v;

- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

- (void)addWithInt:(jint)index
            withId:(id)element;

- (jboolean)addAllWithInt:(jint)index
   withJavaUtilCollection:(id<JavaUtilCollection>)elements;

- (id<JavaUtilList>)delegate;


@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingList)

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingList, key_, id)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectFilteredKeyMultimap_AddRejectingList)
#if !defined (_ComGoogleCommonCollectFilteredKeyMultimap_createEntries_FilteredKeyMultimapEntries_) && (ComGoogleCommonCollectFilteredKeyMultimap_INCLUDE_ALL || ComGoogleCommonCollectFilteredKeyMultimap_createEntries_FilteredKeyMultimapEntries_INCLUDE)
#define _ComGoogleCommonCollectFilteredKeyMultimap_createEntries_FilteredKeyMultimapEntries_

@class ComGoogleCommonCollectFilteredKeyMultimap;
@protocol ComGoogleCommonCollectMultimap;
@protocol JavaUtilCollection;
@protocol JavaUtilIterator;

#define ComGoogleCommonCollectMultimaps_RESTRICT 1
#define ComGoogleCommonCollectMultimaps_Entries_INCLUDE 1
#include "com/google/common/collect/Multimaps.h"


@interface ComGoogleCommonCollectFilteredKeyMultimap_createEntries_FilteredKeyMultimapEntries : ComGoogleCommonCollectMultimaps_Entries {
}

- (id<ComGoogleCommonCollectMultimap>)multimap;

- (id<JavaUtilIterator>)iterator;

- (jboolean)removeWithId:(id)o;

- (jboolean)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;

- (jboolean)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;

- (instancetype)initWithComGoogleCommonCollectFilteredKeyMultimap:(ComGoogleCommonCollectFilteredKeyMultimap *)outer$;


@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectFilteredKeyMultimap_createEntries_FilteredKeyMultimapEntries)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectFilteredKeyMultimap_createEntries_FilteredKeyMultimapEntries)
