//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/guava/sources/com/google/common/collect/AbstractIndexedListIterator.java
//

#include "J2ObjC_header.h"

#if !ComGoogleCommonCollectAbstractIndexedListIterator_RESTRICT
#define ComGoogleCommonCollectAbstractIndexedListIterator_INCLUDE_ALL 1
#endif
#undef ComGoogleCommonCollectAbstractIndexedListIterator_RESTRICT
#if !defined (_ComGoogleCommonCollectAbstractIndexedListIterator_) && (ComGoogleCommonCollectAbstractIndexedListIterator_INCLUDE_ALL || ComGoogleCommonCollectAbstractIndexedListIterator_INCLUDE)
#define _ComGoogleCommonCollectAbstractIndexedListIterator_

#define ComGoogleCommonCollectUnmodifiableListIterator_RESTRICT 1
#define ComGoogleCommonCollectUnmodifiableListIterator_INCLUDE 1
#include "com/google/common/collect/UnmodifiableListIterator.h"


@interface ComGoogleCommonCollectAbstractIndexedListIterator : ComGoogleCommonCollectUnmodifiableListIterator {
}

- (id)getWithInt:(jint)index;

- (instancetype)initWithInt:(jint)size;

- (instancetype)initWithInt:(jint)size
                    withInt:(jint)position;

- (jboolean)hasNext;

- (id)next;

- (jint)nextIndex;

- (jboolean)hasPrevious;

- (id)previous;

- (jint)previousIndex;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCollectAbstractIndexedListIterator)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCollectAbstractIndexedListIterator)
