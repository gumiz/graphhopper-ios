//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/FootFlagEncoder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/reader/ConditionalTagInspector.h"
#include "com/graphhopper/reader/ReaderRelation.h"
#include "com/graphhopper/reader/ReaderWay.h"
#include "com/graphhopper/routing/util/AbstractFlagEncoder.h"
#include "com/graphhopper/routing/util/EncodedDoubleValue.h"
#include "com/graphhopper/routing/util/EncodedValue.h"
#include "com/graphhopper/routing/util/FlagEncoder.h"
#include "com/graphhopper/routing/util/FootFlagEncoder.h"
#include "com/graphhopper/routing/util/PriorityCode.h"
#include "com/graphhopper/routing/weighting/PriorityWeighting.h"
#include "com/graphhopper/util/PMap.h"
#include "java/lang/Double.h"
#include "java/lang/Integer.h"
#include "java/util/Arrays.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/TreeMap.h"

@interface FootFlagEncoder () {
 @public
  EncodedValue *priorityWayEncoder_;
  EncodedValue *relationCodeEncoder_;
}
@end

J2OBJC_FIELD_SETTER(FootFlagEncoder, priorityWayEncoder_, EncodedValue *)
J2OBJC_FIELD_SETTER(FootFlagEncoder, relationCodeEncoder_, EncodedValue *)

@implementation FootFlagEncoder

- (instancetype)init {
  return [self initFootFlagEncoderWithInt:4 withDouble:1];
}

- (instancetype)initFootFlagEncoderWithPMap:(PMap *)properties {
  if (self = [self initFootFlagEncoderWithInt:(jint) [((PMap *) nil_chk(properties)) getLongWithNSString:@"speedBits" withLong:4] withDouble:[properties getDoubleWithNSString:@"speedFactor" withDouble:1]]) {
    AbstractFlagEncoder_set_properties_(self, properties);
    [self setBlockFordsWithBoolean:[properties getBoolWithNSString:@"block_fords" withBoolean:YES]];
  }
  return self;
}

- (instancetype)initWithPMap:(PMap *)properties {
  return [self initFootFlagEncoderWithPMap:properties];
}

- (instancetype)initWithNSString:(NSString *)propertiesStr {
  return [self initFootFlagEncoderWithPMap:[[[PMap alloc] initWithNSString:propertiesStr] autorelease]];
}

