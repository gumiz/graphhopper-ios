//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/list/array/TDoubleArrayList.java
//

#ifndef _GnuTroveListArrayTDoubleArrayList_H_
#define _GnuTroveListArrayTDoubleArrayList_H_

@class GnuTroveListArrayTDoubleArrayList;
@class IOSDoubleArray;
@class JavaUtilRandom;
@protocol GnuTroveFunctionTDoubleFunction;
@protocol GnuTroveProcedureTDoubleProcedure;
@protocol GnuTroveTDoubleCollection;
@protocol JavaIoObjectInput;
@protocol JavaIoObjectOutput;
@protocol JavaUtilCollection;

#include "J2ObjC_header.h"
#include "gnu/trove/iterator/TDoubleIterator.h"
#include "gnu/trove/list/TDoubleList.h"
#include "java/io/Externalizable.h"

/**
 @brief TDoubleArrayList iterator
 */
@interface GnuTroveListArrayTDoubleArrayList_TDoubleArrayIterator : NSObject < GnuTroveIteratorTDoubleIterator > {
 @public
  /**
   @brief Index of element returned by most recent call to next or previous.
   Reset to -1 if this element is deleted by a call to remove.
   */
  jint lastRet_;
}

- (instancetype)initWithGnuTroveListArrayTDoubleArrayList:(GnuTroveListArrayTDoubleArrayList *)outer$
                                                  withInt:(jint)index;

/**
 
 */
- (jboolean)hasNext;

/**
 
 */
- (jdouble)next;

/**
 
 */
- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveListArrayTDoubleArrayList_TDoubleArrayIterator)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveListArrayTDoubleArrayList_TDoubleArrayIterator)

#define GnuTroveListArrayTDoubleArrayList_DEFAULT_CAPACITY 10
#define GnuTroveListArrayTDoubleArrayList_serialVersionUID 1LL

/**
 @brief A resizable, array-backed list of double primitives.
 */
@interface GnuTroveListArrayTDoubleArrayList : NSObject < GnuTroveListTDoubleList, JavaIoExternalizable > {
 @public
  /**
   @brief the data of the list
   */
  IOSDoubleArray *_data_;
  /**
   @brief the index after the last entry in the list
   */
  jint _pos_;
  /**
   @brief the double value that represents null
   */
  jdouble no_entry_value_;
}

/**
 @brief Creates a new <code>TDoubleArrayList</code> instance with the default capacity.
 */
- (instancetype)init;

/**
 @brief Creates a new <code>TDoubleArrayList</code> instance with the specified capacity.
 @param capacity an <code>int</code> value
 */
- (instancetype)initWithInt:(jint)capacity;

/**
 @brief Creates a new <code>TDoubleArrayList</code> instance with the specified capacity.
 @param capacity an <code>int</code> value
 @param no_entry_value an <code>double</code> value that represents null.
 */
- (instancetype)initWithInt:(jint)capacity
                 withDouble:(jdouble)no_entry_value;

/**
 @brief Creates a new <code>TDoubleArrayList</code> instance that contains a copy of the collection passed to us.
 @param collection the collection to copy
 */
- (instancetype)initWithGnuTroveTDoubleCollection:(id<GnuTroveTDoubleCollection>)collection;

/**
 @brief Creates a new <code>TDoubleArrayList</code> instance whose capacity is the length of <tt>values</tt> array and whose initial contents are the specified values.
 <p> A defensive copy of the given values is held by the new instance.
 @param values an <code>double[]</code> value
 */
- (instancetype)initWithDoubleArray:(IOSDoubleArray *)values;

- (instancetype)initWithDoubleArray:(IOSDoubleArray *)values
                         withDouble:(jdouble)no_entry_value
                        withBoolean:(jboolean)wrap;

/**
 @brief Returns a primitive List implementation that wraps around the given primitive array.
 <p/> NOTE: mutating operation are allowed as long as the List does not grow. In that case an IllegalStateException will be thrown
 @param values
 @return 
 */
+ (GnuTroveListArrayTDoubleArrayList *)wrapWithDoubleArray:(IOSDoubleArray *)values;

/**
 @brief Returns a primitive List implementation that wraps around the given primitive array.
 <p/> NOTE: mutating operation are allowed as long as the List does not grow. In that case an IllegalStateException will be thrown
 @param values
 @param no_entry_value
 @return 
 */
+ (GnuTroveListArrayTDoubleArrayList *)wrapWithDoubleArray:(IOSDoubleArray *)values
                                                withDouble:(jdouble)no_entry_value;

/**
 
 */
- (jdouble)getNoEntryValue;

