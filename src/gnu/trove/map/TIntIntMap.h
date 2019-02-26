//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/map/TIntIntMap.java
//

#ifndef _GnuTroveMapTIntIntMap_H_
#define _GnuTroveMapTIntIntMap_H_

@class IOSIntArray;
@protocol GnuTroveFunctionTIntFunction;
@protocol GnuTroveIteratorTIntIntIterator;
@protocol GnuTroveProcedureTIntIntProcedure;
@protocol GnuTroveProcedureTIntProcedure;
@protocol GnuTroveSetTIntSet;
@protocol GnuTroveTIntCollection;
@protocol JavaUtilMap;

#include "J2ObjC_header.h"

/**
 @brief Interface for a primitive map of int keys and int values.
 */
@protocol GnuTroveMapTIntIntMap < NSObject, JavaObject >

/**
 @brief Returns the value that will be returned from #get or #put if no entry exists for a given key.
 The default value is generally zero, but can be changed during construction of the collection.
 @return the value that represents a null key in this collection.
 */
- (jint)getNoEntryKey;

/**
 @brief Returns the value that will be returned from #get or #put if no entry exists for a given key.
 The default value is generally zero, but can be changed during construction of the collection.
 @return the value that represents a null value in this collection.
 */
- (jint)getNoEntryValue;

/**
 @brief Inserts a key/value pair into the map.
 @param key an <code>int</code> value
 @param value an <code>int</code> value
 @return the previous value associated with <tt>key</tt>, or the "no entry" value if none was found (see #getNoEntryValue ).
 */
- (jint)putWithInt:(jint)key
           withInt:(jint)value;

/**
 @brief Inserts a key/value pair into the map if the specified key is not already associated with a value.
 @param key an <code>int</code> value
 @param value an <code>int</code> value
 @return the previous value associated with <tt>key</tt>, or the "no entry" value if none was found (see #getNoEntryValue ).
 */
- (jint)putIfAbsentWithInt:(jint)key
                   withInt:(jint)value;

/**
 @brief Put all the entries from the given Map into this map.
 @param map The Map from which entries will be obtained to put into this map.
 */
- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map;

/**
 @brief Put all the entries from the given map into this map.
 @param map The map from which entries will be obtained to put into this map.
 */
- (void)putAllWithGnuTroveMapTIntIntMap:(id<GnuTroveMapTIntIntMap>)map;

/**
 @brief Retrieves the value for <tt>key</tt>
 @param key an <code>int</code> value
 @return the previous value associated with <tt>key</tt>, or the "no entry" value if none was found (see #getNoEntryValue ).
 */
- (jint)getWithInt:(jint)key;

/**
 @brief Empties the map.
 */
- (void)clear;

/**
 @brief Returns <tt>true</tt> if this map contains no key-value mappings.
 @return <tt>true</tt> if this map contains no key-value mappings
 */
- (jboolean)isEmpty;

/**
 @brief Deletes a key/value pair from the map.
 @param key an <code>int</code> value
 @return the previous value associated with <tt>key</tt>, or the "no entry" value if none was found (see #getNoEntryValue ).
 */
- (jint)removeWithInt:(jint)key;

/**
 @brief Returns an <tt>int</tt> value that is the number of elements in the map.
 @return an <tt>int</tt> value that is the number of elements in the map.
 */
- (jint)size;

/**
 @brief Returns the keys of the map as a <tt>TIntSet</tt>
 @return the keys of the map as a <tt>TIntSet</tt>
 */
- (id<GnuTroveSetTIntSet>)keySet;

/**
 @brief Returns the keys of the map as an array of <tt>int</tt> values.
 @return the keys of the map as an array of <tt>int</tt> values.
 */
- (IOSIntArray *)keys;

/**
 @brief Returns the keys of the map.
 @param array the array into which the elements of the list are to be stored, if it is big enough; otherwise, a new array of the same type is allocated for this purpose.
 @return the keys of the map as an array.
 */
- (IOSIntArray *)keysWithIntArray:(IOSIntArray *)array;