- (instancetype)initFootFlagEncoderWithInt:(jint)speedBits
                                withDouble:(jdouble)speedFactor {
  if (self = [super initWithInt:speedBits withDouble:speedFactor withInt:0]) {
    FootFlagEncoder_setAndConsume_safeHighwayTags_(self, [[JavaUtilHashSet alloc] init]);
    FootFlagEncoder_setAndConsume_allowedHighwayTags_(self, [[JavaUtilHashSet alloc] init]);
    FootFlagEncoder_setAndConsume_avoidHighwayTags_(self, [[JavaUtilHashSet alloc] init]);
    FootFlagEncoder_setAndConsume_hikingNetworkToCode_(self, [[JavaUtilHashMap alloc] init]);
    FootFlagEncoder_setAndConsume_sidewalkValues_(self, [[JavaUtilHashSet alloc] initWithInt:5]);
    FootFlagEncoder_setAndConsume_sidewalksNoValues_(self, [[JavaUtilHashSet alloc] initWithInt:5]);
    [((id<JavaUtilList>) nil_chk(restrictions_)) addAllWithJavaUtilCollection:JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ @"foot", @"access" } count:2 type:NSString_class_()])];
    [((id<JavaUtilSet>) nil_chk(restrictedValues_)) addWithId:@"private"];
    [restrictedValues_ addWithId:@"no"];
    [restrictedValues_ addWithId:@"restricted"];
    [restrictedValues_ addWithId:@"military"];
    [restrictedValues_ addWithId:@"emergency"];
    [((id<JavaUtilSet>) nil_chk(intendedValues_)) addWithId:@"yes"];
    [intendedValues_ addWithId:@"designated"];
    [intendedValues_ addWithId:@"official"];
    [intendedValues_ addWithId:@"permissive"];
    [sidewalksNoValues_ addWithId:@"no"];
    [sidewalksNoValues_ addWithId:@"none"];
    [sidewalksNoValues_ addWithId:@"separate"];
    [sidewalkValues_ addWithId:@"yes"];
    [sidewalkValues_ addWithId:@"both"];
    [sidewalkValues_ addWithId:@"left"];
    [sidewalkValues_ addWithId:@"right"];
    [self setBlockByDefaultWithBoolean:NO];
    [((id<JavaUtilSet>) nil_chk(potentialBarriers_)) addWithId:@"gate"];
    [safeHighwayTags_ addWithId:@"footway"];
    [safeHighwayTags_ addWithId:@"path"];
    [safeHighwayTags_ addWithId:@"steps"];
    [safeHighwayTags_ addWithId:@"pedestrian"];
    [safeHighwayTags_ addWithId:@"living_street"];
    [safeHighwayTags_ addWithId:@"track"];
    [safeHighwayTags_ addWithId:@"residential"];
    [safeHighwayTags_ addWithId:@"service"];
    [avoidHighwayTags_ addWithId:@"trunk"];
    [avoidHighwayTags_ addWithId:@"trunk_link"];
    [avoidHighwayTags_ addWithId:@"primary"];
    [avoidHighwayTags_ addWithId:@"primary_link"];
    [avoidHighwayTags_ addWithId:@"secondary"];
    [avoidHighwayTags_ addWithId:@"secondary_link"];
    [avoidHighwayTags_ addWithId:@"tertiary"];
    [avoidHighwayTags_ addWithId:@"tertiary_link"];
    [allowedHighwayTags_ addAllWithJavaUtilCollection:safeHighwayTags_];
    [allowedHighwayTags_ addAllWithJavaUtilCollection:avoidHighwayTags_];
    [allowedHighwayTags_ addWithId:@"cycleway"];
    [allowedHighwayTags_ addWithId:@"unclassified"];
    [allowedHighwayTags_ addWithId:@"road"];
    [hikingNetworkToCode_ putWithId:@"iwn" withId:JavaLangInteger_valueOfWithInt_([((PriorityCodeEnum *) nil_chk(PriorityCodeEnum_get_UNCHANGED())) getValue])];
    [hikingNetworkToCode_ putWithId:@"nwn" withId:JavaLangInteger_valueOfWithInt_([PriorityCodeEnum_get_UNCHANGED() getValue])];
    [hikingNetworkToCode_ putWithId:@"rwn" withId:JavaLangInteger_valueOfWithInt_([PriorityCodeEnum_get_UNCHANGED() getValue])];
    [hikingNetworkToCode_ putWithId:@"lwn" withId:JavaLangInteger_valueOfWithInt_([PriorityCodeEnum_get_UNCHANGED() getValue])];
    maxPossibleSpeed_ = FootFlagEncoder_FERRY_SPEED;
    [self init__];
  }
  return self;
}

- (instancetype)initWithInt:(jint)speedBits
                 withDouble:(jdouble)speedFactor {
  return [self initFootFlagEncoderWithInt:speedBits withDouble:speedFactor];
}

- (jint)getVersion {
  return 2;
}

- (jint)defineWayBitsWithInt:(jint)index
                     withInt:(jint)shift {
  shift = [super defineWayBitsWithInt:index withInt:shift];
  AbstractFlagEncoder_setAndConsume_speedEncoder_(self, [[EncodedDoubleValue alloc] initWithNSString:@"Speed" withInt:shift withInt:speedBits_ withDouble:speedFactor_ withLong:FootFlagEncoder_MEAN_SPEED withInt:maxPossibleSpeed_]);
  shift += [speedEncoder_ getBits];
  FootFlagEncoder_setAndConsume_priorityWayEncoder_(self, [[EncodedValue alloc] initWithNSString:@"PreferWay" withInt:shift withInt:3 withDouble:1 withLong:0 withInt:7]);
  shift += [priorityWayEncoder_ getBits];
  return shift;
}

- (jint)defineRelationBitsWithInt:(jint)index
                          withInt:(jint)shift {
  FootFlagEncoder_setAndConsume_relationCodeEncoder_(self, [[EncodedValue alloc] initWithNSString:@"RelationCode" withInt:shift withInt:3 withDouble:1 withLong:0 withInt:7]);
  return shift + [relationCodeEncoder_ getBits];
}

- (jint)defineTurnBitsWithInt:(jint)index
                      withInt:(jint)shift {
  return shift;
}

- (jboolean)isTurnRestrictedWithLong:(jlong)flag {
  return NO;
}

- (jdouble)getTurnCostWithLong:(jlong)flag {
  return 0;
}

- (jlong)getTurnFlagsWithBoolean:(jboolean)restricted
                      withDouble:(jdouble)costs {
  return 0;
}

- (jlong)acceptWayWithReaderWay:(ReaderWay *)way {
  NSString *highwayValue = [((ReaderWay *) nil_chk(way)) getTagWithNSString:@"highway"];
  if (highwayValue == nil) {
    if ([way hasTagWithNSString:@"route" withJavaUtilSet:ferries_]) {
      NSString *footTag = [way getTagWithNSString:@"foot"];
      if (footTag == nil || [@"yes" isEqual:footTag]) return acceptBit_ | ferryBit_;
    }
    if ([way hasTagWithNSString:@"railway" withId:@"platform"]) return acceptBit_;
    return 0;
  }
  NSString *sacScale = [way getTagWithNSString:@"sac_scale"];
  if (sacScale != nil) {
    if (![@"hiking" isEqual:sacScale] && ![@"mountain_hiking" isEqual:sacScale] && ![@"demanding_mountain_hiking" isEqual:sacScale] && ![@"alpine_hiking" isEqual:sacScale]) return 0;
  }
  if ([way hasTagWithNSString:@"sidewalk" withJavaUtilSet:sidewalkValues_]) return acceptBit_;
  if ([way hasTagWithNSString:@"foot" withJavaUtilSet:intendedValues_]) return acceptBit_;
  if (![((id<JavaUtilSet>) nil_chk(allowedHighwayTags_)) containsWithId:highwayValue]) return 0;
  if ([way hasTagWithNSString:@"motorroad" withId:@"yes"]) return 0;
  if ([self isBlockFords] && ([way hasTagWithNSString:@"highway" withId:@"ford"] || [way hasTagWithNSString:@"ford" withNSStringArray:[IOSObjectArray arrayWithLength:0 type:NSString_class_()]])) return 0;
  if ([way hasTagWithJavaUtilList:restrictions_ withJavaUtilSet:restrictedValues_] && ![((id<ConditionalTagInspector>) nil_chk([self getConditionalTagInspector])) isRestrictedWayConditionallyPermittedWithReaderWay:way]) return 0;
  if ([((id<ConditionalTagInspector>) nil_chk([self getConditionalTagInspector])) isPermittedWayConditionallyRestrictedWithReaderWay:way]) return 0;
  else return acceptBit_;
}

- (jlong)handleRelationTagsWithReaderRelation:(ReaderRelation *)relation
                                     withLong:(jlong)oldRelationFlags {
  jint code = 0;
  if ([((ReaderRelation *) nil_chk(relation)) hasTagWithNSString:@"route" withId:@"hiking"] || [relation hasTagWithNSString:@"route" withId:@"foot"]) {
    JavaLangInteger *val = [((id<JavaUtilMap>) nil_chk(hikingNetworkToCode_)) getWithId:[relation getTagWithNSString:@"network"]];
    if (val != nil) code = [val intValue];
    else code = [((JavaLangInteger *) nil_chk([hikingNetworkToCode_ getWithId:@"lwn"])) intValue];
  }
  else if ([relation hasTagWithNSString:@"route" withId:@"ferry"]) {
    code = [((PriorityCodeEnum *) nil_chk(PriorityCodeEnum_get_AVOID_IF_POSSIBLE())) getValue];
  }
  jint oldCode = (jint) [((EncodedValue *) nil_chk(relationCodeEncoder_)) getValueWithLong:oldRelationFlags];
  if (oldCode < code) return [relationCodeEncoder_ setValueWithLong:0 withLong:code];
  return oldRelationFlags;
}

