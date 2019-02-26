//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/RAMDirectory.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/storage/DAType.h"
#include "com/graphhopper/storage/RAMDirectory.h"

@implementation RAMDirectory

- (instancetype)init {
  return [self initRAMDirectoryWithNSString:@"" withBoolean:NO];
}

- (instancetype)initWithNSString:(NSString *)location {
  return [self initRAMDirectoryWithNSString:location withBoolean:NO];
}

- (instancetype)initRAMDirectoryWithNSString:(NSString *)_location
                                 withBoolean:(jboolean)store {
  return [super initWithNSString:_location withDAType:store ? DAType_get_RAM_STORE_() : DAType_get_RAM_()];
}

- (instancetype)initWithNSString:(NSString *)_location
                     withBoolean:(jboolean)store {
  return [self initRAMDirectoryWithNSString:_location withBoolean:store];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "RAMDirectory", NULL, 0x1, NULL },
    { "initWithNSString:", "RAMDirectory", NULL, 0x1, NULL },
    { "initWithNSString:withBoolean:", "RAMDirectory", NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _RAMDirectory = { 1, "RAMDirectory", "com.graphhopper.storage", NULL, 0x1, 3, methods, 0, NULL, 0, NULL};
  return &_RAMDirectory;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RAMDirectory)