/**
 @brief Returns the values of the map as a <tt>TIntCollection</tt>
 @return the values of the map as a <tt>TIntCollection</tt>
 */
- (id<GnuTroveTIntCollection>)valueCollection;

/**
 @brief Returns the values of the map as an array of <tt>#e#</tt> values.
 @return the values of the map as an array of <tt>#e#</tt> values.
 */
- (IOSIntArray *)values;

/**
 @brief Returns the values of the map using an existing array.
 @param array the array into which the elements of the list are to be stored, if it is big enough; otherwise, a new array of the same type is allocated for this purpose.
 @return the values of the map as an array of <tt>#e#</tt> values.
 */
- (IOSIntArray *)valuesWithIntArray:(IOSIntArray *)array;

/**
 @brief Checks for the presence of <tt>val</tt> in the values of the map.
 @param val an <code>int</code> value
 @return a <code>boolean</code> value
 */
- (jboolean)containsValueWithInt:(jint)val;

/**
 @brief Checks for the present of <tt>key</tt> in the keys of the map.
 @param key an <code>int</code> value
 @return a <code>boolean</code> value
 */
- (jboolean)containsKeyWithInt:(jint)key;

/**
 @return a TIntIntIterator with access to this map's keys and values
 */
- (id<GnuTroveIteratorTIntIntIterator>)iterator;

/**
 @brief Executes <tt>procedure</tt> for each key in the map.
 @param procedure a <code>TIntProcedure</code> value
 @return false if the loop over the keys terminated because the procedure returned false for some key.
 */
- (jboolean)forEachKeyWithGnuTroveProcedureTIntProcedure:(id<GnuTroveProcedureTIntProcedure>)procedure;

/**
 @brief Executes <tt>procedure</tt> for each value in the map.
 @param procedure a <code>T#F#Procedure</code> value
 @return false if the loop over the values terminated because the procedure returned false for some value.
 */
- (jboolean)forEachValueWithGnuTroveProcedureTIntProcedure:(id<GnuTroveProcedureTIntProcedure>)procedure;

/**
 @brief Executes <tt>procedure</tt> for each key/value entry in the map.
 @param procedure a <code>TOIntIntProcedure</code> value
 @return false if the loop over the entries terminated because the procedure returned false for some entry.
 */
- (jboolean)forEachEntryWithGnuTroveProcedureTIntIntProcedure:(id<GnuTroveProcedureTIntIntProcedure>)procedure;

/**
 @brief Transform the values in this map using <tt>function</tt>.
 @param function a <code>TIntFunction</code> value
 */
- (void)transformValuesWithGnuTroveFunctionTIntFunction:(id<GnuTroveFunctionTIntFunction>)function;

/**
 @brief Retains only those entries in the map for which the procedure returns a true value.
 @param procedure determines which entries to keep
 @return true if the map was modified.
 */
- (jboolean)retainEntriesWithGnuTroveProcedureTIntIntProcedure:(id<GnuTroveProcedureTIntIntProcedure>)procedure;

/**
 @brief Increments the primitive value mapped to key by 1
 @param key the key of the value to increment
 @return true if a mapping was found and modified.
 */
- (jboolean)incrementWithInt:(jint)key;

/**
 @brief Adjusts the primitive value mapped to key.
 @param key the key of the value to increment
 @param amount the amount to adjust the value by.
 @return true if a mapping was found and modified.
 */
- (jboolean)adjustValueWithInt:(jint)key
                       withInt:(jint)amount;

/**
 @brief Adjusts the primitive value mapped to the key if the key is present in the map.
 Otherwise, the <tt>initial_value</tt> is put in the map.
 @param key the key of the value to increment
 @param adjust_amount the amount to adjust the value by
 @param put_amount the value put into the map if the key is not initial present
 @return the value present in the map after the adjustment or put operation
 */
- (jint)adjustOrPutValueWithInt:(jint)key
                        withInt:(jint)adjust_amount
                        withInt:(jint)put_amount;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveMapTIntIntMap)

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveMapTIntIntMap)

#endif // _GnuTroveMapTIntIntMap_H_
