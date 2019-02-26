//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/weighting/AbstractWeighting.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/routing/util/FlagEncoder.h"
#include "com/graphhopper/routing/util/HintsMap.h"
#include "com/graphhopper/routing/weighting/AbstractWeighting.h"
#include "com/graphhopper/routing/weighting/Weighting.h"
#include "com/graphhopper/util/EdgeIteratorState.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalStateException.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation ComGraphhopperRoutingWeightingAbstractWeighting

- (instancetype)initWithFlagEncoder:(id<FlagEncoder>)encoder {
  if (self = [super init]) {
    ComGraphhopperRoutingWeightingAbstractWeighting_set_flagEncoder_(self, encoder);
    if (![((id<FlagEncoder>) nil_chk(flagEncoder_)) isRegistered]) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$@$", @"Make sure you add the FlagEncoder ", flagEncoder_, @" to an EncodingManager before using it elsewhere")] autorelease];
    if (!ComGraphhopperRoutingWeightingAbstractWeighting_isValidNameWithNSString_([self getName])) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$", @"Not a valid name for a Weighting: ", [self getName])] autorelease];
  }
  return self;
}

- (jlong)calcMillisWithEdgeIteratorState:(id<EdgeIteratorState>)edgeState
                             withBoolean:(jboolean)reverse
                                 withInt:(jint)prevOrNextEdgeId {
  jlong flags = [((id<EdgeIteratorState>) nil_chk(edgeState)) getFlags];
  if ((reverse && ![((id<FlagEncoder>) nil_chk(flagEncoder_)) isBackwardWithLong:flags]) || (!reverse && ![((id<FlagEncoder>) nil_chk(flagEncoder_)) isForwardWithLong:flags])) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$Z$Z$Z", @"Calculating time should not require to read speed from edge in wrong direction. Reverse:", reverse, @", fwd:", [((id<FlagEncoder>) nil_chk(flagEncoder_)) isForwardWithLong:flags], @", bwd:", [flagEncoder_ isBackwardWithLong:flags])] autorelease];
  jdouble speed = reverse ? [((id<FlagEncoder>) nil_chk(flagEncoder_)) getReverseSpeedWithLong:flags] : [((id<FlagEncoder>) nil_chk(flagEncoder_)) getSpeedWithLong:flags];
  if (JavaLangDouble_isInfiniteWithDouble_(speed) || JavaLangDouble_isNaNWithDouble_(speed) || speed < 0) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$D", @"Invalid speed stored in edge! ", speed)] autorelease];
  if (speed == 0) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Speed cannot be 0 for unblocked edge, use access properties to mark edge blocked! Should only occur for shortest path calculation. See #242."] autorelease];
  return J2ObjCFpToLong(([edgeState getDistance] * 3600 / speed));
}

- (jboolean)matchesWithHintsMap:(HintsMap *)reqMap {
  return [((NSString *) nil_chk([self getName])) isEqual:[((HintsMap *) nil_chk(reqMap)) getWeighting]] && [((NSString *) nil_chk([((id<FlagEncoder>) nil_chk(flagEncoder_)) description])) isEqual:[reqMap getVehicle]];
}

- (id<FlagEncoder>)getFlagEncoder {
  return flagEncoder_;
}

- (NSUInteger)hash {
  jint hash_ = 7;
  hash_ = 71 * hash_ + ((jint) [((NSString *) nil_chk([self description])) hash]);
  return hash_;
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) return NO;
  if ([self getClass] != [nil_chk(obj) getClass]) return NO;
  id<ComGraphhopperRoutingWeightingWeighting> other = (id<ComGraphhopperRoutingWeightingWeighting>) check_protocol_cast(obj, @protocol(ComGraphhopperRoutingWeightingWeighting));
  return [((NSString *) nil_chk([self description])) isEqual:[other description]];
}

+ (jboolean)isValidNameWithNSString:(NSString *)name {
  return ComGraphhopperRoutingWeightingAbstractWeighting_isValidNameWithNSString_(name);
}

+ (NSString *)weightingToFileNameWithComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)w {
  return ComGraphhopperRoutingWeightingAbstractWeighting_weightingToFileNameWithComGraphhopperRoutingWeightingWeighting_(w);
}

- (NSString *)description {
  return JreStrcat("$C@", [self getName], '|', flagEncoder_);
}

- (void)dealloc {
  RELEASE_(flagEncoder_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComGraphhopperRoutingWeightingAbstractWeighting *)other {
  [super copyAllFieldsTo:other];
  ComGraphhopperRoutingWeightingAbstractWeighting_set_flagEncoder_(other, flagEncoder_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFlagEncoder:", "AbstractWeighting", NULL, 0x1, NULL },
    { "calcMillisWithEdgeIteratorState:withBoolean:withInt:", "calcMillis", "J", 0x1, NULL },
    { "matchesWithHintsMap:", "matches", "Z", 0x1, NULL },
    { "getFlagEncoder", NULL, "Lcom.graphhopper.routing.util.FlagEncoder;", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "isValidNameWithNSString:", "isValidName", "Z", 0x18, NULL },
    { "weightingToFileNameWithComGraphhopperRoutingWeightingWeighting:", "weightingToFileName", "Ljava.lang.String;", 0x9, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "flagEncoder_", NULL, 0x14, "Lcom.graphhopper.routing.util.FlagEncoder;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGraphhopperRoutingWeightingAbstractWeighting = { 1, "AbstractWeighting", "com.graphhopper.routing.weighting", NULL, 0x401, 9, methods, 1, fields, 0, NULL};
  return &_ComGraphhopperRoutingWeightingAbstractWeighting;
}

@end

jboolean ComGraphhopperRoutingWeightingAbstractWeighting_isValidNameWithNSString_(NSString *name) {
  ComGraphhopperRoutingWeightingAbstractWeighting_init();
  if (name == nil || [name isEmpty]) return NO;
  return [((NSString *) nil_chk(name)) matches:@"[\\|_a-z]+"];
}

NSString *ComGraphhopperRoutingWeightingAbstractWeighting_weightingToFileNameWithComGraphhopperRoutingWeightingWeighting_(id<ComGraphhopperRoutingWeightingWeighting> w) {
  ComGraphhopperRoutingWeightingAbstractWeighting_init();
  return [((NSString *) nil_chk([((NSString *) nil_chk([((id<ComGraphhopperRoutingWeightingWeighting>) nil_chk(w)) description])) lowercaseString])) replaceAll:@"\\|" withReplacement:@"_"];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGraphhopperRoutingWeightingAbstractWeighting)