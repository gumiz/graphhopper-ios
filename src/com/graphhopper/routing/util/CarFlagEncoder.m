//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/CarFlagEncoder.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/reader/ConditionalTagInspector.h"
#include "com/graphhopper/reader/ReaderRelation.h"
#include "com/graphhopper/reader/ReaderWay.h"
#include "com/graphhopper/routing/util/AbstractFlagEncoder.h"
#include "com/graphhopper/routing/util/CarFlagEncoder.h"
#include "com/graphhopper/routing/util/EncodedDoubleValue.h"
#include "com/graphhopper/routing/util/FlagEncoder.h"
#include "com/graphhopper/util/Helper.h"
#include "com/graphhopper/util/PMap.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/util/Arrays.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@implementation CarFlagEncoder

- (instancetype)init {
  return [self initCarFlagEncoderWithInt:5 withDouble:5 withInt:0];
}

- (instancetype)initCarFlagEncoderWithPMap:(PMap *)properties {
  if (self = [self initCarFlagEncoderWithInt:(jint) [((PMap *) nil_chk(properties)) getLongWithNSString:@"speed_bits" withLong:5] withDouble:[properties getDoubleWithNSString:@"speed_factor" withDouble:5] withInt:[properties getBoolWithNSString:@"turn_costs" withBoolean:NO] ? 1 : 0]) {
    AbstractFlagEncoder_set_properties_(self, properties);
    [self setBlockFordsWithBoolean:[properties getBoolWithNSString:@"block_fords" withBoolean:YES]];
    [self setBlockByDefaultWithBoolean:[properties getBoolWithNSString:@"block_barriers" withBoolean:YES]];
  }
  return self;
}

- (instancetype)initWithPMap:(PMap *)properties {
  return [self initCarFlagEncoderWithPMap:properties];
}

- (instancetype)initWithNSString:(NSString *)propertiesStr {
  return [self initCarFlagEncoderWithPMap:[[[PMap alloc] initWithNSString:propertiesStr] autorelease]];
}

- (instancetype)initCarFlagEncoderWithInt:(jint)speedBits
                               withDouble:(jdouble)speedFactor
                                  withInt:(jint)maxTurnCosts {
  if (self = [super initWithInt:speedBits withDouble:speedFactor withInt:maxTurnCosts]) {
    CarFlagEncoder_setAndConsume_trackTypeSpeedMap_(self, [[JavaUtilHashMap alloc] init]);
    CarFlagEncoder_setAndConsume_badSurfaceSpeedMap_(self, [[JavaUtilHashSet alloc] init]);
    CarFlagEncoder_setAndConsume_defaultSpeedMap_(self, [[JavaUtilHashMap alloc] init]);
    [((id<JavaUtilList>) nil_chk(restrictions_)) addAllWithJavaUtilCollection:JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ @"motorcar", @"motor_vehicle", @"vehicle", @"access" } count:4 type:NSString_class_()])];
    [((id<JavaUtilSet>) nil_chk(restrictedValues_)) addWithId:@"private"];
    [restrictedValues_ addWithId:@"agricultural"];
    [restrictedValues_ addWithId:@"forestry"];
    [restrictedValues_ addWithId:@"no"];
    [restrictedValues_ addWithId:@"restricted"];
    [restrictedValues_ addWithId:@"delivery"];
    [restrictedValues_ addWithId:@"military"];
    [restrictedValues_ addWithId:@"emergency"];
    [((id<JavaUtilSet>) nil_chk(intendedValues_)) addWithId:@"yes"];
    [intendedValues_ addWithId:@"permissive"];
    [((id<JavaUtilSet>) nil_chk(potentialBarriers_)) addWithId:@"gate"];
    [potentialBarriers_ addWithId:@"lift_gate"];
    [potentialBarriers_ addWithId:@"kissing_gate"];
    [potentialBarriers_ addWithId:@"swing_gate"];
    [((id<JavaUtilSet>) nil_chk(absoluteBarriers_)) addWithId:@"bollard"];
    [absoluteBarriers_ addWithId:@"stile"];
    [absoluteBarriers_ addWithId:@"turnstile"];
    [absoluteBarriers_ addWithId:@"cycle_barrier"];
    [absoluteBarriers_ addWithId:@"motorcycle_barrier"];
    [absoluteBarriers_ addWithId:@"block"];
    [absoluteBarriers_ addWithId:@"bus_trap"];
    [absoluteBarriers_ addWithId:@"sump_buster"];
    [trackTypeSpeedMap_ putWithId:@"grade1" withId:JavaLangInteger_valueOfWithInt_(20)];
    [trackTypeSpeedMap_ putWithId:@"grade2" withId:JavaLangInteger_valueOfWithInt_(15)];
    [trackTypeSpeedMap_ putWithId:@"grade3" withId:JavaLangInteger_valueOfWithInt_(10)];
    [badSurfaceSpeedMap_ addWithId:@"cobblestone"];
    [badSurfaceSpeedMap_ addWithId:@"grass_paver"];
    [badSurfaceSpeedMap_ addWithId:@"gravel"];
    [badSurfaceSpeedMap_ addWithId:@"sand"];
    [badSurfaceSpeedMap_ addWithId:@"paving_stones"];
    [badSurfaceSpeedMap_ addWithId:@"dirt"];
    [badSurfaceSpeedMap_ addWithId:@"ground"];
    [badSurfaceSpeedMap_ addWithId:@"grass"];
    [badSurfaceSpeedMap_ addWithId:@"unpaved"];
    [badSurfaceSpeedMap_ addWithId:@"compacted"];
    badSurfaceSpeed_ = 30;
    maxPossibleSpeed_ = 140;
    [defaultSpeedMap_ putWithId:@"motorway" withId:JavaLangInteger_valueOfWithInt_(100)];
    [defaultSpeedMap_ putWithId:@"motorway_link" withId:JavaLangInteger_valueOfWithInt_(70)];
    [defaultSpeedMap_ putWithId:@"motorroad" withId:JavaLangInteger_valueOfWithInt_(90)];
    [defaultSpeedMap_ putWithId:@"trunk" withId:JavaLangInteger_valueOfWithInt_(70)];
    [defaultSpeedMap_ putWithId:@"trunk_link" withId:JavaLangInteger_valueOfWithInt_(65)];
    [defaultSpeedMap_ putWithId:@"primary" withId:JavaLangInteger_valueOfWithInt_(65)];
    [defaultSpeedMap_ putWithId:@"primary_link" withId:JavaLangInteger_valueOfWithInt_(60)];
    [defaultSpeedMap_ putWithId:@"secondary" withId:JavaLangInteger_valueOfWithInt_(60)];
    [defaultSpeedMap_ putWithId:@"secondary_link" withId:JavaLangInteger_valueOfWithInt_(50)];
    [defaultSpeedMap_ putWithId:@"tertiary" withId:JavaLangInteger_valueOfWithInt_(50)];
    [defaultSpeedMap_ putWithId:@"tertiary_link" withId:JavaLangInteger_valueOfWithInt_(40)];
    [defaultSpeedMap_ putWithId:@"unclassified" withId:JavaLangInteger_valueOfWithInt_(30)];
    [defaultSpeedMap_ putWithId:@"residential" withId:JavaLangInteger_valueOfWithInt_(30)];
    [defaultSpeedMap_ putWithId:@"living_street" withId:JavaLangInteger_valueOfWithInt_(5)];
    [defaultSpeedMap_ putWithId:@"service" withId:JavaLangInteger_valueOfWithInt_(20)];
    [defaultSpeedMap_ putWithId:@"road" withId:JavaLangInteger_valueOfWithInt_(20)];
    [defaultSpeedMap_ putWithId:@"track" withId:JavaLangInteger_valueOfWithInt_(15)];
    [self init__];
  }
  return self;
}

