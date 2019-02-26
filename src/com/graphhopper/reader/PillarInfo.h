//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/reader/PillarInfo.java
//

#ifndef _PillarInfo_H_
#define _PillarInfo_H_

@protocol DataAccess;
@protocol Directory;

#include "J2ObjC_header.h"
#include "com/graphhopper/util/PointAccess.h"

#define PillarInfo_ELE 8
#define PillarInfo_LAT 0
#define PillarInfo_LON 4

/**
 @brief This class helps to store lat,lon,ele for every node parsed in OSMReader <p>
 @author Peter Karich
 */
@interface PillarInfo : NSObject < PointAccess > {
}

- (instancetype)initWithBoolean:(jboolean)enabled3D
                  withDirectory:(id<Directory>)dir;

- (jboolean)is3D;

- (jint)getDimension;

- (void)ensureNodeWithInt:(jint)nodeId;

- (void)setNodeWithInt:(jint)nodeId
            withDouble:(jdouble)lat
            withDouble:(jdouble)lon;

- (void)setNodeWithInt:(jint)nodeId
            withDouble:(jdouble)lat
            withDouble:(jdouble)lon
            withDouble:(jdouble)ele;

- (jdouble)getLatitudeWithInt:(jint)id_;

- (jdouble)getLatWithInt:(jint)id_;

- (jdouble)getLongitudeWithInt:(jint)id_;

- (jdouble)getLonWithInt:(jint)id_;

- (jdouble)getElevationWithInt:(jint)id_;

- (jdouble)getEleWithInt:(jint)id_;

- (void)clear;

@end

J2OBJC_EMPTY_STATIC_INIT(PillarInfo)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(PillarInfo, LAT, jint)

J2OBJC_STATIC_FIELD_GETTER(PillarInfo, LON, jint)

J2OBJC_STATIC_FIELD_GETTER(PillarInfo, ELE, jint)
CF_EXTERN_C_END

typedef PillarInfo ComGraphhopperReaderPillarInfo;

J2OBJC_TYPE_LITERAL_HEADER(PillarInfo)

#endif // _PillarInfo_H_
