//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/util/DefaultEdgeFilter.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/routing/util/DefaultEdgeFilter.h"
#include "com/graphhopper/routing/util/FlagEncoder.h"
#include "com/graphhopper/util/EdgeIteratorState.h"

@interface DefaultEdgeFilter () {
 @public
  jboolean bwd_;
  jboolean fwd_;
  id<FlagEncoder> encoder_;
}
@end

J2OBJC_FIELD_SETTER(DefaultEdgeFilter, encoder_, id<FlagEncoder>)

@implementation DefaultEdgeFilter

- (instancetype)initWithFlagEncoder:(id<FlagEncoder>)encoder {
  return [self initDefaultEdgeFilterWithFlagEncoder:encoder withBoolean:YES withBoolean:YES];
}

- (instancetype)initDefaultEdgeFilterWithFlagEncoder:(id<FlagEncoder>)encoder
                                         withBoolean:(jboolean)bwd
                                         withBoolean:(jboolean)fwd {
  if (self = [super init]) {
    DefaultEdgeFilter_set_encoder_(self, encoder);
    self->bwd_ = bwd;
    self->fwd_ = fwd;
  }
  return self;
}

- (instancetype)initWithFlagEncoder:(id<FlagEncoder>)encoder
                        withBoolean:(jboolean)bwd
                        withBoolean:(jboolean)fwd {
  return [self initDefaultEdgeFilterWithFlagEncoder:encoder withBoolean:bwd withBoolean:fwd];
}

- (jboolean)acceptWithEdgeIteratorState:(id<EdgeIteratorState>)iter {
  return (fwd_ && [((id<EdgeIteratorState>) nil_chk(iter)) isForwardWithFlagEncoder:encoder_]) || (bwd_ && [((id<EdgeIteratorState>) nil_chk(iter)) isBackwardWithFlagEncoder:encoder_]);
}

- (jboolean)acceptsBackward {
  return bwd_;
}

- (jboolean)acceptsForward {
  return fwd_;
}

- (NSString *)description {
  return JreStrcat("$$Z$Z", [((id<FlagEncoder>) nil_chk(encoder_)) description], @", bwd:", bwd_, @", fwd:", fwd_);
}

- (void)dealloc {
  RELEASE_(encoder_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(DefaultEdgeFilter *)other {
  [super copyAllFieldsTo:other];
  other->bwd_ = bwd_;
  other->fwd_ = fwd_;
  DefaultEdgeFilter_set_encoder_(other, encoder_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFlagEncoder:", "DefaultEdgeFilter", NULL, 0x1, NULL },
    { "initWithFlagEncoder:withBoolean:withBoolean:", "DefaultEdgeFilter", NULL, 0x1, NULL },
    { "acceptWithEdgeIteratorState:", "accept", "Z", 0x11, NULL },
    { "acceptsBackward", NULL, "Z", 0x1, NULL },
    { "acceptsForward", NULL, "Z", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bwd_", NULL, 0x12, "Z", NULL,  },
    { "fwd_", NULL, 0x12, "Z", NULL,  },
    { "encoder_", NULL, 0x2, "Lcom.graphhopper.routing.util.FlagEncoder;", NULL,  },
  };
  static const J2ObjcClassInfo _DefaultEdgeFilter = { 1, "DefaultEdgeFilter", "com.graphhopper.routing.util", NULL, 0x1, 6, methods, 3, fields, 0, NULL};
  return &_DefaultEdgeFilter;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DefaultEdgeFilter)
