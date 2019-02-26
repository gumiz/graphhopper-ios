//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/shapes/BBox.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/util/Helper.h"
#include "com/graphhopper/util/NumHelper.h"
#include "com/graphhopper/util/shapes/BBox.h"
#include "com/graphhopper/util/shapes/Circle.h"
#include "com/graphhopper/util/shapes/Shape.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface BBox () {
 @public
  jboolean elevation_;
}
@end

@implementation BBox

- (instancetype)initWithDouble:(jdouble)minLon
                    withDouble:(jdouble)maxLon
                    withDouble:(jdouble)minLat
                    withDouble:(jdouble)maxLat {
  return [self initBBoxWithDouble:minLon withDouble:maxLon withDouble:minLat withDouble:maxLat withDouble:JavaLangDouble_NaN withDouble:JavaLangDouble_NaN withBoolean:NO];
}

- (instancetype)initWithDouble:(jdouble)minLon
                    withDouble:(jdouble)maxLon
                    withDouble:(jdouble)minLat
                    withDouble:(jdouble)maxLat
                    withDouble:(jdouble)minEle
                    withDouble:(jdouble)maxEle {
  return [self initBBoxWithDouble:minLon withDouble:maxLon withDouble:minLat withDouble:maxLat withDouble:minEle withDouble:maxEle withBoolean:YES];
}

- (instancetype)initBBoxWithDouble:(jdouble)minLon
                        withDouble:(jdouble)maxLon
                        withDouble:(jdouble)minLat
                        withDouble:(jdouble)maxLat
                        withDouble:(jdouble)minEle
                        withDouble:(jdouble)maxEle
                       withBoolean:(jboolean)elevation {
  if (self = [super init]) {
    self->elevation_ = elevation;
    self->maxLat_ = maxLat;
    self->minLon_ = minLon;
    self->minLat_ = minLat;
    self->maxLon_ = maxLon;
    self->minEle_ = minEle;
    self->maxEle_ = maxEle;
  }
  return self;
}

- (instancetype)initWithDouble:(jdouble)minLon
                    withDouble:(jdouble)maxLon
                    withDouble:(jdouble)minLat
                    withDouble:(jdouble)maxLat
                    withDouble:(jdouble)minEle
                    withDouble:(jdouble)maxEle
                   withBoolean:(jboolean)elevation {
  return [self initBBoxWithDouble:minLon withDouble:maxLon withDouble:minLat withDouble:maxLat withDouble:minEle withDouble:maxEle withBoolean:elevation];
}

+ (BBox *)createInverseWithBoolean:(jboolean)elevation {
  return BBox_createInverseWithBoolean_(elevation);
}

- (jboolean)hasElevation {
  return elevation_;
}

- (void)updateWithDouble:(jdouble)lat
              withDouble:(jdouble)lon {
  if (lat > maxLat_) {
    maxLat_ = lat;
  }
  if (lat < minLat_) {
    minLat_ = lat;
  }
  if (lon > maxLon_) {
    maxLon_ = lon;
  }
  if (lon < minLon_) {
    minLon_ = lon;
  }
}

- (void)updateWithDouble:(jdouble)lat
              withDouble:(jdouble)lon
              withDouble:(jdouble)elev {
  if (elevation_) {
    if (elev > maxEle_) {
      maxEle_ = elev;
    }
    if (elev < minEle_) {
      minEle_ = elev;
    }
  }
  else {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"No BBox with elevation to update"] autorelease];
  }
  [self updateWithDouble:lat withDouble:lon];
}

- (BBox *)clone {
  return [[[BBox alloc] initWithDouble:minLon_ withDouble:maxLon_ withDouble:minLat_ withDouble:maxLat_ withDouble:minEle_ withDouble:maxEle_ withBoolean:elevation_] autorelease];
}

- (jboolean)intersectWithShape:(id<Shape>)s {
  if ([s isKindOfClass:[BBox class]]) {
    return [self intersectWithBBox:(BBox *) check_class_cast(s, [BBox class])];
  }
  else if ([s isKindOfClass:[Circle class]]) {
    return [((Circle *) nil_chk(((Circle *) check_class_cast(s, [Circle class])))) intersectWithBBox:self];
  }
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"unsupported shape"] autorelease];
}

- (jboolean)containsWithShape:(id<Shape>)s {
  if ([s isKindOfClass:[BBox class]]) {
    return [self containsWithBBox:(BBox *) check_class_cast(s, [BBox class])];
  }
  else if ([s isKindOfClass:[Circle class]]) {
    return [self containsWithCircle:(Circle *) check_class_cast(s, [Circle class])];
  }
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"unsupported shape"] autorelease];
}

- (jboolean)intersectWithCircle:(Circle *)s {
  return [((Circle *) nil_chk(((Circle *) check_class_cast(s, [Circle class])))) intersectWithBBox:self];
}

- (jboolean)intersectWithBBox:(BBox *)o {
  return minLon_ < ((BBox *) nil_chk(o))->maxLon_ && minLat_ < o->maxLat_ && o->minLon_ < maxLon_ && o->minLat_ < maxLat_;
}

- (jboolean)containsWithDouble:(jdouble)lat
                    withDouble:(jdouble)lon {
  return lat <= maxLat_ && lat >= minLat_ && lon <= maxLon_ && lon >= minLon_;
}

- (jboolean)containsWithBBox:(BBox *)b {
  return maxLat_ >= ((BBox *) nil_chk(b))->maxLat_ && minLat_ <= b->minLat_ && maxLon_ >= b->maxLon_ && minLon_ <= b->minLon_;
}

- (jboolean)containsWithCircle:(Circle *)c {
  return [self containsWithBBox:[((Circle *) nil_chk(c)) getBounds]];
}

- (NSString *)description {
  NSString *str = JreStrcat("DCDCDCD", minLon_, ',', maxLon_, ',', minLat_, ',', maxLat_);
  if (elevation_) str = JreStrcat("$$", str, JreStrcat("CDCD", ',', minEle_, ',', maxEle_));
  return str;
}

- (NSString *)toLessPrecisionString {
  return JreStrcat("FCFCFCF", (jfloat) minLon_, ',', (jfloat) maxLon_, ',', (jfloat) minLat_, ',', (jfloat) maxLat_);
}

- (BBox *)getBounds {
  return self;
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) return NO;
  BBox *b = (BBox *) check_class_cast(obj, [BBox class]);
  return NumHelper_equalsEpsWithDouble_withDouble_(minLat_, ((BBox *) nil_chk(b))->minLat_) && NumHelper_equalsEpsWithDouble_withDouble_(maxLat_, b->maxLat_) && NumHelper_equalsEpsWithDouble_withDouble_(minLon_, b->minLon_) && NumHelper_equalsEpsWithDouble_withDouble_(maxLon_, b->maxLon_);
}

- (NSUInteger)hash {
  jint hash_ = 3;
  hash_ = 17 * hash_ + (jint) (JavaLangDouble_doubleToLongBitsWithDouble_(self->minLon_) ^ (URShift64(JavaLangDouble_doubleToLongBitsWithDouble_(self->minLon_), 32)));
  hash_ = 17 * hash_ + (jint) (JavaLangDouble_doubleToLongBitsWithDouble_(self->maxLon_) ^ (URShift64(JavaLangDouble_doubleToLongBitsWithDouble_(self->maxLon_), 32)));
  hash_ = 17 * hash_ + (jint) (JavaLangDouble_doubleToLongBitsWithDouble_(self->minLat_) ^ (URShift64(JavaLangDouble_doubleToLongBitsWithDouble_(self->minLat_), 32)));
  hash_ = 17 * hash_ + (jint) (JavaLangDouble_doubleToLongBitsWithDouble_(self->maxLat_) ^ (URShift64(JavaLangDouble_doubleToLongBitsWithDouble_(self->maxLat_), 32)));
  return hash_;
}

- (jboolean)isValid {
  if (minLon_ >= maxLon_) return NO;
  if (minLat_ >= maxLat_) return NO;
  if (elevation_) {
    if (minEle_ > maxEle_) return NO;
    if (JavaLangDouble_compareWithDouble_withDouble_(maxEle_, -JavaLangDouble_MAX_VALUE) == 0 || JavaLangDouble_compareWithDouble_withDouble_(minEle_, JavaLangDouble_MAX_VALUE) == 0) return NO;
  }
  return JavaLangDouble_compareWithDouble_withDouble_(maxLat_, -JavaLangDouble_MAX_VALUE) != 0 && JavaLangDouble_compareWithDouble_withDouble_(minLat_, JavaLangDouble_MAX_VALUE) != 0 && JavaLangDouble_compareWithDouble_withDouble_(maxLon_, -JavaLangDouble_MAX_VALUE) != 0 && JavaLangDouble_compareWithDouble_withDouble_(minLon_, JavaLangDouble_MAX_VALUE) != 0;
}

- (id<JavaUtilList>)toGeoJson {
  id<JavaUtilList> list = [[[JavaUtilArrayList alloc] initWithInt:4] autorelease];
  [list addWithId:JavaLangDouble_valueOfWithDouble_(Helper_round6WithDouble_(minLon_))];
  [list addWithId:JavaLangDouble_valueOfWithDouble_(Helper_round6WithDouble_(minLat_))];
  if (elevation_) [list addWithId:JavaLangDouble_valueOfWithDouble_(Helper_round2WithDouble_(minEle_))];
  [list addWithId:JavaLangDouble_valueOfWithDouble_(Helper_round6WithDouble_(maxLon_))];
  [list addWithId:JavaLangDouble_valueOfWithDouble_(Helper_round6WithDouble_(maxLat_))];
  if (elevation_) [list addWithId:JavaLangDouble_valueOfWithDouble_(Helper_round2WithDouble_(maxEle_))];
  return list;
}

- (void)copyAllFieldsTo:(BBox *)other {
  [super copyAllFieldsTo:other];
  other->elevation_ = elevation_;
  other->minLon_ = minLon_;
  other->maxLon_ = maxLon_;
  other->minLat_ = minLat_;
  other->maxLat_ = maxLat_;
  other->minEle_ = minEle_;
  other->maxEle_ = maxEle_;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithDouble:withDouble:withDouble:withDouble:", "BBox", NULL, 0x1, NULL },
    { "initWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:", "BBox", NULL, 0x1, NULL },
    { "initWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:withBoolean:", "BBox", NULL, 0x1, NULL },
    { "createInverseWithBoolean:", "createInverse", "Lcom.graphhopper.util.shapes.BBox;", 0x9, NULL },
    { "hasElevation", NULL, "Z", 0x1, NULL },
    { "updateWithDouble:withDouble:", "update", "V", 0x1, NULL },
    { "updateWithDouble:withDouble:withDouble:", "update", "V", 0x1, NULL },
    { "clone", NULL, "Lcom.graphhopper.util.shapes.BBox;", 0x1, NULL },
    { "intersectWithShape:", "intersect", "Z", 0x1, NULL },
    { "containsWithShape:", "contains", "Z", 0x1, NULL },
    { "intersectWithCircle:", "intersect", "Z", 0x1, NULL },
    { "intersectWithBBox:", "intersect", "Z", 0x1, NULL },
    { "containsWithDouble:withDouble:", "contains", "Z", 0x1, NULL },
    { "containsWithBBox:", "contains", "Z", 0x1, NULL },
    { "containsWithCircle:", "contains", "Z", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "toLessPrecisionString", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getBounds", NULL, "Lcom.graphhopper.util.shapes.BBox;", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "isValid", NULL, "Z", 0x1, NULL },
    { "toGeoJson", NULL, "Ljava.util.List;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "elevation_", NULL, 0x12, "Z", NULL,  },
    { "minLon_", NULL, 0x1, "D", NULL,  },
    { "maxLon_", NULL, 0x1, "D", NULL,  },
    { "minLat_", NULL, 0x1, "D", NULL,  },
    { "maxLat_", NULL, 0x1, "D", NULL,  },
    { "minEle_", NULL, 0x1, "D", NULL,  },
    { "maxEle_", NULL, 0x1, "D", NULL,  },
  };
  static const J2ObjcClassInfo _BBox = { 1, "BBox", "com.graphhopper.util.shapes", NULL, 0x1, 22, methods, 7, fields, 0, NULL};
  return &_BBox;
}

@end

BBox *BBox_createInverseWithBoolean_(jboolean elevation) {
  BBox_init();
  if (elevation) {
    return [[[BBox alloc] initWithDouble:JavaLangDouble_MAX_VALUE withDouble:-JavaLangDouble_MAX_VALUE withDouble:JavaLangDouble_MAX_VALUE withDouble:-JavaLangDouble_MAX_VALUE withDouble:JavaLangDouble_MAX_VALUE withDouble:-JavaLangDouble_MAX_VALUE withBoolean:YES] autorelease];
  }
  else {
    return [[[BBox alloc] initWithDouble:JavaLangDouble_MAX_VALUE withDouble:-JavaLangDouble_MAX_VALUE withDouble:JavaLangDouble_MAX_VALUE withDouble:-JavaLangDouble_MAX_VALUE withDouble:JavaLangDouble_NaN withDouble:JavaLangDouble_NaN withBoolean:NO] autorelease];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BBox)
