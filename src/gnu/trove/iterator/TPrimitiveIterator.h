//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/iterator/TPrimitiveIterator.java
//

#ifndef _GnuTroveIteratorTPrimitiveIterator_H_
#define _GnuTroveIteratorTPrimitiveIterator_H_

#include "J2ObjC_header.h"
#include "gnu/trove/iterator/TIterator.h"

/**
 @brief Implements all iterator functions for the hashed object set.
 Subclasses may override objectAtIndex to vary the object returned by calls to next() (e.g. for values, and Map.Entry objects). <p/> <p> Note that iteration is fastest if you forego the calls to <tt>hasNext</tt> in favor of checking the size of the structure yourself and then call next() that many times: <p/> <pre> Iterator i = collection.iterator(); for (int size = collection.size(); size-- > 0;) { Object o = i.next(); } </pre> <p/> <p>You may, of course, use the hasNext(), next() idiom too if you aren't in a performance critical spot.</p>
 */
@protocol GnuTroveIteratorTPrimitiveIterator < GnuTroveIteratorTIterator, NSObject, JavaObject >
/**
 @brief Returns true if the iterator can be advanced past its current location.
 @return a <code>boolean</code> value
 */
- (jboolean)hasNext;

/**
 @brief Removes the last entry returned by the iterator.
 Invoking this method more than once for a single entry will leave the underlying data structure in a confused state.
 */
- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveIteratorTPrimitiveIterator)

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveIteratorTPrimitiveIterator)

#endif // _GnuTroveIteratorTPrimitiveIterator_H_