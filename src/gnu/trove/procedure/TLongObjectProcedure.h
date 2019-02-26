//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/procedure/TLongObjectProcedure.java
//

#ifndef _GnuTroveProcedureTLongObjectProcedure_H_
#define _GnuTroveProcedureTLongObjectProcedure_H_

#include "J2ObjC_header.h"

/**
 @brief Interface for procedures that take two parameters of type long and Object.
 */
@protocol GnuTroveProcedureTLongObjectProcedure < NSObject, JavaObject >

/**
 @brief Executes this procedure.
 A false return value indicates that the application executing this procedure should not invoke this procedure again.
 @param a a <code>long</code> value
 @param b an <code>Object</code> value
 @return true if additional invocations of the procedure are allowed.
 */
- (jboolean)executeWithLong:(jlong)a
                     withId:(id)b;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuTroveProcedureTLongObjectProcedure)

J2OBJC_TYPE_LITERAL_HEADER(GnuTroveProcedureTLongObjectProcedure)

#endif // _GnuTroveProcedureTLongObjectProcedure_H_
