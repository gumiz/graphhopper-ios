//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/FlagEncoderFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/routing/util/DefaultFlagEncoderFactory.h"
#include "com/graphhopper/routing/util/FlagEncoder.h"
#include "com/graphhopper/routing/util/FlagEncoderFactory.h"
#include "com/graphhopper/util/PMap.h"

BOOL FlagEncoderFactory_initialized = NO;

NSString * FlagEncoderFactory_CAR_ = @"car";
NSString * FlagEncoderFactory_CAR4WD_ = @"car4wd";
NSString * FlagEncoderFactory_BIKE_ = @"bike";
NSString * FlagEncoderFactory_BIKE2_ = @"bike2";
NSString * FlagEncoderFactory_RACINGBIKE_ = @"racingbike";
NSString * FlagEncoderFactory_MOUNTAINBIKE_ = @"mtb";
NSString * FlagEncoderFactory_FOOT_ = @"foot";
NSString * FlagEncoderFactory_HIKE_ = @"hike";
NSString * FlagEncoderFactory_MOTORCYCLE_ = @"motorcycle";
NSString * FlagEncoderFactory_GENERIC_ = @"generic";
id<FlagEncoderFactory> FlagEncoderFactory_DEFAULT_;

@implementation FlagEncoderFactory

+ (void)initialize {
  if (self == [FlagEncoderFactory class]) {
    JreStrongAssignAndConsume(&FlagEncoderFactory_DEFAULT_, nil, [[DefaultFlagEncoderFactory alloc] init]);
    J2OBJC_SET_INITIALIZED(FlagEncoderFactory)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createFlagEncoderWithNSString:withPMap:", "createFlagEncoder", "Lcom.graphhopper.routing.util.FlagEncoder;", 0x401, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CAR_", NULL, 0x19, "Ljava.lang.String;", &FlagEncoderFactory_CAR_,  },
    { "CAR4WD_", NULL, 0x19, "Ljava.lang.String;", &FlagEncoderFactory_CAR4WD_,  },
    { "BIKE_", NULL, 0x19, "Ljava.lang.String;", &FlagEncoderFactory_BIKE_,  },
    { "BIKE2_", NULL, 0x19, "Ljava.lang.String;", &FlagEncoderFactory_BIKE2_,  },
    { "RACINGBIKE_", NULL, 0x19, "Ljava.lang.String;", &FlagEncoderFactory_RACINGBIKE_,  },
    { "MOUNTAINBIKE_", NULL, 0x19, "Ljava.lang.String;", &FlagEncoderFactory_MOUNTAINBIKE_,  },
    { "FOOT_", NULL, 0x19, "Ljava.lang.String;", &FlagEncoderFactory_FOOT_,  },
    { "HIKE_", NULL, 0x19, "Ljava.lang.String;", &FlagEncoderFactory_HIKE_,  },
    { "MOTORCYCLE_", NULL, 0x19, "Ljava.lang.String;", &FlagEncoderFactory_MOTORCYCLE_,  },
    { "GENERIC_", NULL, 0x19, "Ljava.lang.String;", &FlagEncoderFactory_GENERIC_,  },
    { "DEFAULT_", NULL, 0x19, "Lcom.graphhopper.routing.util.FlagEncoderFactory;", &FlagEncoderFactory_DEFAULT_,  },
  };
  static const J2ObjcClassInfo _FlagEncoderFactory = { 1, "FlagEncoderFactory", "com.graphhopper.routing.util", NULL, 0x201, 1, methods, 11, fields, 0, NULL};
  return &_FlagEncoderFactory;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(FlagEncoderFactory)
