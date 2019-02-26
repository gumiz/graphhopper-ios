//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/map/hash/TLongIntHashMap.java
//

#ifndef _GnuTroveMapHashTLongIntHashMap_H_
#define _GnuTroveMapHashTLongIntHashMap_H_

@class GnuTroveImplHashTPrimitiveHash;
@class IOSIntArray;
@class IOSLongArray;
@class JavaLangStringBuilder;
@protocol GnuTroveFunctionTIntFunction;
@protocol GnuTroveTLongCollection;
@protocol JavaIoObjectInput;
@protocol JavaIoObjectOutput;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

#include "J2ObjC_header.h"
#include "gnu/trove/TIntCollection.h"
#include "gnu/trove/impl/hash/THashPrimitiveIterator.h"
#include "gnu/trove/impl/hash/TLongIntHash.h"
#include "gnu/trove/iterator/TIntIterator.h"
#include "gnu/trove/iterator/TLongIntIterator.h"
#include "gnu/trove/iterator/TLongIterator.h"
#include "gnu/trove/map/TLongIntMap.h"
#include "gnu/trove/procedure/TIntProcedure.h"
#include "gnu/trove/procedure/TLongIntProcedure.h"
#include "gnu/trove/procedure/TLongProcedure.h"
#include "gnu/trove/set/TLongSet.h"
#include "java/io/Externalizable.h"

#define GnuTroveMapHashTLongIntHashMap_serialVersionUID 1LL

/**
 @brief An open addressed Map implementation for long keys and int values.
 @author Eric D. Friedman
 @author Rob Eden
 @author Jeff Randall
 @version $Id: _K__V_HashMap.template,v 1.1.2.16 2010/03/02 04:09:50 robeden Exp $
 */
@interface GnuTroveMapHashTLongIntHashMap : GnuTroveImplHashTLongIntHash < GnuTroveMapTLongIntMap, JavaIoExternalizable > {
 @public
  /**
   @brief the values of the map
   */
  IOSIntArray *_values_;
}

/**
 @brief Creates a new <code>TLongIntHashMap</code> instance with the default capacity and load factor.
 */
- (instancetype)init;

/**
 @brief Creates a new <code>TLongIntHashMap</code> instance with a prime capacity equal to or greater than <tt>initialCapacity</tt> and with the default load factor.
 @param initialCapacity an <code>int</code> value
 */
- (instancetype)initWithInt:(jint)initialCapacity;

/**
 @brief Creates a new <code>TLongIntHashMap</code> instance with a prime capacity equal to or greater than <tt>initialCapacity</tt> and with the specified load factor.
 @param initialCapacity an <code>int</code> value
 @param loadFactor a <code>float</code> value
 */
- (instancetype)initWithInt:(jint)initialCapacity
                  withFloat:(jfloat)loadFactor;

/**
 @brief Creates a new <code>TLongIntHashMap</code> instance with a prime capacity equal to or greater than <tt>initialCapacity</tt> and with the specified load factor.
 @param initialCapacity an <code>int</code> value
 @param loadFactor a <code>float</code> value
 @param noEntryKey a <code>long</code> value that represents <tt>null</tt> for the Key set.
 @param noEntryValue a <code>int</code> value that represents <tt>null</tt> for the Value set.
 */
- (instancetype)initWithInt:(jint)initialCapacity
                  withFloat:(jfloat)loadFactor
                   withLong:(jlong)noEntryKey
                    withInt:(jint)noEntryValue;

/**
 @brief Creates a new <code>TLongIntHashMap</code> instance containing all of the entries in the map passed in.
 @param keys a <tt>long</tt> array containing the keys for the matching values.
 @param values a <tt>int</tt> array containing the values.
 */
- (instancetype)initWithLongArray:(IOSLongArray *)keys
                     withIntArray:(IOSIntArray *)values;

/**
 @brief Creates a new <code>TLongIntHashMap</code> instance containing all of the entries in the map passed in.
 @param map a <tt>TLongIntMap</tt> that will be duplicated.
 */
- (instancetype)initWithGnuTroveMapTLongIntMap:(id<GnuTroveMapTLongIntMap>)map;

