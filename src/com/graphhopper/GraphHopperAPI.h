//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/GraphHopperAPI.java
//

#ifndef _GraphHopperAPI_H_
#define _GraphHopperAPI_H_

@class GHRequest;
@class GHResponse;

#include "J2ObjC_header.h"

/**
 @brief Wrapper of the graphhopper online or offline API.
 Provides read only access. <p>
 @author Peter Karich
 */
@protocol GraphHopperAPI < NSObject, JavaObject >

/**
 @brief Connects to the specified service (graphhopper URL) or loads a graph from the graphhopper folder.
 <p>
 @return true if successfully connected or loaded
 */
- (jboolean)load__WithNSString:(NSString *)urlOrFile;

/**
 @brief Calculates the path from specified request visiting the specified locations.
 <p>
 @return the response with the route and possible errors
 */
- (GHResponse *)routeWithGHRequest:(GHRequest *)request;

@end

J2OBJC_EMPTY_STATIC_INIT(GraphHopperAPI)

#define ComGraphhopperGraphHopperAPI GraphHopperAPI

J2OBJC_TYPE_LITERAL_HEADER(GraphHopperAPI)

#endif // _GraphHopperAPI_H_