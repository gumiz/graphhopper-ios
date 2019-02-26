//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/reader/dem/HeightTile.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/reader/dem/HeightTile.h"
#include "com/graphhopper/storage/DataAccess.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "java/lang/Short.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"

__attribute__((unused)) static jdouble ComGraphhopperReaderDemHeightTile_includePointWithInt_withJavaUtilConcurrentAtomicAtomicInteger_(ComGraphhopperReaderDemHeightTile *self, jint pointer, JavaUtilConcurrentAtomicAtomicInteger *counter);

@interface ComGraphhopperReaderDemHeightTile () {
 @public
  jint minLat_;
  jint minLon_;
  jint width_;
  jint degree_;
  jdouble lowerBound_;
  jdouble higherBound_;
  id<DataAccess> heights_;
  jboolean calcMean_;
}

- (jdouble)includePointWithInt:(jint)pointer
withJavaUtilConcurrentAtomicAtomicInteger:(JavaUtilConcurrentAtomicAtomicInteger *)counter;
@end

J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemHeightTile, heights_, id<DataAccess>)

@implementation ComGraphhopperReaderDemHeightTile

- (instancetype)initWithInt:(jint)minLat
                    withInt:(jint)minLon
                    withInt:(jint)width
                 withDouble:(jdouble)precision
                    withInt:(jint)degree {
  if (self = [super init]) {
    self->minLat_ = minLat;
    self->minLon_ = minLon;
    self->width_ = width;
    self->lowerBound_ = -1 / precision;
    self->higherBound_ = degree + 1 / precision;
    self->degree_ = degree;
  }
  return self;
}

- (ComGraphhopperReaderDemHeightTile *)setCalcMeanWithBoolean:(jboolean)b {
  self->calcMean_ = b;
  return self;
}

- (jboolean)isSeaLevel {
  return [((id<DataAccess>) nil_chk(heights_)) getHeaderWithInt:0] == 1;
}

- (ComGraphhopperReaderDemHeightTile *)setSeaLevelWithBoolean:(jboolean)b {
  [((id<DataAccess>) nil_chk(heights_)) setHeaderWithInt:0 withInt:b ? 1 : 0];
  return self;
}

- (void)setHeightsWithDataAccess:(id<DataAccess>)da {
  ComGraphhopperReaderDemHeightTile_set_heights_(self, da);
}

- (jdouble)getHeightWithDouble:(jdouble)lat
                    withDouble:(jdouble)lon {
  jdouble deltaLat = JavaLangMath_absWithDouble_(lat - minLat_);
  jdouble deltaLon = JavaLangMath_absWithDouble_(lon - minLon_);
  if (deltaLat > higherBound_ || deltaLat < lowerBound_) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$DCD$$", @"latitude not in boundary of this file:", lat, ',', lon, @", this:", [self description])] autorelease];
  if (deltaLon > higherBound_ || deltaLon < lowerBound_) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$DCD$$", @"longitude not in boundary of this file:", lat, ',', lon, @", this:", [self description])] autorelease];
  jint lonSimilar = J2ObjCFpToInt((width_ / degree_ * deltaLon));
  if (lonSimilar >= width_) lonSimilar = width_ - 1;
  jint latSimilar = width_ - 1 - J2ObjCFpToInt((width_ / degree_ * deltaLat));
  if (latSimilar < 0) latSimilar = 0;
  jint daPointer = 2 * (latSimilar * width_ + lonSimilar);
  jint value = [((id<DataAccess>) nil_chk(heights_)) getShortWithLong:daPointer];
  JavaUtilConcurrentAtomicAtomicInteger *counter = [[[JavaUtilConcurrentAtomicAtomicInteger alloc] initWithInt:1] autorelease];
  if (value == JavaLangShort_MIN_VALUE) return JavaLangDouble_NaN;
  if (calcMean_) {
    if (lonSimilar > 0) value += ComGraphhopperReaderDemHeightTile_includePointWithInt_withJavaUtilConcurrentAtomicAtomicInteger_(self, daPointer - 2, counter);
    if (lonSimilar < width_ - 1) value += ComGraphhopperReaderDemHeightTile_includePointWithInt_withJavaUtilConcurrentAtomicAtomicInteger_(self, daPointer + 2, counter);
    if (latSimilar > 0) value += ComGraphhopperReaderDemHeightTile_includePointWithInt_withJavaUtilConcurrentAtomicAtomicInteger_(self, daPointer - 2 * width_, counter);
    if (latSimilar < width_ - 1) value += ComGraphhopperReaderDemHeightTile_includePointWithInt_withJavaUtilConcurrentAtomicAtomicInteger_(self, daPointer + 2 * width_, counter);
  }
  return (jdouble) value / [counter get];
}

- (jdouble)includePointWithInt:(jint)pointer
withJavaUtilConcurrentAtomicAtomicInteger:(JavaUtilConcurrentAtomicAtomicInteger *)counter {
  return ComGraphhopperReaderDemHeightTile_includePointWithInt_withJavaUtilConcurrentAtomicAtomicInteger_(self, pointer, counter);
}

- (void)toImageWithNSString:(NSString *)imageFile {
}

- (NSString *)description {
  return JreStrcat("ICI", minLat_, ',', minLon_);
}

- (void)dealloc {
  RELEASE_(heights_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComGraphhopperReaderDemHeightTile *)other {
  [super copyAllFieldsTo:other];
  other->minLat_ = minLat_;
  other->minLon_ = minLon_;
  other->width_ = width_;
  other->degree_ = degree_;
  other->lowerBound_ = lowerBound_;
  other->higherBound_ = higherBound_;
  ComGraphhopperReaderDemHeightTile_set_heights_(other, heights_);
  other->calcMean_ = calcMean_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withInt:withDouble:withInt:", "HeightTile", NULL, 0x1, NULL },
    { "setCalcMeanWithBoolean:", "setCalcMean", "Lcom.graphhopper.reader.dem.HeightTile;", 0x1, NULL },
    { "isSeaLevel", NULL, "Z", 0x1, NULL },
    { "setSeaLevelWithBoolean:", "setSeaLevel", "Lcom.graphhopper.reader.dem.HeightTile;", 0x1, NULL },
    { "setHeightsWithDataAccess:", "setHeights", "V", 0x0, NULL },
    { "getHeightWithDouble:withDouble:", "getHeight", "D", 0x1, NULL },
    { "includePointWithInt:withJavaUtilConcurrentAtomicAtomicInteger:", "includePoint", "D", 0x2, NULL },
    { "toImageWithNSString:", "toImage", "V", 0x1, "Ljava.io.IOException;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "minLat_", NULL, 0x12, "I", NULL,  },
    { "minLon_", NULL, 0x12, "I", NULL,  },
    { "width_", NULL, 0x12, "I", NULL,  },
    { "degree_", NULL, 0x12, "I", NULL,  },
    { "lowerBound_", NULL, 0x12, "D", NULL,  },
    { "higherBound_", NULL, 0x12, "D", NULL,  },
    { "heights_", NULL, 0x2, "Lcom.graphhopper.storage.DataAccess;", NULL,  },
    { "calcMean_", NULL, 0x2, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComGraphhopperReaderDemHeightTile = { 1, "HeightTile", "com.graphhopper.reader.dem", NULL, 0x1, 9, methods, 8, fields, 0, NULL};
  return &_ComGraphhopperReaderDemHeightTile;
}

@end

jdouble ComGraphhopperReaderDemHeightTile_includePointWithInt_withJavaUtilConcurrentAtomicAtomicInteger_(ComGraphhopperReaderDemHeightTile *self, jint pointer, JavaUtilConcurrentAtomicAtomicInteger *counter) {
  jshort value = [((id<DataAccess>) nil_chk(self->heights_)) getShortWithLong:pointer];
  if (value == JavaLangShort_MIN_VALUE) return 0;
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(counter)) incrementAndGet];
  return value;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGraphhopperReaderDemHeightTile)
