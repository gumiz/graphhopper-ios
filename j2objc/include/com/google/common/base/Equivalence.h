//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/guava/sources/com/google/common/base/Equivalence.java
//

#include "J2ObjC_header.h"

#if !ComGoogleCommonBaseEquivalence_RESTRICT
#define ComGoogleCommonBaseEquivalence_INCLUDE_ALL 1
#endif
#undef ComGoogleCommonBaseEquivalence_RESTRICT
#if ComGoogleCommonBaseEquivalence_Identity_INCLUDE
#define ComGoogleCommonBaseEquivalence_INCLUDE 1
#endif
#if ComGoogleCommonBaseEquivalence_Equals_INCLUDE
#define ComGoogleCommonBaseEquivalence_INCLUDE 1
#endif
#if !defined (_ComGoogleCommonBaseEquivalence_Wrapper_) && (ComGoogleCommonBaseEquivalence_INCLUDE_ALL || ComGoogleCommonBaseEquivalence_Wrapper_INCLUDE)
#define _ComGoogleCommonBaseEquivalence_Wrapper_

@class ComGoogleCommonBaseEquivalence;

#define JavaIoSerializable_RESTRICT 1
#define JavaIoSerializable_INCLUDE 1
#include "java/io/Serializable.h"


#define ComGoogleCommonBaseEquivalence_Wrapper_serialVersionUID 0LL

@interface ComGoogleCommonBaseEquivalence_Wrapper : NSObject < JavaIoSerializable > {
}

- (id)get;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseEquivalence_Wrapper)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(ComGoogleCommonBaseEquivalence_Wrapper, serialVersionUID, jlong)
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseEquivalence_Wrapper)
#if !defined (_ComGoogleCommonBaseEquivalence_EquivalentToPredicate_) && (ComGoogleCommonBaseEquivalence_INCLUDE_ALL || ComGoogleCommonBaseEquivalence_EquivalentToPredicate_INCLUDE)
#define _ComGoogleCommonBaseEquivalence_EquivalentToPredicate_

@class ComGoogleCommonBaseEquivalence;

#define ComGoogleCommonBasePredicate_RESTRICT 1
#define ComGoogleCommonBasePredicate_INCLUDE 1
#include "com/google/common/base/Predicate.h"

#define JavaIoSerializable_RESTRICT 1
#define JavaIoSerializable_INCLUDE 1
#include "java/io/Serializable.h"


#define ComGoogleCommonBaseEquivalence_EquivalentToPredicate_serialVersionUID 0LL

@interface ComGoogleCommonBaseEquivalence_EquivalentToPredicate : NSObject < ComGoogleCommonBasePredicate, JavaIoSerializable > {
}

- (instancetype)initWithComGoogleCommonBaseEquivalence:(ComGoogleCommonBaseEquivalence *)equivalence
                                                withId:(id)target;

- (jboolean)applyWithId:(id)input;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseEquivalence_EquivalentToPredicate)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(ComGoogleCommonBaseEquivalence_EquivalentToPredicate, serialVersionUID, jlong)
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseEquivalence_EquivalentToPredicate)
#if !defined (_ComGoogleCommonBaseEquivalence_) && (ComGoogleCommonBaseEquivalence_INCLUDE_ALL || ComGoogleCommonBaseEquivalence_INCLUDE)
#define _ComGoogleCommonBaseEquivalence_

@class ComGoogleCommonBaseEquivalence_Wrapper;
@protocol ComGoogleCommonBaseFunction;
@protocol ComGoogleCommonBasePredicate;


@interface ComGoogleCommonBaseEquivalence : NSObject {
}

- (instancetype)init;

- (jboolean)equivalentWithId:(id)a
                      withId:(id)b;

- (jboolean)doEquivalentWithId:(id)a
                        withId:(id)b;

- (jint)hash__WithId:(id)t;

- (jint)doHashWithId:(id)t;

- (ComGoogleCommonBaseEquivalence *)onResultOfWithComGoogleCommonBaseFunction:(id<ComGoogleCommonBaseFunction>)function;

- (ComGoogleCommonBaseEquivalence_Wrapper *)wrapWithId:(id)reference;

- (ComGoogleCommonBaseEquivalence *)pairwise;

- (id<ComGoogleCommonBasePredicate>)equivalentToWithId:(id)target;

+ (ComGoogleCommonBaseEquivalence *)equals;

+ (ComGoogleCommonBaseEquivalence *)identity;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonBaseEquivalence)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ComGoogleCommonBaseEquivalence *ComGoogleCommonBaseEquivalence_equals();

FOUNDATION_EXPORT ComGoogleCommonBaseEquivalence *ComGoogleCommonBaseEquivalence_identity();
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseEquivalence)
#if !defined (_ComGoogleCommonBaseEquivalence_Equals_) && (ComGoogleCommonBaseEquivalence_INCLUDE_ALL || ComGoogleCommonBaseEquivalence_Equals_INCLUDE)
#define _ComGoogleCommonBaseEquivalence_Equals_

#define JavaIoSerializable_RESTRICT 1
#define JavaIoSerializable_INCLUDE 1
#include "java/io/Serializable.h"


#define ComGoogleCommonBaseEquivalence_Equals_serialVersionUID 1LL

@interface ComGoogleCommonBaseEquivalence_Equals : ComGoogleCommonBaseEquivalence < JavaIoSerializable > {
}

- (jboolean)doEquivalentWithId:(id)a
                        withId:(id)b;

- (jint)doHashWithId:(id)o;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL ComGoogleCommonBaseEquivalence_Equals_initialized;
J2OBJC_STATIC_INIT(ComGoogleCommonBaseEquivalence_Equals)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ComGoogleCommonBaseEquivalence_Equals *ComGoogleCommonBaseEquivalence_Equals_INSTANCE_;
J2OBJC_STATIC_FIELD_GETTER(ComGoogleCommonBaseEquivalence_Equals, INSTANCE_, ComGoogleCommonBaseEquivalence_Equals *)

J2OBJC_STATIC_FIELD_GETTER(ComGoogleCommonBaseEquivalence_Equals, serialVersionUID, jlong)
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseEquivalence_Equals)
#if !defined (_ComGoogleCommonBaseEquivalence_Identity_) && (ComGoogleCommonBaseEquivalence_INCLUDE_ALL || ComGoogleCommonBaseEquivalence_Identity_INCLUDE)
#define _ComGoogleCommonBaseEquivalence_Identity_

#define JavaIoSerializable_RESTRICT 1
#define JavaIoSerializable_INCLUDE 1
#include "java/io/Serializable.h"


#define ComGoogleCommonBaseEquivalence_Identity_serialVersionUID 1LL

@interface ComGoogleCommonBaseEquivalence_Identity : ComGoogleCommonBaseEquivalence < JavaIoSerializable > {
}

- (jboolean)doEquivalentWithId:(id)a
                        withId:(id)b;

- (jint)doHashWithId:(id)o;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL ComGoogleCommonBaseEquivalence_Identity_initialized;
J2OBJC_STATIC_INIT(ComGoogleCommonBaseEquivalence_Identity)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ComGoogleCommonBaseEquivalence_Identity *ComGoogleCommonBaseEquivalence_Identity_INSTANCE_;
J2OBJC_STATIC_FIELD_GETTER(ComGoogleCommonBaseEquivalence_Identity, INSTANCE_, ComGoogleCommonBaseEquivalence_Identity *)

J2OBJC_STATIC_FIELD_GETTER(ComGoogleCommonBaseEquivalence_Identity, serialVersionUID, jlong)
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonBaseEquivalence_Identity)
