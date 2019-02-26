//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/Parameters.java
//

#ifndef _Parameters_H_
#define _Parameters_H_

#include "J2ObjC_header.h"

/**
 @author Peter Karich
 */
@interface Parameters : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(Parameters)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *Parameters_ROUTING_INIT_PREFIX_;
J2OBJC_STATIC_FIELD_GETTER(Parameters, ROUTING_INIT_PREFIX_, NSString *)
CF_EXTERN_C_END

typedef Parameters ComGraphhopperUtilParameters;

J2OBJC_TYPE_LITERAL_HEADER(Parameters)

/**
 @brief Parameters that can be used for algorithm.
 */
@interface Parameters_Algorithms : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(Parameters_Algorithms)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *Parameters_Algorithms_DIJKSTRA_BI_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms, DIJKSTRA_BI_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_DIJKSTRA_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms, DIJKSTRA_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_DIJKSTRA_ONE_TO_MANY_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms, DIJKSTRA_ONE_TO_MANY_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_ASTAR_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms, ASTAR_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_ASTAR_BI_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms, ASTAR_BI_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_ALT_ROUTE_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms, ALT_ROUTE_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_ROUND_TRIP_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms, ROUND_TRIP_, NSString *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Parameters_Algorithms)

/**
 @brief All public properties for alternative routing.
 */
@interface Parameters_Algorithms_AltRoute : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(Parameters_Algorithms_AltRoute)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *Parameters_Algorithms_AltRoute_MAX_PATHS_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms_AltRoute, MAX_PATHS_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_AltRoute_MAX_WEIGHT_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms_AltRoute, MAX_WEIGHT_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_AltRoute_MAX_SHARE_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms_AltRoute, MAX_SHARE_, NSString *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Parameters_Algorithms_AltRoute)

@interface Parameters_Algorithms_AStar : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(Parameters_Algorithms_AStar)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *Parameters_Algorithms_AStar_EPSILON_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms_AStar, EPSILON_, NSString *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Parameters_Algorithms_AStar)

@interface Parameters_Algorithms_AStarBi : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(Parameters_Algorithms_AStarBi)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *Parameters_Algorithms_AStarBi_EPSILON_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms_AStarBi, EPSILON_, NSString *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Parameters_Algorithms_AStarBi)

/**
 @brief All public properties for round trip calculation.
 */
@interface Parameters_Algorithms_RoundTrip : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(Parameters_Algorithms_RoundTrip)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *Parameters_Algorithms_RoundTrip_DISTANCE_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms_RoundTrip, DISTANCE_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_RoundTrip_SEED_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms_RoundTrip, SEED_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_RoundTrip_HEADING_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms_RoundTrip, HEADING_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Algorithms_RoundTrip_INIT_MAX_RETRIES_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Algorithms_RoundTrip, INIT_MAX_RETRIES_, NSString *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Parameters_Algorithms_RoundTrip)

#define Parameters_Routing_DEFAULT_HEADING_PENALTY 300.0

/**
 @brief Parameters that can be passed as hints and influence routing per request.
 */
@interface Parameters_Routing : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(Parameters_Routing)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *Parameters_Routing_EDGE_BASED_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Routing, EDGE_BASED_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Routing_MAX_VISITED_NODES_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Routing, MAX_VISITED_NODES_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Routing_INIT_MAX_VISITED_NODES_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Routing, INIT_MAX_VISITED_NODES_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Routing_INSTRUCTIONS_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Routing, INSTRUCTIONS_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Routing_CALC_POINTS_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Routing, CALC_POINTS_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Routing_WAY_POINT_MAX_DISTANCE_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Routing, WAY_POINT_MAX_DISTANCE_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Routing_INIT_WAY_POINT_MAX_DISTANCE_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Routing, INIT_WAY_POINT_MAX_DISTANCE_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_Routing_PASS_THROUGH_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Routing, PASS_THROUGH_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(Parameters_Routing, DEFAULT_HEADING_PENALTY, jdouble)

FOUNDATION_EXPORT NSString *Parameters_Routing_HEADING_PENALTY_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_Routing, HEADING_PENALTY_, NSString *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Parameters_Routing)

/**
 @brief Properties for CH routing
 */
@interface Parameters_CH : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(Parameters_CH)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *Parameters_CH_DISABLE_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_CH, DISABLE_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_CH_INIT_DISABLING_ALLOWED_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_CH, INIT_DISABLING_ALLOWED_, NSString *)

FOUNDATION_EXPORT NSString *Parameters_CH_FORCE_HEADING_;
J2OBJC_STATIC_FIELD_GETTER(Parameters_CH, FORCE_HEADING_, NSString *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(Parameters_CH)

#endif // _Parameters_H_
