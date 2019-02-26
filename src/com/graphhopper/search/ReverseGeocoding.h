//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/search/ReverseGeocoding.java
//

#ifndef _ReverseGeocoding_H_
#define _ReverseGeocoding_H_

@class IOSObjectArray;
@protocol JavaUtilList;

#include "J2ObjC_header.h"

/**
 @brief Interface to convert from points to place names or node ids.
 <p>
 @author Peter Karich
 */
@protocol ReverseGeocoding < NSObject, JavaObject >

/**
 @brief Tries to retrieve a locational string from the specified points (list of lat,lon).
 */
- (id<JavaUtilList>)places2namesWithGHPlaceArray:(IOSObjectArray *)points;

@end

J2OBJC_EMPTY_STATIC_INIT(ReverseGeocoding)

#define ComGraphhopperSearchReverseGeocoding ReverseGeocoding

J2OBJC_TYPE_LITERAL_HEADER(ReverseGeocoding)

#endif // _ReverseGeocoding_H_