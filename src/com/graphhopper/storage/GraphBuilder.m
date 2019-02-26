//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/GraphBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/routing/util/EncodingManager.h"
#include "com/graphhopper/routing/weighting/Weighting.h"
#include "com/graphhopper/storage/CHGraph.h"
#include "com/graphhopper/storage/Directory.h"
#include "com/graphhopper/storage/GraphBuilder.h"
#include "com/graphhopper/storage/GraphExtension.h"
#include "com/graphhopper/storage/GraphHopperStorage.h"
#include "com/graphhopper/storage/MMapDirectory.h"
#include "com/graphhopper/storage/RAMDirectory.h"
#include "com/graphhopper/storage/TurnCostExtension.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"

@interface GraphBuilder () {
 @public
  EncodingManager *encodingManager_;
  NSString *location_;
  jboolean mmap_;
  jboolean store_;
  jboolean elevation_;
  jlong byteCapacity_;
  id<ComGraphhopperRoutingWeightingWeighting> singleCHWeighting_;
}
@end

J2OBJC_FIELD_SETTER(GraphBuilder, encodingManager_, EncodingManager *)
J2OBJC_FIELD_SETTER(GraphBuilder, location_, NSString *)
J2OBJC_FIELD_SETTER(GraphBuilder, singleCHWeighting_, id<ComGraphhopperRoutingWeightingWeighting>)

@implementation GraphBuilder

- (instancetype)initWithEncodingManager:(EncodingManager *)encodingManager {
  if (self = [super init]) {
    byteCapacity_ = 100;
    GraphBuilder_set_encodingManager_(self, encodingManager);
  }
  return self;
}

- (GraphBuilder *)setCHGraphWithComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)singleCHWeighting {
  GraphBuilder_set_singleCHWeighting_(self, singleCHWeighting);
  return self;
}

- (GraphBuilder *)setLocationWithNSString:(NSString *)location {
  GraphBuilder_set_location_(self, location);
  return self;
}

- (GraphBuilder *)setStoreWithBoolean:(jboolean)store {
  self->store_ = store;
  return self;
}

- (GraphBuilder *)setMmapWithBoolean:(jboolean)mmap {
  self->mmap_ = mmap;
  return self;
}

- (GraphBuilder *)setExpectedSizeWithByte:(jbyte)cap {
  self->byteCapacity_ = cap;
  return self;
}

- (GraphBuilder *)set3DWithBoolean:(jboolean)withElevation {
  self->elevation_ = withElevation;
  return self;
}

- (jboolean)hasElevation {
  return elevation_;
}

- (id<CHGraph>)chGraphCreateWithComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)singleCHWeighting {
  return [((GraphHopperStorage *) nil_chk([((GraphBuilder *) nil_chk([self setCHGraphWithComGraphhopperRoutingWeightingWeighting:singleCHWeighting])) create])) getGraphWithIOSClass:CHGraph_class_() withComGraphhopperRoutingWeightingWeighting:singleCHWeighting];
}

- (GraphHopperStorage *)build {
  id<Directory> dir;
  if (mmap_) dir = [[[MMapDirectory alloc] initWithNSString:location_] autorelease];
  else dir = [[[RAMDirectory alloc] initWithNSString:location_ withBoolean:store_] autorelease];
  GraphHopperStorage *graph;
  if ([((EncodingManager *) nil_chk(encodingManager_)) needsTurnCostsSupport] || singleCHWeighting_ == nil) graph = [[[GraphHopperStorage alloc] initWithDirectory:dir withEncodingManager:encodingManager_ withBoolean:elevation_ withGraphExtension:[[[TurnCostExtension alloc] init] autorelease]] autorelease];
  else graph = [[[GraphHopperStorage alloc] initWithJavaUtilList:JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ singleCHWeighting_ } count:1 type:ComGraphhopperRoutingWeightingWeighting_class_()]) withDirectory:dir withEncodingManager:encodingManager_ withBoolean:elevation_ withGraphExtension:[[[GraphExtension_NoOpExtension alloc] init] autorelease]] autorelease];
  return graph;
}

- (GraphHopperStorage *)create {
  return [((GraphHopperStorage *) nil_chk([self build])) createWithLong:byteCapacity_];
}

- (GraphHopperStorage *)load__ {
  GraphHopperStorage *gs = [self build];
  if (![((GraphHopperStorage *) nil_chk(gs)) loadExisting]) {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$", @"Cannot load graph ", location_)] autorelease];
  }
  return gs;
}

- (void)dealloc {
  RELEASE_(encodingManager_);
  RELEASE_(location_);
  RELEASE_(singleCHWeighting_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(GraphBuilder *)other {
  [super copyAllFieldsTo:other];
  GraphBuilder_set_encodingManager_(other, encodingManager_);
  GraphBuilder_set_location_(other, location_);
  other->mmap_ = mmap_;
  other->store_ = store_;
  other->elevation_ = elevation_;
  other->byteCapacity_ = byteCapacity_;
  GraphBuilder_set_singleCHWeighting_(other, singleCHWeighting_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithEncodingManager:", "GraphBuilder", NULL, 0x1, NULL },
    { "setCHGraphWithComGraphhopperRoutingWeightingWeighting:", "setCHGraph", "Lcom.graphhopper.storage.GraphBuilder;", 0x1, NULL },
    { "setLocationWithNSString:", "setLocation", "Lcom.graphhopper.storage.GraphBuilder;", 0x1, NULL },
    { "setStoreWithBoolean:", "setStore", "Lcom.graphhopper.storage.GraphBuilder;", 0x1, NULL },
    { "setMmapWithBoolean:", "setMmap", "Lcom.graphhopper.storage.GraphBuilder;", 0x1, NULL },
    { "setExpectedSizeWithByte:", "setExpectedSize", "Lcom.graphhopper.storage.GraphBuilder;", 0x1, NULL },
    { "set3DWithBoolean:", "set3D", "Lcom.graphhopper.storage.GraphBuilder;", 0x1, NULL },
    { "hasElevation", NULL, "Z", 0x1, NULL },
    { "chGraphCreateWithComGraphhopperRoutingWeightingWeighting:", "chGraphCreate", "Lcom.graphhopper.storage.CHGraph;", 0x1, NULL },
    { "build", NULL, "Lcom.graphhopper.storage.GraphHopperStorage;", 0x1, NULL },
    { "create", NULL, "Lcom.graphhopper.storage.GraphHopperStorage;", 0x1, NULL },
    { "load__", "load", "Lcom.graphhopper.storage.GraphHopperStorage;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "encodingManager_", NULL, 0x12, "Lcom.graphhopper.routing.util.EncodingManager;", NULL,  },
    { "location_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "mmap_", NULL, 0x2, "Z", NULL,  },
    { "store_", NULL, 0x2, "Z", NULL,  },
    { "elevation_", NULL, 0x2, "Z", NULL,  },
    { "byteCapacity_", NULL, 0x2, "J", NULL,  },
    { "singleCHWeighting_", NULL, 0x2, "Lcom.graphhopper.routing.weighting.Weighting;", NULL,  },
  };
  static const J2ObjcClassInfo _GraphBuilder = { 1, "GraphBuilder", "com.graphhopper.storage", NULL, 0x1, 12, methods, 7, fields, 0, NULL};
  return &_GraphBuilder;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GraphBuilder)