- (jlong)handleWayTagsWithReaderWay:(ReaderWay *)way
                           withLong:(jlong)allowed
                           withLong:(jlong)relationFlags {
  if (![self isAcceptWithLong:allowed]) return 0;
  jlong flags = 0;
  if (![self isFerryWithLong:allowed]) {
    NSString *sacScale = [((ReaderWay *) nil_chk(way)) getTagWithNSString:@"sac_scale"];
    if (sacScale != nil) {
      if ([@"hiking" isEqual:sacScale]) flags = [((EncodedDoubleValue *) nil_chk(speedEncoder_)) setDoubleValueWithLong:flags withDouble:FootFlagEncoder_MEAN_SPEED];
      else flags = [((EncodedDoubleValue *) nil_chk(speedEncoder_)) setDoubleValueWithLong:flags withDouble:FootFlagEncoder_SLOW_SPEED];
    }
    else {
      flags = [((EncodedDoubleValue *) nil_chk(speedEncoder_)) setDoubleValueWithLong:flags withDouble:FootFlagEncoder_MEAN_SPEED];
    }
    flags |= directionBitMask_;
    jboolean isRoundabout = [way hasTagWithNSString:@"junction" withId:@"roundabout"];
    if (isRoundabout) flags = [self setBoolWithLong:flags withInt:FlagEncoder_K_ROUNDABOUT withBoolean:YES];
  }
  else {
    jdouble ferrySpeed = [self getFerrySpeedWithReaderWay:way withDouble:FootFlagEncoder_SLOW_SPEED withDouble:FootFlagEncoder_MEAN_SPEED withDouble:FootFlagEncoder_FERRY_SPEED];
    flags = [self setSpeedWithLong:flags withDouble:ferrySpeed];
    flags |= directionBitMask_;
  }
  jint priorityFromRelation = 0;
  if (relationFlags != 0) priorityFromRelation = (jint) [((EncodedValue *) nil_chk(relationCodeEncoder_)) getValueWithLong:relationFlags];
  flags = [((EncodedValue *) nil_chk(priorityWayEncoder_)) setValueWithLong:flags withLong:[self handlePriorityWithReaderWay:way withInt:priorityFromRelation]];
  return flags;
}

- (jdouble)getDoubleWithLong:(jlong)flags
                     withInt:(jint)key {
  switch (key) {
    case ComGraphhopperRoutingWeightingPriorityWeighting_KEY:
    return (jdouble) [((EncodedValue *) nil_chk(priorityWayEncoder_)) getValueWithLong:flags] / [((PriorityCodeEnum *) nil_chk(PriorityCodeEnum_get_BEST())) getValue];
    default:
    return [super getDoubleWithLong:flags withInt:key];
  }
}

- (jint)handlePriorityWithReaderWay:(ReaderWay *)way
                            withInt:(jint)priorityFromRelation {
  JavaUtilTreeMap *weightToPrioMap = [[[JavaUtilTreeMap alloc] init] autorelease];
  if (priorityFromRelation == 0) [weightToPrioMap putWithId:JavaLangDouble_valueOfWithDouble_(0.0) withId:JavaLangInteger_valueOfWithInt_([((PriorityCodeEnum *) nil_chk(PriorityCodeEnum_get_UNCHANGED())) getValue])];
  else [weightToPrioMap putWithId:JavaLangDouble_valueOfWithDouble_(110.0) withId:JavaLangInteger_valueOfWithInt_(priorityFromRelation)];
  [self collectWithReaderWay:way withJavaUtilTreeMap:weightToPrioMap];
  return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap_Entry>) nil_chk([weightToPrioMap lastEntry])) getValue])) intValue];
}

