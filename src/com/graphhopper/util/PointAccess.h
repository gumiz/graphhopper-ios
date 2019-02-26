//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/PointAccess.java
//

#ifndef _PointAccess_H_
#define _PointAccess_H_

#include "J2ObjC_header.h"

/**
 @author Peter Karich
 */
@protocol PointAccess < NSObject, JavaObject >

/**
 @return true if elevation data is stored and can be retrieved
 */
- (jboolean)is3D;

/**
 @return 3 if elevation enabled. 2 otherwise
 */
- (jint)getDimension;

/**
 @brief This method ensures that the node with the specified index exists i.e. allocates space for it.
 */
- (void)ensureNodeWithInt:(jint)nodeId;

/**
 @brief This method ensures that the node with the specified index exists and prepares access to it.
 The index goes from 0 (inclusive) to graph.getNodes() (exclusive) <p> This methods sets the latitude, longitude and elevation to the specified value.
 */
- (void)setNodeWithInt:(jint)nodeId
            withDouble:(jdouble)lat
            withDouble:(jdouble)lon;

/**
 @brief This method ensures that the node with the specified index exists and prepares access to it.
 The index goes from 0 (inclusive) to graph.getNodes() (exclusive) <p> This methods sets the latitude, longitude and elevation to the specified value.
 */
- (void)setNodeWithInt:(jint)nodeId
            withDouble:(jdouble)lat
            withDouble:(jdouble)lon
            withDouble:(jdouble)ele;

/**
 @return the latitude at the specified node index
 */
- (jdouble)getLatitudeWithInt:(jint)nodeId;

- (jdouble)getLatWithInt:(jint)nodeId;

/**
 @return the longitude at the specified node index
 */
- (jdouble)getLongitudeWithInt:(jint)nodeId;

- (jdouble)getLonWithInt:(jint)nodeId;

/**
 @brief Returns the elevation of the specified nodeId.
 */
- (jdouble)getElevationWithInt:(jint)nodeId;

- (jdouble)getEleWithInt:(jint)nodeId;

@end

J2OBJC_EMPTY_STATIC_INIT(PointAccess)

#define ComGraphhopperUtilPointAccess PointAccess

J2OBJC_TYPE_LITERAL_HEADER(PointAccess)

#endif // _PointAccess_H_
