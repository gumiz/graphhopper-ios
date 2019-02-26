//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/impl/PrimeFinder.java
//

#ifndef _GnuTroveImplPrimeFinder_H_
#define _GnuTroveImplPrimeFinder_H_

@class IOSIntArray;

#include "J2ObjC_header.h"

#define GnuTroveImplPrimeFinder_largestPrime 2147483647

/**
 @brief Used to keep hash table capacities prime numbers.
 Not of interest for users; only for implementors of hashtables. <p>Choosing prime numbers as hash table capacities is a good idea to keep them working fast, particularly under hash table expansions. <p>However, JDK 1.2, JGL 3.1 and many other toolkits do nothing to keep capacities prime.  This class provides efficient means to choose prime capacities. <p>Choosing a prime is <tt>O(log 300)</tt> (binary search in a list of 300 ints).  Memory requirements: 1 KB static memory.
 @author wolfgang.hoschek@@cern.ch
 @version 1.0, 09/24/99
 */
@interface GnuTroveImplPrimeFinder : NSObject {
}

/**
 @brief Returns a prime number which is <code>&gt;= desiredCapacity</code> and very close to <code>desiredCapacity</code> (within 11% if <code>desiredCapacity &gt;= 1000</code>).
 @param desiredCapacity the capacity desired by the user.
 @return the capacity which should be used for a hashtable.
 */
+ (jint)nextPrimeWithInt:(jint)desiredCapacity;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL GnuTroveImplPrimeFinder_initialized;
J2OBJC_STATIC_INIT(GnuTroveImplPrimeFinder)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT jint GnuTroveImplPrimeFinder_nextPrimeWithInt_(jint desiredCapacity);

J2OBJC_STATIC_FIELD_GETTER(GnuTroveImplPrimeFinder, largestPrime, jint)

FOUNDATION_EXPORT IOSIntArray *GnuTroveImplPrimeFinder_primeCapacities_;
J2OBJC_STATIC_FIELD_GETTER(GnuTroveImplPrimeFinder, primeCapacities_, IOSIntArray *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveImplPrimeFinder)

#endif // _GnuTroveImplPrimeFinder_H_
