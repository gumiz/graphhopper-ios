//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/guava/sources/com/google/common/collect/NullsLastOrdering.java
//

#include "J2ObjC_header.h"

#if !ComGoogleCommonCollectNullsLastOrdering_RESTRICT
#define ComGoogleCommonCollectNullsLastOrdering_INCLUDE_ALL 1
#endif
#undef ComGoogleCommonCollectNullsLastOrdering_RESTRICT
#if !defined (_ComGoogleCommonCollectNullsLastOrdering_) && (ComGoogleCommonCollectNullsLastOrdering_INCLUDE_ALL || ComGoogleCommonCollectNullsLastOrdering_INCLUDE)
#define _ComGoogleCommonCollectNullsLastOrdering_

#define ComGoogleCommonCollectOrdering_RESTRICT 1
#define ComGoogleCommonCollectOrdering_INCLUDE 1
#include "com/google/common/collect/Ordering.h"

#define JavaIoSerializable_RESTRICT 1
#define JavaIoSerializable_INCLUDE 1
#include "java/io/Serializable.h"


#define ComGoogleCommonCollectNullsLastOrdering_serialVersionUID 0LL

@interface ComGoogleCommonCollectNullsLastOrdering : ComGoogleCommonCollectOrdering < JavaIoSerializable > {
 @public
  ComGoogleCommonCollectOrdering *ordering_;
}

- (instancetype)initWithComGoogleCommonCollectOrdering:(ComGoogleCommonCollectOrdering *)ordering;

- (jint)compareWithId:(id)left
               withId:(id)right;

- (ComGoogleCommonCollectOrdering *)reverse;

- (ComGoogleCommonCollectOrdering *)nullsFirst;

- (ComGoogleCommonCollectOrdering *)nullsLast;

- (jboolean)isEqual:(id)object;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectNullsLastOrdering)

J2OBJC_FIELD_SETTER(ComGoogleCommonCollectNullsLastOrdering, ordering_, ComGoogleCommonCollectOrdering *)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(ComGoogleCommonCollectNullsLastOrdering, serialVersionUID, jlong)
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectNullsLastOrdering)
