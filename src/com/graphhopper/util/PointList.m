//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/PointList.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/util/DistanceCalc.h"
#include "com/graphhopper/util/DistanceCalc3D.h"
#include "com/graphhopper/util/Helper.h"
#include "com/graphhopper/util/NumHelper.h"
#include "com/graphhopper/util/PointAccess.h"
#include "com/graphhopper/util/PointList.h"
#include "com/graphhopper/util/shapes/GHPoint.h"
#include "com/graphhopper/util/shapes/GHPoint3D.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/NoSuchElementException.h"

__attribute__((unused)) static void PointList_incCapWithInt_(PointList *self, jint newSize);

@interface PointList () {
 @public
  IOSDoubleArray *latitudes_;
  IOSDoubleArray *longitudes_;
  IOSDoubleArray *elevations_;
}

- (void)incCapWithInt:(jint)newSize;
@end

J2OBJC_FIELD_SETTER(PointList, latitudes_, IOSDoubleArray *)
J2OBJC_FIELD_SETTER(PointList, longitudes_, IOSDoubleArray *)
J2OBJC_FIELD_SETTER(PointList, elevations_, IOSDoubleArray *)

@interface PointList_$2 () {
 @public
  PointList *this$0_;
}
@end

J2OBJC_FIELD_SETTER(PointList_$2, this$0_, PointList *)

BOOL PointList_initialized = NO;

@implementation PointList

PointList * PointList_EMPTY_;
DistanceCalc3D * PointList_distCalc3D_;
NSString * PointList_ERR_MSG_ = @"Tried to access PointList with too big index!";

- (instancetype)init {
  return [self initPointListWithInt:10 withBoolean:NO];
}

- (instancetype)initPointListWithInt:(jint)cap
                         withBoolean:(jboolean)is3D {
  if (self = [super init]) {
    size__ = 0;
    PointList_setAndConsume_latitudes_(self, [IOSDoubleArray newArrayWithLength:cap]);
    PointList_setAndConsume_longitudes_(self, [IOSDoubleArray newArrayWithLength:cap]);
    self->is3D__ = is3D;
    if (is3D) PointList_setAndConsume_elevations_(self, [IOSDoubleArray newArrayWithLength:cap]);
  }
  return self;
}

- (instancetype)initWithInt:(jint)cap
                withBoolean:(jboolean)is3D {
  return [self initPointListWithInt:cap withBoolean:is3D];
}

- (jboolean)is3D {
  return is3D__;
}

- (jint)getDimension {
  if (is3D__) return 3;
  return 2;
}

- (void)ensureNodeWithInt:(jint)nodeId {
  PointList_incCapWithInt_(self, nodeId + 1);
}

- (void)setNodeWithInt:(jint)nodeId
            withDouble:(jdouble)lat
            withDouble:(jdouble)lon {
  [self setWithInt:nodeId withDouble:lat withDouble:lon withDouble:JavaLangDouble_NaN];
}

- (void)setNodeWithInt:(jint)nodeId
            withDouble:(jdouble)lat
            withDouble:(jdouble)lon
            withDouble:(jdouble)ele {
  [self setWithInt:nodeId withDouble:lat withDouble:lon withDouble:ele];
}

- (void)setWithInt:(jint)index
        withDouble:(jdouble)lat
        withDouble:(jdouble)lon
        withDouble:(jdouble)ele {
  if (index >= size__) @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:JreStrcat("$I", @"index has to be smaller than size ", size__)] autorelease];
  *IOSDoubleArray_GetRef(nil_chk(latitudes_), index) = lat;
  *IOSDoubleArray_GetRef(nil_chk(longitudes_), index) = lon;
  if (is3D__) *IOSDoubleArray_GetRef(nil_chk(elevations_), index) = ele;
  else if (!JavaLangDouble_isNaNWithDouble_(ele)) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$D", @"This is a 2D list we cannot store elevation: ", ele)] autorelease];
}

- (void)incCapWithInt:(jint)newSize {
  PointList_incCapWithInt_(self, newSize);
}