- (void)collectWithReaderWay:(ReaderWay *)way
         withJavaUtilTreeMap:(JavaUtilTreeMap *)weightToPrioMap {
  NSString *highway = [((ReaderWay *) nil_chk(way)) getTagWithNSString:@"highway"];
  if ([way hasTagWithNSString:@"foot" withId:@"designated"]) [((JavaUtilTreeMap *) nil_chk(weightToPrioMap)) putWithId:JavaLangDouble_valueOfWithDouble_(100.0) withId:JavaLangInteger_valueOfWithInt_([((PriorityCodeEnum *) nil_chk(PriorityCodeEnum_get_PREFER())) getValue])];
  jdouble maxSpeed = [self getMaxSpeedWithReaderWay:way];
  if ([((id<JavaUtilSet>) nil_chk(safeHighwayTags_)) containsWithId:highway] || (maxSpeed > 0 && maxSpeed <= 20)) {
    [((JavaUtilTreeMap *) nil_chk(weightToPrioMap)) putWithId:JavaLangDouble_valueOfWithDouble_(40.0) withId:JavaLangInteger_valueOfWithInt_([((PriorityCodeEnum *) nil_chk(PriorityCodeEnum_get_PREFER())) getValue])];
    if ([way hasTagWithNSString:@"tunnel" withJavaUtilSet:intendedValues_]) {
      if ([way hasTagWithNSString:@"sidewalk" withJavaUtilSet:sidewalksNoValues_]) [weightToPrioMap putWithId:JavaLangDouble_valueOfWithDouble_(40.0) withId:JavaLangInteger_valueOfWithInt_([((PriorityCodeEnum *) nil_chk(PriorityCodeEnum_get_AVOID_IF_POSSIBLE())) getValue])];
      else [weightToPrioMap putWithId:JavaLangDouble_valueOfWithDouble_(40.0) withId:JavaLangInteger_valueOfWithInt_([((PriorityCodeEnum *) nil_chk(PriorityCodeEnum_get_UNCHANGED())) getValue])];
    }
  }
  else if (maxSpeed > 50 || [((id<JavaUtilSet>) nil_chk(avoidHighwayTags_)) containsWithId:highway]) {
    if (![way hasTagWithNSString:@"sidewalk" withJavaUtilSet:sidewalkValues_]) [((JavaUtilTreeMap *) nil_chk(weightToPrioMap)) putWithId:JavaLangDouble_valueOfWithDouble_(45.0) withId:JavaLangInteger_valueOfWithInt_([((PriorityCodeEnum *) nil_chk(PriorityCodeEnum_get_AVOID_IF_POSSIBLE())) getValue])];
  }
  if ([way hasTagWithNSString:@"bicycle" withId:@"official"] || [way hasTagWithNSString:@"bicycle" withId:@"designated"]) [((JavaUtilTreeMap *) nil_chk(weightToPrioMap)) putWithId:JavaLangDouble_valueOfWithDouble_(44.0) withId:JavaLangInteger_valueOfWithInt_([((PriorityCodeEnum *) nil_chk(PriorityCodeEnum_get_AVOID_IF_POSSIBLE())) getValue])];
}

- (jboolean)supportsWithIOSClass:(IOSClass *)feature {
  if ([super supportsWithIOSClass:feature]) return YES;
  return [ComGraphhopperRoutingWeightingPriorityWeighting_class_() isAssignableFrom:feature];
}

- (NSString *)description {
  return @"foot";
}

