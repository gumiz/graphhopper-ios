//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/exceptions/PointOutOfBoundsException.java
//

#ifndef _ComGraphhopperUtilExceptionsPointOutOfBoundsException_H_
#define _ComGraphhopperUtilExceptionsPointOutOfBoundsException_H_

#include "J2ObjC_header.h"
#include "com/graphhopper/util/exceptions/PointNotFoundException.h"

/**
 @brief Refinement of the CannotFindPointException that indicates that a point is placed out of the graphs bounds
 @author Robin Boldt
 */
@interface ComGraphhopperUtilExceptionsPointOutOfBoundsException : ComGraphhopperUtilExceptionsPointNotFoundException {
}

- (instancetype)initWithNSString:(NSString *)var1
                         withInt:(jint)pointIndex;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperUtilExceptionsPointOutOfBoundsException)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperUtilExceptionsPointOutOfBoundsException)

#endif // _ComGraphhopperUtilExceptionsPointOutOfBoundsException_H_