- (void)addWithDouble:(jdouble)lat
           withDouble:(jdouble)lon {
  if (is3D__) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Cannot add point without elevation data in 3D mode"] autorelease];
  [self addWithDouble:lat withDouble:lon withDouble:JavaLangDouble_NaN];
}

- (void)addWithDouble:(jdouble)lat
           withDouble:(jdouble)lon
           withDouble:(jdouble)ele {
  jint newSize = size__ + 1;
  PointList_incCapWithInt_(self, newSize);
  *IOSDoubleArray_GetRef(nil_chk(latitudes_), size__) = lat;
  *IOSDoubleArray_GetRef(nil_chk(longitudes_), size__) = lon;
  if (is3D__) *IOSDoubleArray_GetRef(nil_chk(elevations_), size__) = ele;
  else if (!JavaLangDouble_isNaNWithDouble_(ele)) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$D", @"This is a 2D list we cannot store elevation: ", ele)] autorelease];
  size__ = newSize;
}

- (void)addWithPointAccess:(id<PointAccess>)nodeAccess
                   withInt:(jint)index {
  if (is3D__) [self addWithDouble:[((id<PointAccess>) nil_chk(nodeAccess)) getLatitudeWithInt:index] withDouble:[nodeAccess getLongitudeWithInt:index] withDouble:[nodeAccess getElevationWithInt:index]];
  else [self addWithDouble:[((id<PointAccess>) nil_chk(nodeAccess)) getLatitudeWithInt:index] withDouble:[nodeAccess getLongitudeWithInt:index]];
}

- (void)addWithGHPoint:(GHPoint *)point {
  if (is3D__) [self addWithDouble:((GHPoint *) nil_chk(point))->lat_ withDouble:point->lon_ withDouble:((GHPoint3D *) check_class_cast(point, [GHPoint3D class]))->ele_];
  else [self addWithDouble:((GHPoint *) nil_chk(point))->lat_ withDouble:point->lon_];
}

- (void)addWithPointList:(PointList *)points {
  jint newSize = size__ + [((PointList *) nil_chk(points)) getSize];
  PointList_incCapWithInt_(self, newSize);
  for (jint i = 0; i < [points getSize]; i++) {
    jint tmp = size__ + i;
    *IOSDoubleArray_GetRef(nil_chk(latitudes_), tmp) = [points getLatitudeWithInt:i];
    *IOSDoubleArray_GetRef(nil_chk(longitudes_), tmp) = [points getLongitudeWithInt:i];
    if (is3D__) *IOSDoubleArray_GetRef(nil_chk(elevations_), tmp) = [points getElevationWithInt:i];
  }
  size__ = newSize;
}

- (jint)size {
  return size__;
}

- (jint)getSize {
  return size__;
}

- (jboolean)isEmpty {
  return size__ == 0;
}

- (jdouble)getLatWithInt:(jint)index {
  return [self getLatitudeWithInt:index];
}

- (jdouble)getLatitudeWithInt:(jint)index {
  if (index >= size__) @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:JreStrcat("$$I$I", PointList_ERR_MSG_, @" index:", index, @", size:", size__)] autorelease];
  return IOSDoubleArray_Get(nil_chk(latitudes_), index);
}

- (jdouble)getLonWithInt:(jint)index {
  return [self getLongitudeWithInt:index];
}

- (jdouble)getLongitudeWithInt:(jint)index {
  if (index >= size__) @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:JreStrcat("$$I$I", PointList_ERR_MSG_, @" index:", index, @", size:", size__)] autorelease];
  return IOSDoubleArray_Get(nil_chk(longitudes_), index);
}

- (jdouble)getElevationWithInt:(jint)index {
  if (index >= size__) @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:JreStrcat("$$I$I", PointList_ERR_MSG_, @" index:", index, @", size:", size__)] autorelease];
  if (!is3D__) return JavaLangDouble_NaN;
  return IOSDoubleArray_Get(nil_chk(elevations_), index);
}

- (jdouble)getEleWithInt:(jint)index {
  return [self getElevationWithInt:index];
}

