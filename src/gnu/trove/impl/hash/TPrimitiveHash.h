//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/impl/hash/TPrimitiveHash.java
//

#ifndef _GnuTroveImplHashTPrimitiveHash_H_
#define _GnuTroveImplHashTPrimitiveHash_H_

@class IOSByteArray;

#include "J2ObjC_header.h"
#include "gnu/trove/impl/hash/THash.h"

#define GnuTroveImplHashTPrimitiveHash_FREE 0
#define GnuTroveImplHashTPrimitiveHash_FULL 1
#define GnuTroveImplHashTPrimitiveHash_REMOVED 2
#define GnuTroveImplHashTPrimitiveHash_serialVersionUID 1LL

/**
 @brief The base class for hashtables of primitive values.
 Since there is no notion of object equality for primitives, it isn't possible to use a `REMOVED' object to track deletions in an open-addressed table. So, we have to resort to using a parallel `bookkeeping' array of bytes, in which flags can be set to indicate that a particular slot in the hash table is FREE, FULL, or REMOVED.
 @author Eric D. Friedman, Rob Eden, Jeff Randall
 @version $Id: TPrimitiveHash.java,v 1.1.2.6 2010/03/01 23:39:07 robeden Exp $
 */
@interface GnuTroveImplHashTPrimitiveHash : GnuTroveImplHashTHash {
 @public
  /**
   @brief flags indicating whether each position in the hash is FREE, FULL, or REMOVED
   */
  IOSByteArray *_states_;
}

/**
 @brief Creates a new <code>THash</code> instance with the default capacity and load factor.
 */
- (instancetype)init;

/**
 @brief Creates a new <code>TPrimitiveHash</code> instance with a prime capacity at or near the specified capacity and with the default load factor.
 @param initialCapacity an <code>int</code> value
 */
- (instancetype)initWithInt:(jint)initialCapacity;

/**
 @brief Creates a new <code>TPrimitiveHash</code> instance with a prime capacity at or near the minimum needed to hold <tt>initialCapacity<tt> elements with load factor <tt>loadFactor</tt> without triggering a rehash.
 @param initialCapacity an <code>int</code> value
 @param loadFactor a <code>float</code> value
 */
- (instancetype)initWithInt:(jint)initialCapacity
                  withFloat:(jfloat)loadFactor;

/**
 @brief Returns the capacity of the hash table.
 This is the true physical capacity, without adjusting for the load factor.
 @return the physical capacity of the hash table.
 */
- (jint)capacity;

/**
 @brief Delete the record at <tt>index</tt>.
 @param index an <code>int</code> value
 */
- (void)removeAtWithInt:(jint)index;

/**
 @brief initializes the hashtable to a prime capacity which is at least <tt>initialCapacity + 1</tt>.
 @param initialCapacity an <code>int</code> value
 @return the actual capacity chosen
 */
- (jint)setUpWithInt:(jint)initialCapacity;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveImplHashTPrimitiveHash)

J2OBJC_FIELD_SETTER(GnuTroveImplHashTPrimitiveHash, _states_, IOSByteArray *)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(GnuTroveImplHashTPrimitiveHash, serialVersionUID, jlong)

J2OBJC_STATIC_FIELD_GETTER(GnuTroveImplHashTPrimitiveHash, FREE, jbyte)

J2OBJC_STATIC_FIELD_GETTER(GnuTroveImplHashTPrimitiveHash, FULL, jbyte)

J2OBJC_STATIC_FIELD_GETTER(GnuTroveImplHashTPrimitiveHash, REMOVED, jbyte)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveImplHashTPrimitiveHash)

#endif // _GnuTroveImplHashTPrimitiveHash_H_