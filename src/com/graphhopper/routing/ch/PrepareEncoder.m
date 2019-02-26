//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/routing/ch/PrepareEncoder.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/routing/ch/PrepareEncoder.h"

@interface PrepareEncoder () {
}
@end

@implementation PrepareEncoder

+ (jlong)getScDirMask {
  return PrepareEncoder_getScDirMask();
}

+ (jlong)getScFwdDir {
  return PrepareEncoder_getScFwdDir();
}

+ (jlong)getScBwdDir {
  return PrepareEncoder_getScBwdDir();
}

+ (jboolean)canBeOverwrittenWithLong:(jlong)flags1
                            withLong:(jlong)flags2 {
  return PrepareEncoder_canBeOverwrittenWithLong_withLong_(flags1, flags2);
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getScDirMask", NULL, "J", 0x19, NULL },
    { "getScFwdDir", NULL, "J", 0x19, NULL },
    { "getScBwdDir", NULL, "J", 0x19, NULL },
    { "canBeOverwrittenWithLong:withLong:", "canBeOverwritten", "Z", 0x19, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "scFwdDir_", NULL, 0x1a, "J", NULL, .constantValue.asLong = PrepareEncoder_scFwdDir },
    { "scBwdDir_", NULL, 0x1a, "J", NULL, .constantValue.asLong = PrepareEncoder_scBwdDir },
    { "scDirMask_", NULL, 0x1a, "J", NULL, .constantValue.asLong = PrepareEncoder_scDirMask },
  };
  static const J2ObjcClassInfo _PrepareEncoder = { 1, "PrepareEncoder", "com.graphhopper.routing.ch", NULL, 0x1, 5, methods, 3, fields, 0, NULL};
  return &_PrepareEncoder;
}

@end

jlong PrepareEncoder_getScDirMask() {
  PrepareEncoder_init();
  return PrepareEncoder_scDirMask;
}

jlong PrepareEncoder_getScFwdDir() {
  PrepareEncoder_init();
  return PrepareEncoder_scFwdDir;
}

jlong PrepareEncoder_getScBwdDir() {
  PrepareEncoder_init();
  return PrepareEncoder_scBwdDir;
}

jboolean PrepareEncoder_canBeOverwrittenWithLong_withLong_(jlong flags1, jlong flags2) {
  PrepareEncoder_init();
  return (flags2 & PrepareEncoder_scDirMask) == PrepareEncoder_scDirMask || (flags1 & PrepareEncoder_scDirMask) == (flags2 & PrepareEncoder_scDirMask);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PrepareEncoder)