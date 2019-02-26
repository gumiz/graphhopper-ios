//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/Path.java
//

#ifndef _Path_H_
#define _Path_H_

@class AngleCalc;
@class GnuTroveListArrayTIntArrayList;
@class Instruction;
@class InstructionAnnotation;
@class InstructionList;
@class PointList;
@class SPTEntry;
@class StopWatch;
@protocol ComGraphhopperRoutingWeightingWeighting;
@protocol EdgeExplorer;
@protocol EdgeIteratorState;
@protocol FlagEncoder;
@protocol GnuTroveListTIntList;
@protocol Graph;
@protocol JavaUtilList;
@protocol NodeAccess;
@protocol Path_EdgeVisitor;
@protocol Translation;

#include "J2ObjC_header.h"

/**
 @brief Stores the nodes for the found path of an algorithm.
 It additionally needs the edgeIds to make edge determination faster and less complex as there could be several edges (u,v) especially for graphs with shortcuts. <p>
 @author Peter Karich
 @author Ottavio Campana
 @author jan soe
 */
@interface Path : NSObject {
 @public
  StopWatch *extractSW_;
  id<Graph> graph_;
  jdouble distance_;
  jboolean reverseOrder__;
  jlong time_;
  /**
   @brief Shortest path tree entry
   */
  SPTEntry *sptEntry_;
  jint endNode_;
  id<ComGraphhopperRoutingWeightingWeighting> weighting_;
}

- (instancetype)initWithGraph:(id<Graph>)graph
withComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)weighting;

/**
 @brief Populates an unextracted path instances from the specified path p.
 */
- (instancetype)initWithPath:(Path *)p;

/**
 @return the description of this route alternative to make it meaningful for the user e.g. it displays one or two main roads of the route.
 */
- (id<JavaUtilList>)getDescription;

- (Path *)setDescriptionWithJavaUtilList:(id<JavaUtilList>)description_;

- (Path *)setSPTEntryWithSPTEntry:(SPTEntry *)sptEntry;

- (void)addEdgeWithInt:(jint)edge;

- (Path *)setEndNodeWithInt:(jint)end;

/**
 @brief We need to remember fromNode explicitly as its not saved in one edgeId of edgeIds.
 */
- (Path *)setFromNodeWithInt:(jint)from;

- (jint)getEdgeCount;

- (jboolean)isFound;

- (Path *)setFoundWithBoolean:(jboolean)found;

- (void)reverseOrder;

- (Path *)setDistanceWithDouble:(jdouble)distance;

/**
 @return distance in meter
 */
- (jdouble)getDistance;

/**
 @return time in millis
 */
- (jlong)getTime;

/**
 @brief This weight will be updated during the algorithm.
 The initial value is maximum double.
 */
- (jdouble)getWeight;

- (Path *)setWeightWithDouble:(jdouble)w;

/**
 @brief Extracts the Path from the shortest-path-tree determined by sptEntry.
 */
- (Path *)extract;

/**
 @brief Yields the final edge of the path
 */
- (id<EdgeIteratorState>)getFinalEdge;

/**
 @return the time it took to extract the path in nano (!) seconds
 */
- (jlong)getExtractTime;

- (NSString *)getDebugInfo;

/**
 @brief Calls getDistance and adds the edgeId.
 */
- (void)processEdgeWithInt:(jint)edgeId
                   withInt:(jint)adjNode
                   withInt:(jint)prevEdgeId;

/**
 @brief Calculates the time in millis for the specified distance in meter and speed (in km/h) via flags.
 */
- (jlong)calcMillisWithEdgeIteratorState:(id<EdgeIteratorState>)edge
                             withBoolean:(jboolean)reverse;

/**
 @brief Returns the list of all edges.
 */
- (id<JavaUtilList>)calcEdges;

/**
 @return the uncached node indices of the tower nodes in this path.
 */
- (id<GnuTroveListTIntList>)calcNodes;

/**
 @brief This method calculated a list of points for this path <p>
 @return this path its geometry
 */
- (PointList *)calcPoints;

/**
 @return the list of instructions for this path.
 */
- (InstructionList *)calcInstructionsWithTranslation:(id<Translation>)tr;

- (NSString *)description;

- (NSString *)toDetailsString;

@end

FOUNDATION_EXPORT BOOL Path_initialized;
J2OBJC_STATIC_INIT(Path)

J2OBJC_FIELD_SETTER(Path, extractSW_, StopWatch *)
J2OBJC_FIELD_SETTER(Path, graph_, id<Graph>)
J2OBJC_FIELD_SETTER(Path, sptEntry_, SPTEntry *)
J2OBJC_FIELD_SETTER(Path, weighting_, id<ComGraphhopperRoutingWeightingWeighting>)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT AngleCalc *Path_AC_;
J2OBJC_STATIC_FIELD_GETTER(Path, AC_, AngleCalc *)
CF_EXTERN_C_END

typedef Path ComGraphhopperRoutingPath;

J2OBJC_TYPE_LITERAL_HEADER(Path)

/**
 @brief The callback used in forEveryEdge.
 */
@protocol Path_EdgeVisitor < NSObject, JavaObject >

- (void)nextWithEdgeIteratorState:(id<EdgeIteratorState>)edgeBase
                          withInt:(jint)index;

@end

J2OBJC_EMPTY_STATIC_INIT(Path_EdgeVisitor)

J2OBJC_TYPE_LITERAL_HEADER(Path_EdgeVisitor)

@interface Path_$1 : NSObject < Path_EdgeVisitor > {
}

- (void)nextWithEdgeIteratorState:(id<EdgeIteratorState>)eb
                          withInt:(jint)i;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(Path_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Path_$1)

@interface Path_$2 : NSObject < Path_EdgeVisitor > {
}

- (void)nextWithEdgeIteratorState:(id<EdgeIteratorState>)eb
                          withInt:(jint)i;

- (instancetype)initWithGnuTroveListArrayTIntArrayList:(GnuTroveListArrayTIntArrayList *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(Path_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Path_$2)

@interface Path_$3 : NSObject < Path_EdgeVisitor > {
}

- (void)nextWithEdgeIteratorState:(id<EdgeIteratorState>)eb
                          withInt:(jint)index;

- (instancetype)initWithPointList:(PointList *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(Path_$3)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Path_$3)

@interface Path_$4 : NSObject < Path_EdgeVisitor > {
}

- (void)nextWithEdgeIteratorState:(id<EdgeIteratorState>)edge
                          withInt:(jint)index;

- (instancetype)initWithPath:(Path *)outer$
                     withInt:(jint)capture$0
             withTranslation:(id<Translation>)capture$1
         withInstructionList:(InstructionList *)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(Path_$4)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Path_$4)

#endif // _Path_H_