- (instancetype)initWithInt:(jint)speedBits
                 withDouble:(jdouble)speedFactor
                    withInt:(jint)maxTurnCosts {
  return [self initCarFlagEncoderWithInt:speedBits withDouble:speedFactor withInt:maxTurnCosts];
}

- (jint)getVersion {
  return 1;
}

- (jint)defineWayBitsWithInt:(jint)index
                     withInt:(jint)shift {
  shift = [super defineWayBitsWithInt:index withInt:shift];
  AbstractFlagEncoder_setAndConsume_speedEncoder_(self, [[EncodedDoubleValue alloc] initWithNSString:@"Speed" withInt:shift withInt:speedBits_ withDouble:speedFactor_ withLong:[((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(defaultSpeedMap_)) getWithId:@"secondary"])) intValue] withInt:maxPossibleSpeed_]);
  return shift + [speedEncoder_ getBits];
}

- (jdouble)getSpeedWithReaderWay:(ReaderWay *)way {
  NSString *highwayValue = [((ReaderWay *) nil_chk(way)) getTagWithNSString:@"highway"];
  JavaLangInteger *speed = [((id<JavaUtilMap>) nil_chk(defaultSpeedMap_)) getWithId:highwayValue];
  if (speed == nil) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$$$@", [self description], @", no speed found for: ", highwayValue, @", tags: ", way)] autorelease];
  if ([((NSString *) nil_chk(highwayValue)) isEqual:@"track"]) {
    NSString *tt = [way getTagWithNSString:@"tracktype"];
    if (!Helper_isEmptyWithNSString_(tt)) {
      JavaLangInteger *tInt = [((id<JavaUtilMap>) nil_chk(trackTypeSpeedMap_)) getWithId:tt];
      if (tInt != nil) speed = tInt;
    }
  }
  return [((JavaLangInteger *) nil_chk(speed)) intValue];
}

- (jlong)acceptWayWithReaderWay:(ReaderWay *)way {
  NSString *highwayValue = [((ReaderWay *) nil_chk(way)) getTagWithNSString:@"highway"];
  if (highwayValue == nil) {
    if ([way hasTagWithNSString:@"route" withJavaUtilSet:ferries_]) {
      NSString *motorcarTag = [way getTagWithNSString:@"motorcar"];
      if (motorcarTag == nil) motorcarTag = [way getTagWithNSString:@"motor_vehicle"];
      if ((motorcarTag == nil && ![way hasTagWithNSString:@"foot" withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]] && ![way hasTagWithNSString:@"bicycle" withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]]) || [@"yes" isEqual:motorcarTag]) return acceptBit_ | ferryBit_;
    }
    return 0;
  }
  if ([@"track" isEqual:highwayValue]) {
    NSString *tt = [way getTagWithNSString:@"tracktype"];
    if (tt != nil && ![tt isEqual:@"grade1"] && ![tt isEqual:@"grade2"] && ![tt isEqual:@"grade3"]) return 0;
  }
  if (![((id<JavaUtilMap>) nil_chk(defaultSpeedMap_)) containsKeyWithId:highwayValue]) return 0;
  if ([way hasTagWithNSString:@"impassable" withId:@"yes"] || [way hasTagWithNSString:@"status" withId:@"impassable"]) return 0;
  NSString *firstValue = [way getFirstPriorityTagWithJavaUtilList:restrictions_];
  if (![((NSString *) nil_chk(firstValue)) isEmpty]) {
    if ([((id<JavaUtilSet>) nil_chk(restrictedValues_)) containsWithId:firstValue] && ![((id<ConditionalTagInspector>) nil_chk([self getConditionalTagInspector])) isRestrictedWayConditionallyPermittedWithReaderWay:way]) return 0;
    if ([((id<JavaUtilSet>) nil_chk(intendedValues_)) containsWithId:firstValue]) return acceptBit_;
  }
  if ([self isBlockFords] && ([@"ford" isEqual:highwayValue] || [way hasTagWithNSString:@"ford" withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]])) return 0;
  if ([((id<ConditionalTagInspector>) nil_chk([self getConditionalTagInspector])) isPermittedWayConditionallyRestrictedWithReaderWay:way]) return 0;
  else return acceptBit_;
}