/**
 @brief initializes the hashtable to a prime capacity which is at least <tt>initialCapacity + 1</tt>.
 @param initialCapacity an <code>int</code> value
 @return the actual capacity chosen
 */
- (jint)setUpWithInt:(jint)initialCapacity;

/**
 
 */
- (void)rehashWithInt:(jint)newCapacity;

/**
 
 */
- (jint)putWithLong:(jlong)key
            withInt:(jint)value;

/**
 
 */
- (jint)putIfAbsentWithLong:(jlong)key
                    withInt:(jint)value;

/**
 
 */
- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map;

/**
 
 */
- (void)putAllWithGnuTroveMapTLongIntMap:(id<GnuTroveMapTLongIntMap>)map;

/**
 
 */
- (jint)getWithLong:(jlong)key;

/**
 
 */
- (void)clear;

/**
 
 */
- (jboolean)isEmpty;

/**
 
 */
- (jint)removeWithLong:(jlong)key;

/**
 
 */
- (void)removeAtWithInt:(jint)index;

/**
 
 */
- (id<GnuTroveSetTLongSet>)keySet;

/**
 
 */
- (IOSLongArray *)keys;

/**
 
 */
- (IOSLongArray *)keysWithLongArray:(IOSLongArray *)array;

/**
 
 */
- (id<GnuTroveTIntCollection>)valueCollection;

/**
 
 */
- (IOSIntArray *)values;

/**
 
 */
- (IOSIntArray *)valuesWithIntArray:(IOSIntArray *)array;

/**
 
 */
- (jboolean)containsValueWithInt:(jint)val;

/**
 
 */
- (jboolean)containsKeyWithLong:(jlong)key;

/**
 
 */
- (id<GnuTroveIteratorTLongIntIterator>)iterator;

/**
 
 */
- (jboolean)forEachKeyWithGnuTroveProcedureTLongProcedure:(id<GnuTroveProcedureTLongProcedure>)procedure;

/**
 
 */
- (jboolean)forEachValueWithGnuTroveProcedureTIntProcedure:(id<GnuTroveProcedureTIntProcedure>)procedure;

/**
 
 */
- (jboolean)forEachEntryWithGnuTroveProcedureTLongIntProcedure:(id<GnuTroveProcedureTLongIntProcedure>)procedure;

/**
 
 */
- (void)transformValuesWithGnuTroveFunctionTIntFunction:(id<GnuTroveFunctionTIntFunction>)function;

/**
 
 */
- (jboolean)retainEntriesWithGnuTroveProcedureTLongIntProcedure:(id<GnuTroveProcedureTLongIntProcedure>)procedure;

/**
 
 */
- (jboolean)incrementWithLong:(jlong)key;

/**
 
 */
- (jboolean)adjustValueWithLong:(jlong)key
                        withInt:(jint)amount;

/**
 
 */
- (jint)adjustOrPutValueWithLong:(jlong)key
                         withInt:(jint)adjust_amount
                         withInt:(jint)put_amount;

/**
 
 */
- (jboolean)isEqual:(id)other;

/**
 
 */
- (NSUInteger)hash;

/**
 
 */
- (NSString *)description;

/**
 
 */
- (void)writeExternalWithJavaIoObjectOutput:(id<JavaIoObjectOutput>)outArg;

/**
 
 */
- (void)readExternalWithJavaIoObjectInput:(id<JavaIoObjectInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveMapHashTLongIntHashMap)

J2OBJC_FIELD_SETTER(GnuTroveMapHashTLongIntHashMap, _values_, IOSIntArray *)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(GnuTroveMapHashTLongIntHashMap, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveMapHashTLongIntHashMap)

/**
 @brief a view onto the keys of the map.
 */
@interface GnuTroveMapHashTLongIntHashMap_TKeyView : NSObject < GnuTroveSetTLongSet > {
}

/**
 
 */
- (id<GnuTroveIteratorTLongIterator>)iterator;

/**
 
 */
- (jlong)getNoEntryValue;

/**
 
 */
- (jint)size;

/**
 
 */
- (jboolean)isEmpty;

/**
 
 */
- (jboolean)containsWithLong:(jlong)entry_;

/**
 
 */
