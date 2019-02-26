//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/iterator/TDoubleIterator.java
//

#ifndef _GnuTroveIteratorTDoubleIterator_H_
#define _GnuTroveIteratorTDoubleIterator_H_

#include "J2ObjC_header.h"
#include "gnu/trove/iterator/TIterator.h"

/**
 @brief Iterator for double collections.
 */
@protocol GnuTroveIteratorTDoubleIterator < GnuTroveIteratorTIterator, NSObject, JavaObject >
/**
 @brief Advances the iterator to the next element in the underlying collection and returns it.
 @return the next double in the collection
 @exception NoSuchElementException if the iterator is already exhausted
 */
- (jdouble)next;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveIteratorTDoubleIterator)

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveIteratorTDoubleIterator)

#endif // _GnuTroveIteratorTDoubleIterator_H_
