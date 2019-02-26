//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/LevelEdgeFilter.java
//

#ifndef _LevelEdgeFilter_H_
#define _LevelEdgeFilter_H_

@protocol CHGraph;
@protocol EdgeIteratorState;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/util/EdgeFilter.h"

/**
 @brief Only certain nodes are accepted and therefor the others are ignored.
 <p>
 @author Peter Karich
 */
@interface LevelEdgeFilter : NSObject < EdgeFilter > {
}

- (instancetype)initWithCHGraph:(id<CHGraph>)g;

- (jboolean)acceptWithEdgeIteratorState:(id<EdgeIteratorState>)edgeIterState;

@end

J2OBJC_EMPTY_STATIC_INIT(LevelEdgeFilter)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef LevelEdgeFilter ComGraphhopperRoutingUtilLevelEdgeFilter;

J2OBJC_TYPE_LITERAL_HEADER(LevelEdgeFilter)

#endif // _LevelEdgeFilter_H_