- (IOSLongArray *)toArray;

/**
 
 */
- (IOSLongArray *)toArrayWithLongArray:(IOSLongArray *)dest;

/**
 @brief Unsupported when operating upon a Key Set view of a TLongIntMap <p/>
 */
- (jboolean)addWithLong:(jlong)entry_;

/**
 
 */
- (jboolean)removeWithLong:(jlong)entry_;

/**
 
 */
- (jboolean)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)containsAllWithGnuTroveTLongCollection:(id<GnuTroveTLongCollection>)collection;

/**
 
 */
- (jboolean)containsAllWithLongArray:(IOSLongArray *)array;

/**
 @brief Unsupported when operating upon a Key Set view of a TLongIntMap <p/>
 */
- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 @brief Unsupported when operating upon a Key Set view of a TLongIntMap <p/>
 */
- (jboolean)addAllWithGnuTroveTLongCollection:(id<GnuTroveTLongCollection>)collection;

/**
 @brief Unsupported when operating upon a Key Set view of a TLongIntMap <p/>
 */
- (jboolean)addAllWithLongArray:(IOSLongArray *)array;

/**
 
 */
- (jboolean)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)retainAllWithGnuTroveTLongCollection:(id<GnuTroveTLongCollection>)collection;

/**
 
 */
- (jboolean)retainAllWithLongArray:(IOSLongArray *)array;

/**
 
 */
- (jboolean)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)removeAllWithGnuTroveTLongCollection:(id<GnuTroveTLongCollection>)collection;

/**
 
 */
- (jboolean)removeAllWithLongArray:(IOSLongArray *)array;

/**
 
 */
- (void)clear;

/**
 
 */
- (jboolean)forEachWithGnuTroveProcedureTLongProcedure:(id<GnuTroveProcedureTLongProcedure>)procedure;

- (jboolean)isEqual:(id)other;

- (NSUInteger)hash;

- (NSString *)description;

- (instancetype)initWithGnuTroveMapHashTLongIntHashMap:(GnuTroveMapHashTLongIntHashMap *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveMapHashTLongIntHashMap_TKeyView)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveMapHashTLongIntHashMap_TKeyView)

@interface GnuTroveMapHashTLongIntHashMap_TKeyView_$1 : NSObject < GnuTroveProcedureTLongProcedure > {
}

- (jboolean)executeWithLong:(jlong)key;

- (instancetype)initWithJavaLangStringBuilder:(JavaLangStringBuilder *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveMapHashTLongIntHashMap_TKeyView_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveMapHashTLongIntHashMap_TKeyView_$1)

/**
 @brief a view onto the values of the map.
 */
@interface GnuTroveMapHashTLongIntHashMap_TValueView : NSObject < GnuTroveTIntCollection > {
}

/**
 
 */
- (id<GnuTroveIteratorTIntIterator>)iterator;

/**
 
 */
- (jint)getNoEntryValue;

/**
 
 */
- (jint)size;

/**
 
 */
- (jboolean)isEmpty;

/**
 
 */
- (jboolean)containsWithInt:(jint)entry_;

/**
 
 */
- (IOSIntArray *)toArray;

/**
 
 */
- (IOSIntArray *)toArrayWithIntArray:(IOSIntArray *)dest;

- (jboolean)addWithInt:(jint)entry_;

/**
 
 */
- (jboolean)removeWithInt:(jint)entry_;

/**
 
 */
- (jboolean)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)containsAllWithGnuTroveTIntCollection:(id<GnuTroveTIntCollection>)collection;

/**
 
 */
- (jboolean)containsAllWithIntArray:(IOSIntArray *)array;

/**
 
 */
- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)addAllWithGnuTroveTIntCollection:(id<GnuTroveTIntCollection>)collection;

/**
 
 */
- (jboolean)addAllWithIntArray:(IOSIntArray *)array;

/**
 
 */
- (jboolean)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)retainAllWithGnuTroveTIntCollection:(id<GnuTroveTIntCollection>)collection;

/**
 
 */
- (jboolean)retainAllWithIntArray:(IOSIntArray *)array;

/**
 
 */
- (jboolean)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

/**
 
 */