- (void)reverse {
  jint max = size__ / 2;
  for (jint i = 0; i < max; i++) {
    jint swapIndex = size__ - i - 1;
    jdouble tmp = IOSDoubleArray_Get(nil_chk(latitudes_), i);
    *IOSDoubleArray_GetRef(latitudes_, i) = IOSDoubleArray_Get(latitudes_, swapIndex);
    *IOSDoubleArray_GetRef(latitudes_, swapIndex) = tmp;
    tmp = IOSDoubleArray_Get(nil_chk(longitudes_), i);
    *IOSDoubleArray_GetRef(longitudes_, i) = IOSDoubleArray_Get(longitudes_, swapIndex);
    *IOSDoubleArray_GetRef(longitudes_, swapIndex) = tmp;
    if (is3D__) {
      tmp = IOSDoubleArray_Get(nil_chk(elevations_), i);
      *IOSDoubleArray_GetRef(elevations_, i) = IOSDoubleArray_Get(elevations_, swapIndex);
      *IOSDoubleArray_GetRef(elevations_, swapIndex) = tmp;
    }
  }
}

- (void)clear {
  size__ = 0;
}

- (void)trimToSizeWithInt:(jint)newSize {
  if (newSize > size__) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"new size needs be smaller than old size"] autorelease];
  size__ = newSize;
}

- (NSString *)description {
  JavaLangStringBuilder *sb = [[[JavaLangStringBuilder alloc] init] autorelease];
  for (jint i = 0; i < size__; i++) {
    if (i > 0) [sb appendWithNSString:@", "];
    [sb appendWithChar:'('];
    [sb appendWithDouble:IOSDoubleArray_Get(nil_chk(latitudes_), i)];
    [sb appendWithChar:','];
    [sb appendWithDouble:IOSDoubleArray_Get(nil_chk(longitudes_), i)];
    if (is3D__) {
      [sb appendWithChar:','];
      [sb appendWithDouble:IOSDoubleArray_Get(nil_chk(elevations_), i)];
    }
    [sb appendWithChar:')'];
  }
  return [sb description];
}

- (id<JavaUtilList>)toGeoJson {
  return [self toGeoJsonWithBoolean:is3D__];
}

- (id<JavaUtilList>)toGeoJsonWithBoolean:(jboolean)includeElevation {
  JavaUtilArrayList *points = [[[JavaUtilArrayList alloc] initWithInt:size__] autorelease];
  for (jint i = 0; i < size__; i++) {
    if (includeElevation) [points addWithId:[IOSObjectArray arrayWithObjects:(id[]){ JavaLangDouble_valueOfWithDouble_(Helper_round6WithDouble_([self getLongitudeWithInt:i])), JavaLangDouble_valueOfWithDouble_(Helper_round6WithDouble_([self getLatitudeWithInt:i])), JavaLangDouble_valueOfWithDouble_(Helper_round2WithDouble_([self getElevationWithInt:i])) } count:3 type:JavaLangDouble_class_()]];
    else [points addWithId:[IOSObjectArray arrayWithObjects:(id[]){ JavaLangDouble_valueOfWithDouble_(Helper_round6WithDouble_([self getLongitudeWithInt:i])), JavaLangDouble_valueOfWithDouble_(Helper_round6WithDouble_([self getLatitudeWithInt:i])) } count:2 type:JavaLangDouble_class_()]];
  }
  return points;
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) return NO;
  PointList *other = (PointList *) check_class_cast(obj, [PointList class]);
  if ([self isEmpty] && [((PointList *) nil_chk(other)) isEmpty]) return YES;
  if ([self getSize] != [((PointList *) nil_chk(other)) getSize] || [self is3D] != [other is3D]) return NO;
  for (jint i = 0; i < size__; i++) {
    if (!NumHelper_equalsEpsWithDouble_withDouble_(IOSDoubleArray_Get(nil_chk(latitudes_), i), IOSDoubleArray_Get(other->latitudes_, i))) return NO;
    if (!NumHelper_equalsEpsWithDouble_withDouble_(IOSDoubleArray_Get(nil_chk(longitudes_), i), IOSDoubleArray_Get(other->longitudes_, i))) return NO;
    if (is3D__ && !NumHelper_equalsEpsWithDouble_withDouble_(IOSDoubleArray_Get(nil_chk(elevations_), i), IOSDoubleArray_Get(other->elevations_, i))) return NO;
  }
  return YES;
}

