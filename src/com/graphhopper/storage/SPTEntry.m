//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/SPTEntry.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/storage/SPTEntry.h"

@implementation SPTEntry

- (instancetype)initWithInt:(jint)edgeId
                    withInt:(jint)adjNode
                 withDouble:(jdouble)weight {
  if (self = [super init]) {
    self->edge_ = edgeId;
    self->adjNode_ = adjNode;
    self->weight_ = weight;
  }
  return self;
}

- (jdouble)getWeightOfVisitedPath {
  return weight_;
}

- (SPTEntry *)clone {
  return [[[SPTEntry alloc] initWithInt:edge_ withInt:adjNode_ withDouble:weight_] autorelease];
}

- (SPTEntry *)cloneFull {
  SPTEntry *de = [self clone];
  SPTEntry *tmpPrev = parent_;
  SPTEntry *cl = de;
  while (tmpPrev != nil) {
    SPTEntry_set_parent_(nil_chk(cl), [((SPTEntry *) nil_chk(tmpPrev)) clone]);
    cl = cl->parent_;
    tmpPrev = tmpPrev->parent_;
  }
  return de;
}

- (jint)compareToWithId:(SPTEntry *)o {
  check_class_cast(o, [SPTEntry class]);
  if (weight_ < ((SPTEntry *) nil_chk(o))->weight_) return -1;
  return weight_ > o->weight_ ? 1 : 0;
}

- (NSString *)description {
  return JreStrcat("I$I$D", adjNode_, @" (", edge_, @") weight: ", weight_);
}

- (void)dealloc {
  RELEASE_(parent_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(SPTEntry *)other {
  [super copyAllFieldsTo:other];
  other->edge_ = edge_;
  other->adjNode_ = adjNode_;
  other->weight_ = weight_;
  SPTEntry_set_parent_(other, parent_);
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withDouble:", "SPTEntry", NULL, 0x1, NULL },
    { "getWeightOfVisitedPath", NULL, "D", 0x1, NULL },
    { "clone", NULL, "Lcom.graphhopper.storage.SPTEntry;", 0x1, NULL },
    { "cloneFull", NULL, "Lcom.graphhopper.storage.SPTEntry;", 0x1, NULL },
    { "compareToWithSPTEntry:", "compareTo", "I", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "edge_", NULL, 0x1, "I", NULL,  },
    { "adjNode_", NULL, 0x1, "I", NULL,  },
    { "weight_", NULL, 0x1, "D", NULL,  },
    { "parent_", NULL, 0x1, "Lcom.graphhopper.storage.SPTEntry;", NULL,  },
  };
  static const J2ObjcClassInfo _SPTEntry = { 1, "SPTEntry", "com.graphhopper.storage", NULL, 0x1, 6, methods, 4, fields, 0, NULL};
  return &_SPTEntry;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(SPTEntry)