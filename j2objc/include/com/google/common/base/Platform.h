//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/guava/sources/com/google/common/base/Platform.java
//

#include "J2ObjC_header.h"

#if !ComGoogleCommonBasePlatform_RESTRICT
#define ComGoogleCommonBasePlatform_INCLUDE_ALL 1
#endif
#undef ComGoogleCommonBasePlatform_RESTRICT
#if !defined (_ComGoogleCommonBasePlatform_) && (ComGoogleCommonBasePlatform_INCLUDE_ALL || ComGoogleCommonBasePlatform_INCLUDE)
#define _ComGoogleCommonBasePlatform_

@class ComGoogleCommonBaseCharMatcher;
@class IOSCharArray;
@class JavaLangThreadLocal;


@interface ComGoogleCommonBasePlatform : NSObject {
}

+ (IOSCharArray *)charBufferFromThreadLocal;

+ (jlong)systemNanoTime;

+ (ComGoogleCommonBaseCharMatcher *)precomputeCharMatcherWithComGoogleCommonBaseCharMatcher:(ComGoogleCommonBaseCharMatcher *)matcher;

@end

FOUNDATION_EXPORT BOOL ComGoogleCommonBasePlatform_initialized;
J2OBJC_STATIC_INIT(ComGoogleCommonBasePlatform)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT IOSCharArray *ComGoogleCommonBasePlatform_charBufferFromThreadLocal();

FOUNDATION_EXPORT jlong ComGoogleCommonBasePlatform_systemNanoTime();

FOUNDATION_EXPORT ComGoogleCommonBaseCharMatcher *ComGoogleCommonBasePlatform_precomputeCharMatcherWithComGoogleCommonBaseCharMatcher_(ComGoogleCommonBaseCharMatcher *matcher);

FOUNDATION_EXPORT JavaLangThreadLocal *ComGoogleCommonBasePlatform_DEST_TL_;
J2OBJC_STATIC_FIELD_GETTER(ComGoogleCommonBasePlatform, DEST_TL_, JavaLangThreadLocal *)
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBasePlatform)
#if !defined (_ComGoogleCommonBasePlatform_$1_) && (ComGoogleCommonBasePlatform_INCLUDE_ALL || ComGoogleCommonBasePlatform_$1_INCLUDE)
#define _ComGoogleCommonBasePlatform_$1_

@class IOSCharArray;

#define JavaLangThreadLocal_RESTRICT 1
#define JavaLangThreadLocal_INCLUDE 1
#include "java/lang/ThreadLocal.h"


@interface ComGoogleCommonBasePlatform_$1 : JavaLangThreadLocal {
}

- (IOSCharArray *)initialValue OBJC_METHOD_FAMILY_NONE;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBasePlatform_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBasePlatform_$1)