- (PointList *)cloneWithBoolean:(jboolean)reverse {
  PointList *clonePL = [[[PointList alloc] initWithInt:size__ withBoolean:is3D__] autorelease];
  if (is3D__) {
    for (jint i = 0; i < size__; i++) {
      [clonePL addWithDouble:IOSDoubleArray_Get(nil_chk(latitudes_), i) withDouble:IOSDoubleArray_Get(nil_chk(longitudes_), i) withDouble:IOSDoubleArray_Get(nil_chk(elevations_), i)];
    }
  }
  else {
    for (jint i = 0; i < size__; i++) {
      [clonePL addWithDouble:IOSDoubleArray_Get(nil_chk(latitudes_), i) withDouble:IOSDoubleArray_Get(nil_chk(longitudes_), i)];
    }
  }
  if (reverse) [clonePL reverse];
  return clonePL;
}

- (PointList *)copy__WithInt:(jint)from
                     withInt:(jint)end {
  if (from > end) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"from must be smaller or equals to end"] autorelease];
  if (from < 0 || end > size__) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I$I$I", @"Illegal interval: ", from, @", ", end, @", size:", size__)] autorelease];
  PointList *copyPL = [[[PointList alloc] initWithInt:size__ withBoolean:is3D__] autorelease];
  if (is3D__) {
    for (jint i = from; i < end; i++) {
      [copyPL addWithDouble:IOSDoubleArray_Get(nil_chk(latitudes_), i) withDouble:IOSDoubleArray_Get(nil_chk(longitudes_), i) withDouble:IOSDoubleArray_Get(nil_chk(elevations_), i)];
    }
  }
  else {
    for (jint i = from; i < end; i++) {
      [copyPL addWithDouble:IOSDoubleArray_Get(nil_chk(latitudes_), i) withDouble:IOSDoubleArray_Get(nil_chk(longitudes_), i) withDouble:JavaLangDouble_NaN];
    }
  }
  return copyPL;
}

- (NSUInteger)hash {
  jint hash_ = 5;
  for (jint i = 0; i < ((IOSDoubleArray *) nil_chk(latitudes_))->size_; i++) {
    hash_ = 73 * hash_ + (jint) JavaLangMath_roundWithDouble_(IOSDoubleArray_Get(latitudes_, i) * 1000000);
    hash_ = 73 * hash_ + (jint) JavaLangMath_roundWithDouble_(IOSDoubleArray_Get(nil_chk(longitudes_), i) * 1000000);
  }
  hash_ = 73 * hash_ + self->size__;
  return hash_;
}

- (jdouble)calcDistanceWithDistanceCalc:(id<DistanceCalc>)calc {
  jdouble prevLat = JavaLangDouble_NaN;
  jdouble prevLon = JavaLangDouble_NaN;
  jdouble prevEle = JavaLangDouble_NaN;
  jdouble dist = 0;
  for (jint i = 0; i < size__; i++) {
    if (i > 0) {
      if (is3D__) dist += [((DistanceCalc3D *) nil_chk(PointList_distCalc3D_)) calcDistWithDouble:prevLat withDouble:prevLon withDouble:prevEle withDouble:IOSDoubleArray_Get(nil_chk(latitudes_), i) withDouble:IOSDoubleArray_Get(nil_chk(longitudes_), i) withDouble:IOSDoubleArray_Get(nil_chk(elevations_), i)];
      else dist += [((id<DistanceCalc>) nil_chk(calc)) calcDistWithDouble:prevLat withDouble:prevLon withDouble:IOSDoubleArray_Get(nil_chk(latitudes_), i) withDouble:IOSDoubleArray_Get(nil_chk(longitudes_), i)];
    }
    prevLat = IOSDoubleArray_Get(nil_chk(latitudes_), i);
    prevLon = IOSDoubleArray_Get(nil_chk(longitudes_), i);
    if (is3D__) prevEle = IOSDoubleArray_Get(nil_chk(elevations_), i);
  }
  return dist;
}

