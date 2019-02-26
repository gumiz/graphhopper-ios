//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/PathBidirRef.java
//

#ifndef _PathBidirRef_H_
#define _PathBidirRef_H_

@class SPTEntry;
@protocol ComGraphhopperRoutingWeightingWeighting;
@protocol Graph;

#include "J2ObjC_header.h"
#include "com/graphhopper/routing/Path.h"

/**
 @brief This class creates a DijkstraPath from two Edge's resulting from a BidirectionalDijkstra <p>
 @author Peter Karich
 */
@interface PathBidirRef : Path {
 @public
  SPTEntry *edgeTo_;
}

- (instancetype)initWithGraph:(id<Graph>)g
withComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)weighting;

- (instancetype)initWithPathBidirRef:(PathBidirRef *)p;

- (PathBidirRef *)setSwitchToFromWithBoolean:(jboolean)b;

- (PathBidirRef *)setSPTEntryToWithSPTEntry:(SPTEntry *)edgeTo;

/**
 @brief Extracts path from two shortest-path-tree
 */
- (Path *)extract;

@end

J2OBJC_EMPTY_STATIC_INIT(PathBidirRef)

J2OBJC_FIELD_SETTER(PathBidirRef, edgeTo_, SPTEntry *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef PathBidirRef ComGraphhopperRoutingPathBidirRef;

J2OBJC_TYPE_LITERAL_HEADER(PathBidirRef)

#endif // _PathBidirRef_H_
