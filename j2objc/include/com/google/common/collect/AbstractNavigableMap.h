//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/guava/sources/com/google/common/collect/AbstractNavigableMap.java
//

#include "J2ObjC_header.h"

#if !ComGoogleCommonCollectAbstractNavigableMap_RESTRICT
#define ComGoogleCommonCollectAbstractNavigableMap_INCLUDE_ALL 1
#endif
#undef ComGoogleCommonCollectAbstractNavigableMap_RESTRICT
#if !defined (_ComGoogleCommonCollectAbstractNavigableMap_) && (ComGoogleCommonCollectAbstractNavigableMap_INCLUDE_ALL || ComGoogleCommonCollectAbstractNavigableMap_INCLUDE)
#define _ComGoogleCommonCollectAbstractNavigableMap_

@protocol JavaUtilIterator;
@protocol JavaUtilMap_Entry;
@protocol JavaUtilNavigableSet;
@protocol JavaUtilSet;
@protocol JavaUtilSortedMap;

#define JavaUtilAbstractMap_RESTRICT 1
#define JavaUtilAbstractMap_INCLUDE 1
#include "java/util/AbstractMap.h"

#define JavaUtilNavigableMap_RESTRICT 1
#define JavaUtilNavigableMap_INCLUDE 1
#include "java/util/NavigableMap.h"


@interface ComGoogleCommonCollectAbstractNavigableMap : JavaUtilAbstractMap < JavaUtilNavigableMap > {
}

- (id)getWithId:(id)key;

- (id<JavaUtilMap_Entry>)firstEntry;

- (id<JavaUtilMap_Entry>)lastEntry;

- (id<JavaUtilMap_Entry>)pollFirstEntry;

- (id<JavaUtilMap_Entry>)pollLastEntry;

- (id)firstKey;

- (id)lastKey;

- (id<JavaUtilMap_Entry>)lowerEntryWithId:(id)key;

- (id<JavaUtilMap_Entry>)floorEntryWithId:(id)key;

- (id<JavaUtilMap_Entry>)ceilingEntryWithId:(id)key;

- (id<JavaUtilMap_Entry>)higherEntryWithId:(id)key;

- (id)lowerKeyWithId:(id)key;

- (id)floorKeyWithId:(id)key;

- (id)ceilingKeyWithId:(id)key;

- (id)higherKeyWithId:(id)key;

- (id<JavaUtilIterator>)entryIterator;

- (id<JavaUtilIterator>)descendingEntryIterator;

- (id<JavaUtilSortedMap>)subMapWithId:(id)fromKey
                               withId:(id)toKey;

- (id<JavaUtilSortedMap>)headMapWithId:(id)toKey;

- (id<JavaUtilSortedMap>)tailMapWithId:(id)fromKey;

- (id<JavaUtilNavigableSet>)navigableKeySet;

- (id<JavaUtilSet>)keySet;

- (jint)size;

- (id<JavaUtilSet>)entrySet;

- (id<JavaUtilNavigableSet>)descendingKeySet;

- (id<JavaUtilNavigableMap>)descendingMap;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectAbstractNavigableMap)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectAbstractNavigableMap)
#if !defined (_ComGoogleCommonCollectAbstractNavigableMap_DescendingMap_) && (ComGoogleCommonCollectAbstractNavigableMap_INCLUDE_ALL || ComGoogleCommonCollectAbstractNavigableMap_DescendingMap_INCLUDE)
#define _ComGoogleCommonCollectAbstractNavigableMap_DescendingMap_

@class ComGoogleCommonCollectAbstractNavigableMap;
@protocol JavaUtilIterator;
@protocol JavaUtilNavigableMap;

#define ComGoogleCommonCollectMaps_RESTRICT 1
#define ComGoogleCommonCollectMaps_DescendingMap_INCLUDE 1
#include "com/google/common/collect/Maps.h"


@interface ComGoogleCommonCollectAbstractNavigableMap_DescendingMap : ComGoogleCommonCollectMaps_DescendingMap {
}

- (id<JavaUtilNavigableMap>)forward;

- (id<JavaUtilIterator>)entryIterator;

- (instancetype)initWithComGoogleCommonCollectAbstractNavigableMap:(ComGoogleCommonCollectAbstractNavigableMap *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectAbstractNavigableMap_DescendingMap)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectAbstractNavigableMap_DescendingMap)
#if !defined (_ComGoogleCommonCollectAbstractNavigableMap_$1_) && (ComGoogleCommonCollectAbstractNavigableMap_INCLUDE_ALL || ComGoogleCommonCollectAbstractNavigableMap_$1_INCLUDE)
#define _ComGoogleCommonCollectAbstractNavigableMap_$1_

@class ComGoogleCommonCollectAbstractNavigableMap;
@protocol JavaUtilIterator;
@protocol JavaUtilMap;

#define ComGoogleCommonCollectMaps_RESTRICT 1
#define ComGoogleCommonCollectMaps_EntrySet_INCLUDE 1
#include "com/google/common/collect/Maps.h"


@interface ComGoogleCommonCollectAbstractNavigableMap_$1 : ComGoogleCommonCollectMaps_EntrySet {
}

- (id<JavaUtilMap>)map;

- (id<JavaUtilIterator>)iterator;

- (instancetype)initWithComGoogleCommonCollectAbstractNavigableMap:(ComGoogleCommonCollectAbstractNavigableMap *)outer$;


@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectAbstractNavigableMap_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectAbstractNavigableMap_$1)
