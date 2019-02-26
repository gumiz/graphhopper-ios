//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/exceptions/PointNotFoundException.java
//

#ifndef _ComGraphhopperUtilExceptionsPointNotFoundException_H_
#define _ComGraphhopperUtilExceptionsPointNotFoundException_H_

@protocol JavaUtilMap;

#include "J2ObjC_header.h"
#include "com/graphhopper/util/exceptions/GHException.h"
#include "java/lang/IllegalArgumentException.h"

/**
 @brief Represents an instance of the "Cannot find Point" Exception, whereas the Point that cannot be found is at pointIndex.
 @author Robin Boldt
 */
@interface ComGraphhopperUtilExceptionsPointNotFoundException : JavaLangIllegalArgumentException < ComGraphhopperUtilExceptionsGHException > {
 @public
  jint pointIndex_;
}

- (instancetype)initWithNSString:(NSString *)var1
                         withInt:(jint)pointIndex;

- (jint)getPointIndex;

- (id<JavaUtilMap>)getDetails;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGraphhopperUtilExceptionsPointNotFoundException)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGraphhopperUtilExceptionsPointNotFoundException)

#endif // _ComGraphhopperUtilExceptionsPointNotFoundException_H_
