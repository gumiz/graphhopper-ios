//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/guava/sources/com/google/common/cache/RemovalNotification.java
//

#include "J2ObjC_header.h"

#if !ComGoogleCommonCacheRemovalNotification_RESTRICT
#define ComGoogleCommonCacheRemovalNotification_INCLUDE_ALL 1
#endif
#undef ComGoogleCommonCacheRemovalNotification_RESTRICT
#if !defined (_ComGoogleCommonCacheRemovalNotification_) && (ComGoogleCommonCacheRemovalNotification_INCLUDE_ALL || ComGoogleCommonCacheRemovalNotification_INCLUDE)
#define _ComGoogleCommonCacheRemovalNotification_

@class ComGoogleCommonCacheRemovalCauseEnum;

#define JavaUtilMap_RESTRICT 1
#define JavaUtilMap_Entry_INCLUDE 1
#include "java/util/Map.h"


#define ComGoogleCommonCacheRemovalNotification_serialVersionUID 0LL

@interface ComGoogleCommonCacheRemovalNotification : NSObject < JavaUtilMap_Entry > {
}

- (instancetype)initWithId:(id)key
                    withId:(id)value
withComGoogleCommonCacheRemovalCauseEnum:(ComGoogleCommonCacheRemovalCauseEnum *)cause;

- (ComGoogleCommonCacheRemovalCauseEnum *)getCause;

- (jboolean)wasEvicted;

- (id)getKey;

- (id)getValue;

- (id)setValueWithId:(id)value;

- (jboolean)isEqual:(id)object;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonCacheRemovalNotification)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(ComGoogleCommonCacheRemovalNotification, serialVersionUID, jlong)
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonCacheRemovalNotification)
