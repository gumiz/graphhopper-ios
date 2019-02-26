//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/iterator/TLongIterator.java
//

#ifndef _GnuTroveIteratorTLongIterator_H_
#define _GnuTroveIteratorTLongIterator_H_

#include "J2ObjC_header.h"
#include "gnu/trove/iterator/TIterator.h"

/**
 @brief Iterator for long collections.
 */
@protocol GnuTroveIteratorTLongIterator < GnuTroveIteratorTIterator, NSObject, JavaObject >
/**
 @brief Advances the iterator to the next element in the underlying collection and returns it.
 @return the next long in the collection
 @exception NoSuchElementException if the iterator is already exhausted
 */
- (jlong)next;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveIteratorTLongIterator)

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveIteratorTLongIterator)

#endif // _GnuTroveIteratorTLongIterator_H_
