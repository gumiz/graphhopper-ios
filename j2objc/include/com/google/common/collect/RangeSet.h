//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/guava/sources/com/google/common/collect/RangeSet.java
//

#include "J2ObjC_header.h"

#if !ComGoogleCommonCollectRangeSet_RESTRICT
#define ComGoogleCommonCollectRangeSet_INCLUDE_ALL 1
#endif
#undef ComGoogleCommonCollectRangeSet_RESTRICT
#if !defined (_ComGoogleCommonCollectRangeSet_) && (ComGoogleCommonCollectRangeSet_INCLUDE_ALL || ComGoogleCommonCollectRangeSet_INCLUDE)
#define _ComGoogleCommonCollectRangeSet_

@class ComGoogleCommonCollectRange;
@protocol JavaLangComparable;
@protocol JavaUtilSet;


@protocol ComGoogleCommonCollectRangeSet < NSObject, JavaObject >

- (jboolean)containsWithJavaLangComparable:(id<JavaLangComparable>)value;

- (ComGoogleCommonCollectRange *)rangeContainingWithJavaLangComparable:(id<JavaLangComparable>)value;

- (jboolean)enclosesWithComGoogleCommonCollectRange:(ComGoogleCommonCollectRange *)otherRange;

- (jboolean)enclosesAllWithComGoogleCommonCollectRangeSet:(id<ComGoogleCommonCollectRangeSet>)other;

- (jboolean)isEmpty;

- (ComGoogleCommonCollectRange *)span;

- (id<JavaUtilSet>)asRanges;

- (id<ComGoogleCommonCollectRangeSet>)complement;

- (id<ComGoogleCommonCollectRangeSet>)subRangeSetWithComGoogleCommonCollectRange:(ComGoogleCommonCollectRange *)view;

- (void)addWithComGoogleCommonCollectRange:(ComGoogleCommonCollectRange *)range;

- (void)removeWithComGoogleCommonCollectRange:(ComGoogleCommonCollectRange *)range;

- (void)clear;

- (void)addAllWithComGoogleCommonCollectRangeSet:(id<ComGoogleCommonCollectRangeSet>)other;

- (void)removeAllWithComGoogleCommonCollectRangeSet:(id<ComGoogleCommonCollectRangeSet>)other;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectRangeSet)
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectRangeSet)
