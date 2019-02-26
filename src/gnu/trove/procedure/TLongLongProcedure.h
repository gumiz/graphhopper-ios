//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/procedure/TLongLongProcedure.java
//

#ifndef _GnuTroveProcedureTLongLongProcedure_H_
#define _GnuTroveProcedureTLongLongProcedure_H_

#include "J2ObjC_header.h"

/**
 @brief Interface for procedures that take two parameters of type long and long.
 */
@protocol GnuTroveProcedureTLongLongProcedure < NSObject, JavaObject >

/**
 @brief Executes this procedure.
 A false return value indicates that the application executing this procedure should not invoke this procedure again.
 @param a a <code>long</code> value
 @param b a <code>long</code> value
 @return true if additional invocations of the procedure are allowed.
 */
- (jboolean)executeWithLong:(jlong)a
                   withLong:(jlong)b;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveProcedureTLongLongProcedure)

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveProcedureTLongLongProcedure)

#endif // _GnuTroveProcedureTLongLongProcedure_H_
