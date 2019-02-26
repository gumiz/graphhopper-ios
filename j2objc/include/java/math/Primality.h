//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/math/src/main/java/java/math/Primality.java
//

#ifndef _JavaMathPrimality_H_
#define _JavaMathPrimality_H_

@class IOSIntArray;
@class IOSObjectArray;
@class JavaMathBigInteger;
@class JavaUtilRandom;

#include "J2ObjC_header.h"

@interface JavaMathPrimality : NSObject {
}

+ (JavaMathBigInteger *)nextProbablePrimeWithJavaMathBigInteger:(JavaMathBigInteger *)n;

+ (JavaMathBigInteger *)consBigIntegerWithInt:(jint)bitLength
                                      withInt:(jint)certainty
                           withJavaUtilRandom:(JavaUtilRandom *)rnd;

+ (jboolean)isProbablePrimeWithJavaMathBigInteger:(JavaMathBigInteger *)n
                                          withInt:(jint)certainty;

@end

FOUNDATION_EXPORT BOOL JavaMathPrimality_initialized;
J2OBJC_STATIC_INIT(JavaMathPrimality)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT JavaMathBigInteger *JavaMathPrimality_nextProbablePrimeWithJavaMathBigInteger_(JavaMathBigInteger *n);

FOUNDATION_EXPORT JavaMathBigInteger *JavaMathPrimality_consBigIntegerWithInt_withInt_withJavaUtilRandom_(jint bitLength, jint certainty, JavaUtilRandom *rnd);

FOUNDATION_EXPORT jboolean JavaMathPrimality_isProbablePrimeWithJavaMathBigInteger_withInt_(JavaMathBigInteger *n, jint certainty);

FOUNDATION_EXPORT IOSIntArray *JavaMathPrimality_primes_;
J2OBJC_STATIC_FIELD_GETTER(JavaMathPrimality, primes_, IOSIntArray *)

FOUNDATION_EXPORT IOSObjectArray *JavaMathPrimality_BIprimes_;
J2OBJC_STATIC_FIELD_GETTER(JavaMathPrimality, BIprimes_, IOSObjectArray *)

FOUNDATION_EXPORT IOSIntArray *JavaMathPrimality_BITS_;
J2OBJC_STATIC_FIELD_GETTER(JavaMathPrimality, BITS_, IOSIntArray *)

FOUNDATION_EXPORT IOSObjectArray *JavaMathPrimality_offsetPrimes_;
J2OBJC_STATIC_FIELD_GETTER(JavaMathPrimality, offsetPrimes_, IOSObjectArray *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaMathPrimality)

#endif // _JavaMathPrimality_H_
