//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/guava/sources/com/google/common/collect/FilteredMultimap.java
//

#include "J2ObjC_header.h"

#if !ComGoogleCommonCollectFilteredMultimap_RESTRICT
#define ComGoogleCommonCollectFilteredMultimap_INCLUDE_ALL 1
#endif
#undef ComGoogleCommonCollectFilteredMultimap_RESTRICT
#if !defined (_ComGoogleCommonCollectFilteredMultimap_) && (ComGoogleCommonCollectFilteredMultimap_INCLUDE_ALL || ComGoogleCommonCollectFilteredMultimap_INCLUDE)
#define _ComGoogleCommonCollectFilteredMultimap_

@protocol ComGoogleCommonBasePredicate;
@protocol ComGoogleCommonCollectMultimap;

#define ComGoogleCommonCollectAbstractMultimap_RESTRICT 1
#define ComGoogleCommonCollectAbstractMultimap_INCLUDE 1
#include "com/google/common/collect/AbstractMultimap.h"


@interface ComGoogleCommonCollectFilteredMultimap : ComGoogleCommonCollectAbstractMultimap {
 @public
  id<ComGoogleCommonCollectMultimap> unfiltered_;
}

- (instancetype)initWithComGoogleCommonCollectMultimap:(id<ComGoogleCommonCollectMultimap>)unfiltered;

- (id<ComGoogleCommonBasePredicate>)entryPredicate;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectFilteredMultimap)

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectFilteredMultimap, unfiltered_, id<ComGoogleCommonCollectMultimap>)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectFilteredMultimap)