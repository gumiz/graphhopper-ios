//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/GraphExtension.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/storage/Directory.h"
#include "com/graphhopper/storage/Graph.h"
#include "com/graphhopper/storage/GraphExtension.h"

@interface GraphExtension : NSObject
@end

@implementation GraphExtension

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "isRequireNodeField", NULL, "Z", 0x401, NULL },
    { "isRequireEdgeField", NULL, "Z", 0x401, NULL },
    { "getDefaultNodeFieldValue", NULL, "I", 0x401, NULL },
    { "getDefaultEdgeFieldValue", NULL, "I", 0x401, NULL },
    { "init__WithGraph:withDirectory:", "init", "V", 0x401, NULL },
    { "setSegmentSizeWithInt:", "setSegmentSize", "V", 0x401, NULL },
    { "copyToWithGraphExtension:", "copyTo", "Lcom.graphhopper.storage.GraphExtension;", 0x401, NULL },
  };
  static const J2ObjcClassInfo _GraphExtension = { 1, "GraphExtension", "com.graphhopper.storage", NULL, 0x201, 7, methods, 0, NULL, 0, NULL};
  return &_GraphExtension;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GraphExtension)

@implementation GraphExtension_NoOpExtension

- (jboolean)isRequireNodeField {
  return NO;
}

- (jboolean)isRequireEdgeField {
  return NO;
}

- (jint)getDefaultNodeFieldValue {
  return 0;
}

- (jint)getDefaultEdgeFieldValue {
  return 0;
}

- (void)init__WithGraph:(id<Graph>)graph
          withDirectory:(id<Directory>)dir {
}

- (id<GraphExtension>)createWithLong:(jlong)byteCount {
  return self;
}

- (jboolean)loadExisting {
  return YES;
}

- (void)setSegmentSizeWithInt:(jint)bytes {
}

- (void)flush {
}

- (void)close {
}

- (jlong)getCapacity {
  return 0;
}

- (id<GraphExtension>)copyToWithGraphExtension:(id<GraphExtension>)extStorage {
  return extStorage;
}

- (NSString *)description {
  return @"NoExt";
}

- (jboolean)isClosed {
  return NO;
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "isRequireNodeField", NULL, "Z", 0x1, NULL },
    { "isRequireEdgeField", NULL, "Z", 0x1, NULL },
    { "getDefaultNodeFieldValue", NULL, "I", 0x1, NULL },
    { "getDefaultEdgeFieldValue", NULL, "I", 0x1, NULL },
    { "init__WithGraph:withDirectory:", "init", "V", 0x1, NULL },
    { "createWithLong:", "create", "Lcom.graphhopper.storage.GraphExtension;", 0x1, NULL },
    { "loadExisting", NULL, "Z", 0x1, NULL },
    { "setSegmentSizeWithInt:", "setSegmentSize", "V", 0x1, NULL },
    { "flush", NULL, "V", 0x1, NULL },
    { "close", NULL, "V", 0x1, NULL },
    { "getCapacity", NULL, "J", 0x1, NULL },
    { "copyToWithGraphExtension:", "copyTo", "Lcom.graphhopper.storage.GraphExtension;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "isClosed", NULL, "Z", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _GraphExtension_NoOpExtension = { 1, "NoOpExtension", "com.graphhopper.storage", "GraphExtension", 0x9, 15, methods, 0, NULL, 0, NULL};
  return &_GraphExtension_NoOpExtension;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GraphExtension_NoOpExtension)