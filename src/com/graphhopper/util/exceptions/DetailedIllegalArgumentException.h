//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/exceptions/DetailedIllegalArgumentException.java
//

#ifndef _ComGraphhopperUtilExceptionsDetailedIllegalArgumentException_H_
#define _ComGraphhopperUtilExceptionsDetailedIllegalArgumentException_H_

@protocol JavaUtilMap;

#include "J2ObjC_header.h"
#include "com/graphhopper/util/exceptions/GHException.h"
#include "java/lang/IllegalArgumentException.h"

/**
 @author Peter Karich
 */
@interface ComGraphhopperUtilExceptionsDetailedIllegalArgumentException : JavaLangIllegalArgumentException < ComGraphhopperUtilExceptionsGHException > {
}

- (instancetype)initWithNSString:(NSString *)var1
                 withJavaUtilMap:(id<JavaUtilMap>)details;

- (id<JavaUtilMap>)getDetails;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperUtilExceptionsDetailedIllegalArgumentException)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperUtilExceptionsDetailedIllegalArgumentException)

#endif // _ComGraphhopperUtilExceptionsDetailedIllegalArgumentException_H_