- (void)dealloc {
  RELEASE_(safeHighwayTags_);
  RELEASE_(allowedHighwayTags_);
  RELEASE_(avoidHighwayTags_);
  RELEASE_(hikingNetworkToCode_);
  RELEASE_(sidewalkValues_);
  RELEASE_(sidewalksNoValues_);
  RELEASE_(priorityWayEncoder_);
  RELEASE_(relationCodeEncoder_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(FootFlagEncoder *)other {
  [super copyAllFieldsTo:other];
  FootFlagEncoder_set_safeHighwayTags_(other, safeHighwayTags_);
  FootFlagEncoder_set_allowedHighwayTags_(other, allowedHighwayTags_);
  FootFlagEncoder_set_avoidHighwayTags_(other, avoidHighwayTags_);
  FootFlagEncoder_set_hikingNetworkToCode_(other, hikingNetworkToCode_);
  FootFlagEncoder_set_sidewalkValues_(other, sidewalkValues_);
  FootFlagEncoder_set_sidewalksNoValues_(other, sidewalksNoValues_);
  FootFlagEncoder_set_priorityWayEncoder_(other, priorityWayEncoder_);
  FootFlagEncoder_set_relationCodeEncoder_(other, relationCodeEncoder_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "FootFlagEncoder", NULL, 0x1, NULL },
    { "initWithPMap:", "FootFlagEncoder", NULL, 0x1, NULL },
    { "initWithNSString:", "FootFlagEncoder", NULL, 0x1, NULL },
    { "initWithInt:withDouble:", "FootFlagEncoder", NULL, 0x1, NULL },
    { "getVersion", NULL, "I", 0x1, NULL },
    { "defineWayBitsWithInt:withInt:", "defineWayBits", "I", 0x1, NULL },
    { "defineRelationBitsWithInt:withInt:", "defineRelationBits", "I", 0x1, NULL },
    { "defineTurnBitsWithInt:withInt:", "defineTurnBits", "I", 0x1, NULL },
    { "isTurnRestrictedWithLong:", "isTurnRestricted", "Z", 0x1, NULL },
    { "getTurnCostWithLong:", "getTurnCost", "D", 0x1, NULL },
    { "getTurnFlagsWithBoolean:withDouble:", "getTurnFlags", "J", 0x1, NULL },
    { "acceptWayWithReaderWay:", "acceptWay", "J", 0x1, NULL },
    { "handleRelationTagsWithReaderRelation:withLong:", "handleRelationTags", "J", 0x1, NULL },
    { "handleWayTagsWithReaderWay:withLong:withLong:", "handleWayTags", "J", 0x1, NULL },
    { "getDoubleWithLong:withInt:", "getDouble", "D", 0x1, NULL },
    { "handlePriorityWithReaderWay:withInt:", "handlePriority", "I", 0x4, NULL },
    { "collectWithReaderWay:withJavaUtilTreeMap:", "collect", "V", 0x0, NULL },
    { "supportsWithIOSClass:", "supports", "Z", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SLOW_SPEED_", NULL, 0x18, "I", NULL, .constantValue.asInt = FootFlagEncoder_SLOW_SPEED },
    { "MEAN_SPEED_", NULL, 0x18, "I", NULL, .constantValue.asInt = FootFlagEncoder_MEAN_SPEED },
    { "FERRY_SPEED_", NULL, 0x18, "I", NULL, .constantValue.asInt = FootFlagEncoder_FERRY_SPEED },
    { "safeHighwayTags_", NULL, 0x10, "Ljava.util.Set;", NULL,  },
    { "allowedHighwayTags_", NULL, 0x10, "Ljava.util.Set;", NULL,  },
    { "avoidHighwayTags_", NULL, 0x10, "Ljava.util.Set;", NULL,  },
    { "hikingNetworkToCode_", NULL, 0x10, "Ljava.util.Map;", NULL,  },
    { "sidewalkValues_", NULL, 0x4, "Ljava.util.HashSet;", NULL,  },
    { "sidewalksNoValues_", NULL, 0x4, "Ljava.util.HashSet;", NULL,  },
    { "priorityWayEncoder_", NULL, 0x2, "Lcom.graphhopper.routing.util.EncodedValue;", NULL,  },
    { "relationCodeEncoder_", NULL, 0x2, "Lcom.graphhopper.routing.util.EncodedValue;", NULL,  },
  };
  static const J2ObjcClassInfo _FootFlagEncoder = { 1, "FootFlagEncoder", "com.graphhopper.routing.util", NULL, 0x1, 19, methods, 11, fields, 0, NULL};
  return &_FootFlagEncoder;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(FootFlagEncoder)
