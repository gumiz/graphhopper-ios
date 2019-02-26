//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/set/TIntSet.java
//

#ifndef _GnuTroveSetTIntSet_H_
#define _GnuTroveSetTIntSet_H_

@class IOSIntArray;
@protocol GnuTroveIteratorTIntIterator;
@protocol GnuTroveProcedureTIntProcedure;
@protocol JavaUtilCollection;

#include "J2ObjC_header.h"
#include "gnu/trove/TIntCollection.h"

/**
 @brief An implementation of the <tt>Set</tt> interface that uses an open-addressed hash table to store its contents.
 Created: Sat Nov  3 10:38:17 2001
 @author Eric D. Friedman, Rob Eden, Jeff Randall
 @version $Id: _E_Set.template,v 1.1.2.5 2009/09/15 02:38:31 upholderoftruth Exp $
 */
@protocol GnuTroveSetTIntSet < GnuTroveTIntCollection, NSObject, JavaObject >
/**
 @brief Returns the value that is used to represent null.
 The default value is generally zero, but can be changed during construction of the collection.
 @return the value that represents null
 */
- (jint)getNoEntryValue;

/**
 @brief Returns the number of elements in this set (its cardinality).
 If this set contains more than <tt>Integer.MAX_VALUE</tt> elements, returns <tt>Integer.MAX_VALUE</tt>.
 @return the number of elements in this set (its cardinality)
 */
- (jint)size;

/**
 @brief Returns <tt>true</tt> if this set contains no elements.
 @return <tt>true</tt> if this set contains no elements
 */
- (jboolean)isEmpty;

/**
 @brief Returns <tt>true</tt> if this set contains the specified element.
 @param entry an <code>int</code> value
 @return true if the set contains the specified element.
 */
- (jboolean)containsWithInt:(jint)entry_;

/**
 @brief Creates an iterator over the values of the set.
 The iterator supports element deletion.
 @return an <code>TIntIterator</code> value
 */
- (id<GnuTroveIteratorTIntIterator>)iterator;

/**
 @brief Returns an array containing all of the elements in this set.
 If this set makes any guarantees as to what order its elements are returned by its iterator, this method must return the elements in the same order. <p>The returned array will be "safe" in that no references to it are maintained by this set.  (In other words, this method must allocate a new array even if this set is backed by an array). The caller is thus free to modify the returned array. <p>This method acts as bridge between array-based and collection-based APIs.
 @return an array containing all the elements in this set
 */
- (IOSIntArray *)toArray;

/**
 @brief Returns an array containing elements in this set.
 <p>If this set fits in the specified array with room to spare (i.e., the array has more elements than this set), the element in the array immediately following the end of the set is set to <tt> #getNoEntryValue() </tt>.  (This is useful in determining the length of this set <i>only</i> if the caller knows that this set does not contain any elements representing null.) <p>If the native array is smaller than the set size, the array will be filled with elements in Iterator order until it is full and exclude the remainder. <p>If this set makes any guarantees as to what order its elements are returned by its iterator, this method must return the elements in the same order.
 @param dest the array into which the elements of this set are to be stored.
 @return an <tt>int[]</tt> containing all the elements in this set
 @throws NullPointerException if the specified array is null
 */
- (IOSIntArray *)toArrayWithIntArray:(IOSIntArray *)dest;

/**
 @brief Inserts a value into the set.
 @param entry a <code>int</code> value
 @return true if the set was modified by the add operation
 */
- (jboolean)addWithInt:(jint)entry_;

/**
 @brief Removes <tt>entry</tt> from the set.
 @param entry an <code>int</code> value
 @return true if the set was modified by the remove operation.
 */
- (jboolean)removeWithInt:(jint)entry_;

/**
 @brief Tests the set to determine if all of the elements in <tt>collection</tt> are present.
 @param collection a <code>Collection</code> value
 @return true if all elements were present in the set.
 */
- (jboolean)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 @brief Tests the set to determine if all of the elements in <tt>TIntCollection</tt> are present.
 @param collection a <code>TIntCollection</code> value
 @return true if all elements were present in the set.
 */