/**
 @brief Grow the internal array as needed to accommodate the specified number of elements.
 The size of the array bytes on each resize unless capacity requires more than twice the current capacity.
 */
- (void)ensureCapacityWithInt:(jint)capacity;

/**
 
 */
- (jint)size;

/**
 
 */
- (jboolean)isEmpty;

/**
 @brief Sheds any excess capacity above and beyond the current size of the list.
 */
- (void)trimToSize;

/**
 
 */
- (jboolean)addWithDouble:(jdouble)val;

/**
 
 */
- (void)addWithDoubleArray:(IOSDoubleArray *)vals;

/**
 
 */
- (void)addWithDoubleArray:(IOSDoubleArray *)vals
                   withInt:(jint)offset
                   withInt:(jint)length;

/**
 
 */
- (void)insertWithInt:(jint)offset
           withDouble:(jdouble)value;

/**
 
 */
- (void)insertWithInt:(jint)offset
      withDoubleArray:(IOSDoubleArray *)values;

/**
 
 */
- (void)insertWithInt:(jint)offset
      withDoubleArray:(IOSDoubleArray *)values
              withInt:(jint)valOffset
              withInt:(jint)len;

/**
 
 */
- (jdouble)getWithInt:(jint)offset;

/**
 @brief Returns the value at the specified offset without doing any bounds checking.
 */
- (jdouble)getQuickWithInt:(jint)offset;

/**
 
 */
- (jdouble)setWithInt:(jint)offset
           withDouble:(jdouble)val;

/**
 
 */
- (jdouble)replaceWithInt:(jint)offset
               withDouble:(jdouble)val;

/**
 
 */
- (void)setWithInt:(jint)offset
   withDoubleArray:(IOSDoubleArray *)values;

/**
 
 */
- (void)setWithInt:(jint)offset
   withDoubleArray:(IOSDoubleArray *)values
           withInt:(jint)valOffset
           withInt:(jint)length;

/**
 @brief Sets the value at the specified offset without doing any bounds checking.
 */
- (void)setQuickWithInt:(jint)offset
             withDouble:(jdouble)val;

/**
 
 */
- (void)clear;

/**
 @brief Flushes the internal state of the list, setting the capacity of the empty list to <tt>capacity</tt>.
 */
- (void)clearWithInt:(jint)capacity;

/**
 @brief Sets the size of the list to 0, but does not change its capacity.
 This method can be used as an alternative to the #clear() method if you want to recycle a list without allocating new backing arrays.
 */
- (void)reset;

/**
 @brief Sets the size of the list to 0, but does not change its capacity.
 This method can be used as an alternative to the #clear() method if you want to recycle a list without allocating new backing arrays. This method differs from #reset() in that it does not clear the old values in the backing array. Thus, it is possible for getQuick to return stale data if this method is used and the caller is careless about bounds checking.
 */
- (void)resetQuick;

/**
 
 */
- (jboolean)removeWithDouble:(jdouble)value;

/**
 
 */
- (jdouble)removeAtWithInt:(jint)offset;

/**
 
 */
- (void)removeWithInt:(jint)offset
              withInt:(jint)length;

/**
 
 */
- (id<GnuTroveIteratorTDoubleIterator>)iterator;

/**
 
 */
- (jboolean)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)containsAllWithGnuTroveTDoubleCollection:(id<GnuTroveTDoubleCollection>)collection;

/**
 
 */
- (jboolean)containsAllWithDoubleArray:(IOSDoubleArray *)array;

/**
 
 */
- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)addAllWithGnuTroveTDoubleCollection:(id<GnuTroveTDoubleCollection>)collection;

/**
 
 */
- (jboolean)addAllWithDoubleArray:(IOSDoubleArray *)array;

/**
 
 */
- (jboolean)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)retainAllWithGnuTroveTDoubleCollection:(id<GnuTroveTDoubleCollection>)collection;

/**
 
 */
- (jboolean)retainAllWithDoubleArray:(IOSDoubleArray *)array;

/**
 
 */
- (jboolean)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)removeAllWithGnuTroveTDoubleCollection:(id<GnuTroveTDoubleCollection>)collection;

/**
 
 */
- (jboolean)removeAllWithDoubleArray:(IOSDoubleArray *)array;

/**
 
 */
- (void)transformValuesWithGnuTroveFunctionTDoubleFunction:(id<GnuTroveFunctionTDoubleFunction>)function;

/**
 
 */
- (void)reverse;

/**
 
 */
- (void)reverseWithInt:(jint)from
               withInt:(jint)to;

/**
 
 */
- (void)shuffleWithJavaUtilRandom:(JavaUtilRandom *)rand;

/**
 
 */