- (void)parse2DJSONWithNSString:(NSString *)str {
  {
    IOSObjectArray *a__ = [((NSString *) nil_chk(str)) split:@"\\["];
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *latlon = *b__++;
      if (((jint) [((NSString *) nil_chk([((NSString *) nil_chk(latlon)) trim])) length]) == 0) continue;
      IOSObjectArray *ll = [latlon split:@","];
      NSString *lat = [((NSString *) nil_chk([((NSString *) nil_chk(IOSObjectArray_Get(nil_chk(ll), 1))) replace:@"]" withSequence:@""])) trim];
      [self addWithDouble:JavaLangDouble_parseDoubleWithNSString_(lat) withDouble:JavaLangDouble_parseDoubleWithNSString_([((NSString *) nil_chk(IOSObjectArray_Get(ll, 0))) trim]) withDouble:JavaLangDouble_NaN];
    }
  }
}

- (GHPoint3D *)toGHPointWithInt:(jint)index {
  return [[[GHPoint3D alloc] initWithDouble:[self getLatitudeWithInt:index] withDouble:[self getLongitudeWithInt:index] withDouble:[self getElevationWithInt:index]] autorelease];
}

- (jint)getCapacity {
  return ((IOSDoubleArray *) nil_chk(latitudes_))->size_;
}

- (id<JavaUtilIterator>)iterator {
  return [[[PointList_$2 alloc] initWithPointList:self] autorelease];
}