- (jboolean)containsAllWithGnuTroveTIntCollection:(id<GnuTroveTIntCollection>)collection;

/**
 @brief Tests the set to determine if all of the elements in <tt>array</tt> are present.
 @param array as <code>array</code> of int primitives.
 @return true if all elements were present in the set.
 */
- (jboolean)containsAllWithIntArray:(IOSIntArray *)array;

/**
 @brief Adds all of the elements in <tt>collection</tt> to the set.
 @param collection a <code>Collection</code> value
 @return true if the set was modified by the add all operation.
 */
- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 @brief Adds all of the elements in the <tt>TIntCollection</tt> to the set.
 @param collection a <code>TIntCollection</code> value
 @return true if the set was modified by the add all operation.
 */
- (jboolean)addAllWithGnuTroveTIntCollection:(id<GnuTroveTIntCollection>)collection;

/**
 @brief Adds all of the elements in the <tt>array</tt> to the set.
 @param array a <code>array</code> of int primitives.
 @return true if the set was modified by the add all operation.
 */
- (jboolean)addAllWithIntArray:(IOSIntArray *)array;

/**
 @brief Removes any values in the set which are not contained in <tt>collection</tt>.
 @param collection a <code>Collection</code> value
 @return true if the set was modified by the retain all operation
 */
- (jboolean)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 @brief Removes any values in the set which are not contained in <tt>TIntCollection</tt>.
 @param collection a <code>TIntCollection</code> value
 @return true if the set was modified by the retain all operation
 */
- (jboolean)retainAllWithGnuTroveTIntCollection:(id<GnuTroveTIntCollection>)collection;

/**
 @brief Removes any values in the set which are not contained in <tt>array</tt>.
 @param array an <code>array</code> of int primitives.
 @return true if the set was modified by the retain all operation
 */
- (jboolean)retainAllWithIntArray:(IOSIntArray *)array;

/**
 @brief Removes all of the elements in <tt>collection</tt> from the set.
 @param collection a <code>Collection</code> value
 @return true if the set was modified by the remove all operation.
 */
- (jboolean)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 @brief Removes all of the elements in <tt>TIntCollection</tt> from the set.
 @param collection a <code>TIntCollection</code> value
 @return true if the set was modified by the remove all operation.
 */
- (jboolean)removeAllWithGnuTroveTIntCollection:(id<GnuTroveTIntCollection>)collection;

/**
 @brief Removes all of the elements in <tt>array</tt> from the set.
 @param array an <code>array</code> of int primitives.
 @return true if the set was modified by the remove all operation.
 */
- (jboolean)removeAllWithIntArray:(IOSIntArray *)array;

/**
 @brief Empties the set.
 */
- (void)clear;

/**
 @brief Executes <tt>procedure</tt> for each element in the set.
 @param procedure a <code>TIntProcedure</code> value
 @return false if the loop over the set terminated because the procedure returned false for some value.
 */
- (jboolean)forEachWithGnuTroveProcedureTIntProcedure:(id<GnuTroveProcedureTIntProcedure>)procedure;

/**
 @brief Compares the specified object with this set for equality.
 Returns <tt>true</tt> if the specified object is also a set, the two sets have the same size, and every member of the specified set is contained in this set (or equivalently, every member of this set is contained in the specified set).  This definition ensures that the equals method works properly across different implementations of the set interface.
 @param o object to be compared for equality with this set
 @return <tt>true</tt> if the specified object is equal to this set
 */
- (jboolean)isEqual:(id)o;

/**
 @brief Returns the hash code value for this set.
 The hash code of a set is defined to be the sum of the hash codes of the elements in the set. This ensures that <tt>s1.equals(s2)</tt> implies that <tt>s1.hashCode()==s2.hashCode()</tt> for any two sets <tt>s1</tt> and <tt>s2</tt>, as required by the general contract of Object#hashCode .
 @return the hash code value for this set
 */
- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveSetTIntSet)

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveSetTIntSet)

#endif // _GnuTroveSetTIntSet_H_