- (id<GnuTroveListTDoubleList>)subListWithInt:(jint)begin
                                      withInt:(jint)end;

/**
 
 */
- (IOSDoubleArray *)toArray;

/**
 
 */
- (IOSDoubleArray *)toArrayWithInt:(jint)offset
                           withInt:(jint)len;

/**
 
 */
- (IOSDoubleArray *)toArrayWithDoubleArray:(IOSDoubleArray *)dest;

/**
 
 */
- (IOSDoubleArray *)toArrayWithDoubleArray:(IOSDoubleArray *)dest
                                   withInt:(jint)offset
                                   withInt:(jint)len;

/**
 
 */
- (IOSDoubleArray *)toArrayWithDoubleArray:(IOSDoubleArray *)dest
                                   withInt:(jint)source_pos
                                   withInt:(jint)dest_pos
                                   withInt:(jint)len;

/**
 
 */
- (jboolean)isEqual:(id)other;

/**
 
 */
- (NSUInteger)hash;

/**
 
 */
- (jboolean)forEachWithGnuTroveProcedureTDoubleProcedure:(id<GnuTroveProcedureTDoubleProcedure>)procedure;

/**
 
 */
- (jboolean)forEachDescendingWithGnuTroveProcedureTDoubleProcedure:(id<GnuTroveProcedureTDoubleProcedure>)procedure;

/**
 
 */
- (void)sort;

/**
 
 */
- (void)sortWithInt:(jint)fromIndex
            withInt:(jint)toIndex;

/**
 
 */
- (void)fillWithDouble:(jdouble)val;

/**
 
 */
- (void)fillWithInt:(jint)fromIndex
            withInt:(jint)toIndex
         withDouble:(jdouble)val;

/**
 
 */
- (jint)binarySearchWithDouble:(jdouble)value;

/**
 
 */
- (jint)binarySearchWithDouble:(jdouble)value
                       withInt:(jint)fromIndex
                       withInt:(jint)toIndex;

/**
 
 */
- (jint)indexOfWithDouble:(jdouble)value;

/**
 
 */
- (jint)indexOfWithInt:(jint)offset
            withDouble:(jdouble)value;

/**
 
 */
- (jint)lastIndexOfWithDouble:(jdouble)value;

/**
 
 */
- (jint)lastIndexOfWithInt:(jint)offset
                withDouble:(jdouble)value;

/**
 
 */
- (jboolean)containsWithDouble:(jdouble)value;

/**
 
 */
- (id<GnuTroveListTDoubleList>)grepWithGnuTroveProcedureTDoubleProcedure:(id<GnuTroveProcedureTDoubleProcedure>)condition;

/**
 
 */
- (id<GnuTroveListTDoubleList>)inverseGrepWithGnuTroveProcedureTDoubleProcedure:(id<GnuTroveProcedureTDoubleProcedure>)condition;

/**
 
 */
- (jdouble)max;

/**
 
 */
- (jdouble)min;

/**
 
 */
- (jdouble)sum;

/**
 
 */
- (NSString *)description;

- (void)writeExternalWithJavaIoObjectOutput:(id<JavaIoObjectOutput>)outArg;

- (void)readExternalWithJavaIoObjectInput:(id<JavaIoObjectInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveListArrayTDoubleArrayList)

J2OBJC_FIELD_SETTER(GnuTroveListArrayTDoubleArrayList, _data_, IOSDoubleArray *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT GnuTroveListArrayTDoubleArrayList *GnuTroveListArrayTDoubleArrayList_wrapWithDoubleArray_(IOSDoubleArray *values);

FOUNDATION_EXPORT GnuTroveListArrayTDoubleArrayList *GnuTroveListArrayTDoubleArrayList_wrapWithDoubleArray_withDouble_(IOSDoubleArray *values, jdouble no_entry_value);

J2OBJC_STATIC_FIELD_GETTER(GnuTroveListArrayTDoubleArrayList, serialVersionUID, jlong)

J2OBJC_STATIC_FIELD_GETTER(GnuTroveListArrayTDoubleArrayList, DEFAULT_CAPACITY, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveListArrayTDoubleArrayList)

@interface GnuTroveListArrayTDoubleArrayList_$1 : GnuTroveListArrayTDoubleArrayList {
}

/**
 @brief Growing the wrapped external array is not allow
 */
- (void)ensureCapacityWithInt:(jint)capacity;

- (instancetype)initWithDoubleArray:(IOSDoubleArray *)arg$0
                         withDouble:(jdouble)arg$1
                        withBoolean:(jboolean)arg$2;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveListArrayTDoubleArrayList_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveListArrayTDoubleArrayList_$1)

#endif // _GnuTroveListArrayTDoubleArrayList_H_
