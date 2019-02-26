//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/GHRequest.java
//

#ifndef _GHRequest_H_
#define _GHRequest_H_

@class GHPoint;
@class HintsMap;
@class JavaUtilLocale;
@protocol JavaUtilList;

#include "J2ObjC_header.h"

/**
 @brief GraphHopper request wrapper to simplify requesting GraphHopper.
 <p>
 @author Peter Karich
 @author ratrun
 */
@interface GHRequest : NSObject {
}

- (instancetype)init;

- (instancetype)initWithInt:(jint)size;

/**
 @brief Set routing request from specified startPlace (fromLat, fromLon) to endPlace (toLat, toLon) with a preferred start and end heading.
 Headings are north based azimuth (clockwise) in (0, 360) or NaN for equal preference.
 */
- (instancetype)initWithDouble:(jdouble)fromLat
                    withDouble:(jdouble)fromLon
                    withDouble:(jdouble)toLat
                    withDouble:(jdouble)toLon
                    withDouble:(jdouble)startHeading
                    withDouble:(jdouble)endHeading;

/**
 @brief Set routing request from specified startPlace (fromLat, fromLon) to endPlace (toLat, toLon)
 */
- (instancetype)initWithDouble:(jdouble)fromLat
                    withDouble:(jdouble)fromLon
                    withDouble:(jdouble)toLat
                    withDouble:(jdouble)toLon;

/**
 @brief Set routing request from specified startPlace to endPlace with a preferred start and end heading.
 Headings are north based azimuth (clockwise) in (0, 360) or NaN for equal preference
 */
- (instancetype)initWithGHPoint:(GHPoint *)startPlace
                    withGHPoint:(GHPoint *)endPlace
                     withDouble:(jdouble)startHeading
                     withDouble:(jdouble)endHeading;

- (instancetype)initWithGHPoint:(GHPoint *)startPlace
                    withGHPoint:(GHPoint *)endPlace;

/**
 @brief Set routing request <p>
 @param points List of stopover points in order: start, 1st stop, 2nd stop, ..., end
 @param favoredHeadings List of favored headings for starting (start point) and arrival (via and end points) Headings are north based azimuth (clockwise) in (0, 360) or NaN for equal preference
 */
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)points
                    withJavaUtilList:(id<JavaUtilList>)favoredHeadings;

/**
 @brief Set routing request <p>
 @param points List of stopover points in order: start, 1st stop, 2nd stop, ..., end
 */
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)points;

/**
 @brief Add stopover point to routing request.
 <p>
 @param point geographical position (see GHPoint)
 @param favoredHeading north based azimuth (clockwise) in (0, 360) or NaN for equal preference
 */
- (GHRequest *)addPointWithGHPoint:(GHPoint *)point
                        withDouble:(jdouble)favoredHeading;

/**
 @brief Add stopover point to routing request.
 <p>
 @param point geographical position (see GHPoint)
 */
- (GHRequest *)addPointWithGHPoint:(GHPoint *)point;

/**
 @return north based azimuth (clockwise) in (0, 360) or NaN for equal preference
 */
- (jdouble)getFavoredHeadingWithInt:(jint)i;

/**
 @return if there exist a preferred heading for start/via/end point i
 */
- (jboolean)hasFavoredHeadingWithInt:(jint)i;

- (id<JavaUtilList>)getPoints;

- (NSString *)getAlgorithm;

/**
 @brief For possible values see AlgorithmOptions.
 */
- (GHRequest *)setAlgorithmWithNSString:(NSString *)algo;

- (JavaUtilLocale *)getLocale;

- (GHRequest *)setLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale;

- (GHRequest *)setLocaleWithNSString:(NSString *)localeStr;

- (NSString *)getWeighting;

/**
 @brief By default it supports fastest and shortest.
 Or specify empty to use default.
 */
- (GHRequest *)setWeightingWithNSString:(NSString *)w;

- (NSString *)getVehicle;

/**
 @brief Specifiy car, bike or foot.
 Or specify empty to use default.
 */
- (GHRequest *)setVehicleWithNSString:(NSString *)vehicle;

- (NSString *)description;

- (HintsMap *)getHints;

@end

J2OBJC_EMPTY_STATIC_INIT(GHRequest)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef GHRequest ComGraphhopperGHRequest;

J2OBJC_TYPE_LITERAL_HEADER(GHRequest)

#endif // _GHRequest_H_