- (jlong)handleRelationTagsWithReaderRelation:(ReaderRelation *)relation
                                     withLong:(jlong)oldRelationFlags {
  return oldRelationFlags;
}

- (jlong)handleWayTagsWithReaderWay:(ReaderWay *)way
                           withLong:(jlong)allowed
                           withLong:(jlong)relationFlags {
  if (![self isAcceptWithLong:allowed]) return 0;
  jlong flags = 0;
  if (![self isFerryWithLong:allowed]) {
    jdouble speed = [self getSpeedWithReaderWay:way];
    speed = [self applyMaxSpeedWithReaderWay:way withDouble:speed];
    speed = [self applyBadSurfaceSpeedWithReaderWay:way withDouble:speed];
    flags = [self setSpeedWithLong:flags withDouble:speed];
    jboolean isRoundabout = [((ReaderWay *) nil_chk(way)) hasTagWithNSString:@"junction" withId:@"roundabout"];
    if (isRoundabout) flags = [self setBoolWithLong:flags withInt:FlagEncoder_K_ROUNDABOUT withBoolean:YES];
    if ([self isOnewayWithReaderWay:way] || isRoundabout) {
      if ([self isBackwardOnewayWithReaderWay:way]) flags |= backwardBit_;
      if ([self isForwardOnewayWithReaderWay:way]) flags |= forwardBit_;
    }
    else flags |= directionBitMask_;
  }
  else {
    jdouble ferrySpeed = [self getFerrySpeedWithReaderWay:way withDouble:[((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(defaultSpeedMap_)) getWithId:@"living_street"])) intValue] withDouble:[((JavaLangInteger *) nil_chk([defaultSpeedMap_ getWithId:@"service"])) intValue] withDouble:[((JavaLangInteger *) nil_chk([defaultSpeedMap_ getWithId:@"residential"])) intValue]];
    flags = [self setSpeedWithLong:flags withDouble:ferrySpeed];
    flags |= directionBitMask_;
  }
  return flags;
}

- (jboolean)isBackwardOnewayWithReaderWay:(ReaderWay *)way {
  return [((ReaderWay *) nil_chk(way)) hasTagWithNSString:@"oneway" withId:@"-1"] || [way hasTagWithNSString:@"vehicle:forward" withId:@"no"] || [way hasTagWithNSString:@"motor_vehicle:forward" withId:@"no"];
}

- (jboolean)isForwardOnewayWithReaderWay:(ReaderWay *)way {
  return ![((ReaderWay *) nil_chk(way)) hasTagWithNSString:@"oneway" withId:@"-1"] && ![way hasTagWithNSString:@"vehicle:forward" withId:@"no"] && ![way hasTagWithNSString:@"motor_vehicle:forward" withId:@"no"];
}

- (jboolean)isOnewayWithReaderWay:(ReaderWay *)way {
  return [((ReaderWay *) nil_chk(way)) hasTagWithNSString:@"oneway" withJavaUtilSet:oneways_] || [way hasTagWithNSString:@"vehicle:backward" withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]] || [way hasTagWithNSString:@"vehicle:forward" withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]] || [way hasTagWithNSString:@"motor_vehicle:backward" withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]] || [way hasTagWithNSString:@"motor_vehicle:forward" withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]];
}

- (NSString *)getWayInfoWithReaderWay:(ReaderWay *)way {
  NSString *str = @"";
  NSString *highwayValue = [((ReaderWay *) nil_chk(way)) getTagWithNSString:@"highway"];
  if ([@"motorway_link" isEqual:highwayValue]) {
    NSString *destination = [way getTagWithNSString:@"destination"];
    if (!Helper_isEmptyWithNSString_(destination)) {
      jint counter = 0;
      {
        IOSObjectArray *a__ = [((NSString *) nil_chk(destination)) split:@";"];
        NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        NSString * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NSString *d = *b__++;
          if ([((NSString *) nil_chk([((NSString *) nil_chk(d)) trim])) isEmpty]) continue;
          if (counter > 0) str = JreStrcat("$$", str, @", ");
          str = JreStrcat("$$", str, [d trim]);
          counter++;
        }
      }
    }
  }
  if ([str isEmpty]) return str;
  if ([str contains:@","]) return JreStrcat("$$", @"destinations: ", str);
  else return JreStrcat("$$", @"destination: ", str);
}

- (jdouble)applyBadSurfaceSpeedWithReaderWay:(ReaderWay *)way
                                  withDouble:(jdouble)speed {
  if (badSurfaceSpeed_ > 0 && speed > badSurfaceSpeed_ && [((ReaderWay *) nil_chk(way)) hasTagWithNSString:@"surface" withJavaUtilSet:badSurfaceSpeedMap_]) speed = badSurfaceSpeed_;
  return speed;
}

- (NSString *)description {
  return @"car";
}

- (void)dealloc {
  RELEASE_(trackTypeSpeedMap_);
  RELEASE_(badSurfaceSpeedMap_);
  RELEASE_(defaultSpeedMap_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(CarFlagEncoder *)other {
  [super copyAllFieldsTo:other];
  CarFlagEncoder_set_trackTypeSpeedMap_(other, trackTypeSpeedMap_);
  CarFlagEncoder_set_badSurfaceSpeedMap_(other, badSurfaceSpeedMap_);
  other->badSurfaceSpeed_ = badSurfaceSpeed_;
  CarFlagEncoder_set_defaultSpeedMap_(other, defaultSpeedMap_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CarFlagEncoder", NULL, 0x1, NULL },
    { "initWithPMap:", "CarFlagEncoder", NULL, 0x1, NULL },
    { "initWithNSString:", "CarFlagEncoder", NULL, 0x1, NULL },
    { "initWithInt:withDouble:withInt:", "CarFlagEncoder", NULL, 0x1, NULL },
    { "getVersion", NULL, "I", 0x1, NULL },
    { "defineWayBitsWithInt:withInt:", "defineWayBits", "I", 0x1, NULL },
    { "getSpeedWithReaderWay:", "getSpeed", "D", 0x4, NULL },
    { "acceptWayWithReaderWay:", "acceptWay", "J", 0x1, NULL },
    { "handleRelationTagsWithReaderRelation:withLong:", "handleRelationTags", "J", 0x1, NULL },
    { "handleWayTagsWithReaderWay:withLong:withLong:", "handleWayTags", "J", 0x1, NULL },
    { "isBackwardOnewayWithReaderWay:", "isBackwardOneway", "Z", 0x4, NULL },
    { "isForwardOnewayWithReaderWay:", "isForwardOneway", "Z", 0x4, NULL },
    { "isOnewayWithReaderWay:", "isOneway", "Z", 0x4, NULL },
    { "getWayInfoWithReaderWay:", "getWayInfo", "Ljava.lang.String;", 0x1, NULL },
    { "applyBadSurfaceSpeedWithReaderWay:withDouble:", "applyBadSurfaceSpeed", "D", 0x4, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "trackTypeSpeedMap_", NULL, 0x14, "Ljava.util.Map;", NULL,  },
    { "badSurfaceSpeedMap_", NULL, 0x14, "Ljava.util.Set;", NULL,  },
    { "badSurfaceSpeed_", NULL, 0x4, "I", NULL,  },
    { "defaultSpeedMap_", NULL, 0x14, "Ljava.util.Map;", NULL,  },
  };
  static const J2ObjcClassInfo _CarFlagEncoder = { 1, "CarFlagEncoder", "com.graphhopper.routing.util", NULL, 0x1, 16, methods, 4, fields, 0, NULL};
  return &_CarFlagEncoder;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CarFlagEncoder)