- (void)dealloc {
  RELEASE_(latitudes_);
  RELEASE_(longitudes_);
  RELEASE_(elevations_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(PointList *)other {
  [super copyAllFieldsTo:other];
  other->size__ = size__;
  other->is3D__ = is3D__;
  PointList_set_latitudes_(other, latitudes_);
  PointList_set_longitudes_(other, longitudes_);
  PointList_set_elevations_(other, elevations_);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (void)initialize {
  if (self == [PointList class]) {
    JreStrongAssignAndConsume(&PointList_EMPTY_, nil, [[PointList_$1 alloc] initWithInt:0 withBoolean:YES]);
    JreStrongAssign(&PointList_distCalc3D_, nil, Helper_get_DIST_3D_());
    J2OBJC_SET_INITIALIZED(PointList)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PointList", NULL, 0x1, NULL },
    { "initWithInt:withBoolean:", "PointList", NULL, 0x1, NULL },
    { "is3D", NULL, "Z", 0x1, NULL },
    { "getDimension", NULL, "I", 0x1, NULL },
    { "ensureNodeWithInt:", "ensureNode", "V", 0x1, NULL },
    { "setNodeWithInt:withDouble:withDouble:", "setNode", "V", 0x1, NULL },
    { "setNodeWithInt:withDouble:withDouble:withDouble:", "setNode", "V", 0x1, NULL },
    { "setWithInt:withDouble:withDouble:withDouble:", "set", "V", 0x1, NULL },
    { "incCapWithInt:", "incCap", "V", 0x2, NULL },
    { "addWithDouble:withDouble:", "add", "V", 0x1, NULL },
    { "addWithDouble:withDouble:withDouble:", "add", "V", 0x1, NULL },
    { "addWithPointAccess:withInt:", "add", "V", 0x1, NULL },
    { "addWithGHPoint:", "add", "V", 0x1, NULL },
    { "addWithPointList:", "add", "V", 0x1, NULL },
    { "size", NULL, "I", 0x1, NULL },
    { "getSize", NULL, "I", 0x1, NULL },
    { "isEmpty", NULL, "Z", 0x1, NULL },
    { "getLatWithInt:", "getLat", "D", 0x1, NULL },
    { "getLatitudeWithInt:", "getLatitude", "D", 0x1, NULL },
    { "getLonWithInt:", "getLon", "D", 0x1, NULL },
    { "getLongitudeWithInt:", "getLongitude", "D", 0x1, NULL },
    { "getElevationWithInt:", "getElevation", "D", 0x1, NULL },
    { "getEleWithInt:", "getEle", "D", 0x1, NULL },
    { "reverse", NULL, "V", 0x1, NULL },
    { "clear", NULL, "V", 0x1, NULL },
    { "trimToSizeWithInt:", "trimToSize", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "toGeoJson", NULL, "Ljava.util.List;", 0x1, NULL },
    { "toGeoJsonWithBoolean:", "toGeoJson", "Ljava.util.List;", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "cloneWithBoolean:", "clone", "Lcom.graphhopper.util.PointList;", 0x1, NULL },
    { "copy__WithInt:withInt:", "copy", "Lcom.graphhopper.util.PointList;", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "calcDistanceWithDistanceCalc:", "calcDistance", "D", 0x1, NULL },
    { "parse2DJSONWithNSString:", "parse2DJSON", "V", 0x1, NULL },
    { "toGHPointWithInt:", "toGHPoint", "Lcom.graphhopper.util.shapes.GHPoint3D;", 0x1, NULL },
    { "getCapacity", NULL, "I", 0x0, NULL },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_", NULL, 0x19, "Lcom.graphhopper.util.PointList;", &PointList_EMPTY_,  },
    { "distCalc3D_", NULL, 0x1a, "Lcom.graphhopper.util.DistanceCalc3D;", &PointList_distCalc3D_,  },
    { "ERR_MSG_", NULL, 0xa, "Ljava.lang.String;", &PointList_ERR_MSG_,  },
    { "size__", "size", 0x4, "I", NULL,  },
    { "is3D__", "is3D", 0x4, "Z", NULL,  },
    { "latitudes_", NULL, 0x2, "[D", NULL,  },
    { "longitudes_", NULL, 0x2, "[D", NULL,  },
    { "elevations_", NULL, 0x2, "[D", NULL,  },
  };
  static const J2ObjcClassInfo _PointList = { 1, "PointList", "com.graphhopper.util", NULL, 0x1, 38, methods, 8, fields, 0, NULL};
  return &_PointList;
}

@end

void PointList_incCapWithInt_(PointList *self, jint newSize) {
  if (newSize <= ((IOSDoubleArray *) nil_chk(self->latitudes_))->size_) return;
  jint cap = newSize * 2;
  if (cap < 15) cap = 15;
  PointList_set_latitudes_(self, JavaUtilArrays_copyOfWithDoubleArray_withInt_(self->latitudes_, cap));
  PointList_set_longitudes_(self, JavaUtilArrays_copyOfWithDoubleArray_withInt_(self->longitudes_, cap));
  if (self->is3D__) PointList_set_elevations_(self, JavaUtilArrays_copyOfWithDoubleArray_withInt_(self->elevations_, cap));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PointList)

@implementation PointList_$1

- (void)setWithInt:(jint)index
        withDouble:(jdouble)lat
        withDouble:(jdouble)lon
        withDouble:(jdouble)ele {
  @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"cannot change EMPTY PointList"] autorelease];
}

- (void)addWithDouble:(jdouble)lat
           withDouble:(jdouble)lon
           withDouble:(jdouble)ele {
  @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"cannot change EMPTY PointList"] autorelease];
}

- (jdouble)getLatitudeWithInt:(jint)index {
  @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (jdouble)getLongitudeWithInt:(jint)index {
  @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (jboolean)isEmpty {
  return YES;
}

- (void)clear {
  @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"cannot change EMPTY PointList"] autorelease];
}

- (void)trimToSizeWithInt:(jint)newSize {
  @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"cannot change EMPTY PointList"] autorelease];
}

- (void)parse2DJSONWithNSString:(NSString *)str {
  @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"cannot change EMPTY PointList"] autorelease];
}

