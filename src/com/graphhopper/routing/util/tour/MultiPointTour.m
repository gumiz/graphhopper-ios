//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/tour/MultiPointTour.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/routing/util/tour/MultiPointTour.h"
#include "com/graphhopper/routing/util/tour/TourStrategy.h"
#include "java/lang/Double.h"
#include "java/util/Random.h"

@interface ComGraphhopperRoutingUtilTourMultiPointTour () {
 @public
  jint allPoints_;
  jdouble initialHeading_;
}
@end

@implementation ComGraphhopperRoutingUtilTourMultiPointTour

- (instancetype)initWithJavaUtilRandom:(JavaUtilRandom *)random
                            withDouble:(jdouble)distanceInMeter
                               withInt:(jint)allPoints {
  return [self initComGraphhopperRoutingUtilTourMultiPointTourWithJavaUtilRandom:random withDouble:distanceInMeter withInt:allPoints withDouble:JavaLangDouble_NaN];
}

- (instancetype)initComGraphhopperRoutingUtilTourMultiPointTourWithJavaUtilRandom:(JavaUtilRandom *)random
                                                                       withDouble:(jdouble)distanceInMeter
                                                                          withInt:(jint)allPoints
                                                                       withDouble:(jdouble)initialHeading {
  if (self = [super initWithJavaUtilRandom:random withDouble:distanceInMeter]) {
    self->allPoints_ = allPoints;
    if (JavaLangDouble_isNaNWithDouble_(initialHeading)) self->initialHeading_ = [((JavaUtilRandom *) nil_chk(random)) nextIntWithInt:360];
    else self->initialHeading_ = initialHeading;
  }
  return self;
}

- (instancetype)initWithJavaUtilRandom:(JavaUtilRandom *)random
                            withDouble:(jdouble)distanceInMeter
                               withInt:(jint)allPoints
                            withDouble:(jdouble)initialHeading {
  return [self initComGraphhopperRoutingUtilTourMultiPointTourWithJavaUtilRandom:random withDouble:distanceInMeter withInt:allPoints withDouble:initialHeading];
}

- (jint)getNumberOfGeneratedPoints {
  return allPoints_ - 1;
}

- (jdouble)getDistanceForIterationWithInt:(jint)iteration {
  return [self slightlyModifyDistanceWithDouble:overallDistance_ / (allPoints_ + 1)];
}

- (jdouble)getHeadingForIterationWithInt:(jint)iteration {
  if (iteration == 0) return initialHeading_;
  return initialHeading_ + 360.0 * iteration / allPoints_;
}

- (void)copyAllFieldsTo:(ComGraphhopperRoutingUtilTourMultiPointTour *)other {
  [super copyAllFieldsTo:other];
  other->allPoints_ = allPoints_;
  other->initialHeading_ = initialHeading_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilRandom:withDouble:withInt:", "MultiPointTour", NULL, 0x1, NULL },
    { "initWithJavaUtilRandom:withDouble:withInt:withDouble:", "MultiPointTour", NULL, 0x1, NULL },
    { "getNumberOfGeneratedPoints", NULL, "I", 0x1, NULL },
    { "getDistanceForIterationWithInt:", "getDistanceForIteration", "D", 0x1, NULL },
    { "getHeadingForIterationWithInt:", "getHeadingForIteration", "D", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "allPoints_", NULL, 0x12, "I", NULL,  },
    { "initialHeading_", NULL, 0x12, "D", NULL,  },
  };
  static const J2ObjcClassInfo _ComGraphhopperRoutingUtilTourMultiPointTour = { 1, "MultiPointTour", "com.graphhopper.routing.util.tour", NULL, 0x1, 5, methods, 2, fields, 0, NULL};
  return &_ComGraphhopperRoutingUtilTourMultiPointTour;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGraphhopperRoutingUtilTourMultiPointTour)