- (jboolean)removeAllWithGnuTroveTIntCollection:(id<GnuTroveTIntCollection>)collection;

/**
 
 */
- (jboolean)removeAllWithIntArray:(IOSIntArray *)array;

/**
 
 */
- (void)clear;

/**
 
 */
- (jboolean)forEachWithGnuTroveProcedureTIntProcedure:(id<GnuTroveProcedureTIntProcedure>)procedure;

/**
 
 */
- (NSString *)description;

- (instancetype)initWithGnuTroveMapHashTLongIntHashMap:(GnuTroveMapHashTLongIntHashMap *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveMapHashTLongIntHashMap_TValueView)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveMapHashTLongIntHashMap_TValueView)

@interface GnuTroveMapHashTLongIntHashMap_TValueView_$1 : NSObject < GnuTroveProcedureTIntProcedure > {
}

- (jboolean)executeWithInt:(jint)value;

- (instancetype)initWithJavaLangStringBuilder:(JavaLangStringBuilder *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveMapHashTLongIntHashMap_TValueView_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveMapHashTLongIntHashMap_TValueView_$1)

@interface GnuTroveMapHashTLongIntHashMap_TLongIntKeyHashIterator : GnuTroveImplHashTHashPrimitiveIterator < GnuTroveIteratorTLongIterator > {
}

/**
 @brief Creates an iterator over the specified map
 @param hash the <tt>TPrimitiveHash</tt> we will be iterating over.
 */
- (instancetype)initWithGnuTroveMapHashTLongIntHashMap:(GnuTroveMapHashTLongIntHashMap *)outer$
                    withGnuTroveImplHashTPrimitiveHash:(GnuTroveImplHashTPrimitiveHash *)hash_;

/**
 
 */
- (jlong)next;

/**
 }
 */
- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveMapHashTLongIntHashMap_TLongIntKeyHashIterator)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveMapHashTLongIntHashMap_TLongIntKeyHashIterator)

@interface GnuTroveMapHashTLongIntHashMap_TLongIntValueHashIterator : GnuTroveImplHashTHashPrimitiveIterator < GnuTroveIteratorTIntIterator > {
}

/**
 @brief Creates an iterator over the specified map
 @param hash the <tt>TPrimitiveHash</tt> we will be iterating over.
 */
- (instancetype)initWithGnuTroveMapHashTLongIntHashMap:(GnuTroveMapHashTLongIntHashMap *)outer$
                    withGnuTroveImplHashTPrimitiveHash:(GnuTroveImplHashTPrimitiveHash *)hash_;

/**
 
 */
- (jint)next;

/**
 }
 */
- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveMapHashTLongIntHashMap_TLongIntValueHashIterator)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveMapHashTLongIntHashMap_TLongIntValueHashIterator)

@interface GnuTroveMapHashTLongIntHashMap_TLongIntHashIterator : GnuTroveImplHashTHashPrimitiveIterator < GnuTroveIteratorTLongIntIterator > {
}

/**
 @brief Creates an iterator over the specified map
 @param map the <tt>TLongIntHashMap</tt> we will be iterating over.
 */
- (instancetype)initWithGnuTroveMapHashTLongIntHashMap:(GnuTroveMapHashTLongIntHashMap *)outer$
                    withGnuTroveMapHashTLongIntHashMap:(GnuTroveMapHashTLongIntHashMap *)map;

/**
 
 */
- (void)advance;

/**
 
 */
- (jlong)key;

/**
 
 */
- (jint)value;

/**
 
 */
- (jint)setValueWithInt:(jint)val;

/**
 }
 */
- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveMapHashTLongIntHashMap_TLongIntHashIterator)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveMapHashTLongIntHashMap_TLongIntHashIterator)

@interface GnuTroveMapHashTLongIntHashMap_$1 : NSObject < GnuTroveProcedureTLongIntProcedure > {
}

- (jboolean)executeWithLong:(jlong)key
                    withInt:(jint)value;

- (instancetype)initWithJavaLangStringBuilder:(JavaLangStringBuilder *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveMapHashTLongIntHashMap_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveMapHashTLongIntHashMap_$1)

#endif // _GnuTroveMapHashTLongIntHashMap_H_