- (jdouble)calcDistanceWithDistanceCalc:(id<DistanceCalc>)calc {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (PointList *)copy__WithInt:(jint)from
                     withInt:(jint)end {
  @throw [[[JavaLangRuntimeException alloc] initWithNSString:@"cannot copy EMPTY PointList"] autorelease];
}

- (PointList *)cloneWithBoolean:(jboolean)reverse {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (jdouble)getElevationWithInt:(jint)index {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (jdouble)getLatWithInt:(jint)index {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (jdouble)getLonWithInt:(jint)index {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (jdouble)getEleWithInt:(jint)index {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (id<JavaUtilList>)toGeoJson {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (void)reverse {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"cannot change EMPTY PointList"] autorelease];
}

- (jint)getSize {
  return 0;
}

- (jint)size {
  return 0;
}

- (GHPoint3D *)toGHPointWithInt:(jint)index {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (jboolean)is3D {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"cannot access EMPTY PointList"] autorelease];
}

- (instancetype)initPointList_$1WithInt:(jint)arg$0
                            withBoolean:(jboolean)arg$1 {
  return [super initWithInt:arg$0 withBoolean:arg$1];
}

- (instancetype)initWithInt:(jint)arg$0
                withBoolean:(jboolean)arg$1 {
  return [self initPointList_$1WithInt:arg$0 withBoolean:arg$1];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setWithInt:withDouble:withDouble:withDouble:", "set", "V", 0x1, NULL },
    { "addWithDouble:withDouble:withDouble:", "add", "V", 0x1, NULL },
    { "getLatitudeWithInt:", "getLatitude", "D", 0x1, NULL },
    { "getLongitudeWithInt:", "getLongitude", "D", 0x1, NULL },
    { "isEmpty", NULL, "Z", 0x1, NULL },
    { "clear", NULL, "V", 0x1, NULL },
    { "trimToSizeWithInt:", "trimToSize", "V", 0x1, NULL },
    { "parse2DJSONWithNSString:", "parse2DJSON", "V", 0x1, NULL },
    { "calcDistanceWithDistanceCalc:", "calcDistance", "D", 0x1, NULL },
    { "copy__WithInt:withInt:", "copy", "Lcom.graphhopper.util.PointList;", 0x1, NULL },
    { "cloneWithBoolean:", "clone", "Lcom.graphhopper.util.PointList;", 0x1, NULL },
    { "getElevationWithInt:", "getElevation", "D", 0x1, NULL },
    { "getLatWithInt:", "getLat", "D", 0x1, NULL },
    { "getLonWithInt:", "getLon", "D", 0x1, NULL },
    { "getEleWithInt:", "getEle", "D", 0x1, NULL },
    { "toGeoJson", NULL, "Ljava.util.List;", 0x1, NULL },
    { "reverse", NULL, "V", 0x1, NULL },
    { "getSize", NULL, "I", 0x1, NULL },
    { "size", NULL, "I", 0x1, NULL },
    { "toGHPointWithInt:", "toGHPoint", "Lcom.graphhopper.util.shapes.GHPoint3D;", 0x1, NULL },
    { "is3D", NULL, "Z", 0x1, NULL },
    { "initWithInt:withBoolean:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _PointList_$1 = { 1, "$1", "com.graphhopper.util", "PointList", 0x8000, 22, methods, 0, NULL, 0, NULL};
  return &_PointList_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PointList_$1)

@implementation PointList_$2

- (jboolean)hasNext {
  return counter_ < [this$0_ getSize];
}

- (GHPoint3D *)next {
  if (counter_ >= [this$0_ getSize]) @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  GHPoint3D *point = [this$0_ toGHPointWithInt:counter_];
  counter_++;
  return point;
}

- (void)remove {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"Not supported."] autorelease];
}

- (instancetype)initWithPointList:(PointList *)outer$ {
  PointList_$2_set_this$0_(self, outer$);
  if (self = [super init]) {
    counter_ = 0;
  }
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(PointList_$2 *)other {
  [super copyAllFieldsTo:other];
  PointList_$2_set_this$0_(other, this$0_);
  other->counter_ = counter_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "hasNext", NULL, "Z", 0x1, NULL },
    { "next", NULL, "Lcom.graphhopper.util.shapes.GHPoint3D;", 0x1, NULL },
    { "remove", NULL, "V", 0x1, NULL },
    { "initWithPointList:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.graphhopper.util.PointList;", NULL,  },
    { "counter_", NULL, 0x0, "I", NULL,  },
  };
  static const J2ObjcClassInfo _PointList_$2 = { 1, "$2", "com.graphhopper.util", "PointList", 0x8000, 4, methods, 2, fields, 0, NULL};
  return &_PointList_$2;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(PointList_$2)