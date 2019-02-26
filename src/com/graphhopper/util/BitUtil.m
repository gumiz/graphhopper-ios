//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/BitUtil.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/util/BitUtil.h"
#include "com/graphhopper/util/BitUtilBig.h"
#include "com/graphhopper/util/BitUtilLittle.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/nio/ByteOrder.h"

__attribute__((unused)) static jdouble BitUtil_toDoubleWithByteArray_withInt_(BitUtil *self, IOSByteArray *bytes, jint offset);
__attribute__((unused)) static void BitUtil_fromDoubleWithByteArray_withDouble_withInt_(BitUtil *self, IOSByteArray *bytes, jdouble value, jint offset);
__attribute__((unused)) static jfloat BitUtil_toFloatWithByteArray_withInt_(BitUtil *self, IOSByteArray *bytes, jint offset);
__attribute__((unused)) static void BitUtil_fromFloatWithByteArray_withFloat_withInt_(BitUtil *self, IOSByteArray *bytes, jfloat value, jint offset);

BOOL BitUtil_initialized = NO;

@implementation BitUtil

BitUtil * BitUtil_LITTLE_;
BitUtil * BitUtil_BIG_;

+ (BitUtil *)getWithJavaNioByteOrder:(JavaNioByteOrder *)order {
  return BitUtil_getWithJavaNioByteOrder_(order);
}

- (jdouble)toDoubleWithByteArray:(IOSByteArray *)bytes {
  return BitUtil_toDoubleWithByteArray_withInt_(self, bytes, 0);
}

- (jdouble)toDoubleWithByteArray:(IOSByteArray *)bytes
                         withInt:(jint)offset {
  return BitUtil_toDoubleWithByteArray_withInt_(self, bytes, offset);
}

- (IOSByteArray *)fromDoubleWithDouble:(jdouble)value {
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:8];
  BitUtil_fromDoubleWithByteArray_withDouble_withInt_(self, bytes, value, 0);
  return bytes;
}

- (void)fromDoubleWithByteArray:(IOSByteArray *)bytes
                     withDouble:(jdouble)value {
  BitUtil_fromDoubleWithByteArray_withDouble_withInt_(self, bytes, value, 0);
}

- (void)fromDoubleWithByteArray:(IOSByteArray *)bytes
                     withDouble:(jdouble)value
                        withInt:(jint)offset {
  BitUtil_fromDoubleWithByteArray_withDouble_withInt_(self, bytes, value, offset);
}

- (jfloat)toFloatWithByteArray:(IOSByteArray *)bytes {
  return BitUtil_toFloatWithByteArray_withInt_(self, bytes, 0);
}

- (jfloat)toFloatWithByteArray:(IOSByteArray *)bytes
                       withInt:(jint)offset {
  return BitUtil_toFloatWithByteArray_withInt_(self, bytes, offset);
}

- (IOSByteArray *)fromFloatWithFloat:(jfloat)value {
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:4];
  BitUtil_fromFloatWithByteArray_withFloat_withInt_(self, bytes, value, 0);
  return bytes;
}

- (void)fromFloatWithByteArray:(IOSByteArray *)bytes
                     withFloat:(jfloat)value {
  BitUtil_fromFloatWithByteArray_withFloat_withInt_(self, bytes, value, 0);
}

- (void)fromFloatWithByteArray:(IOSByteArray *)bytes
                     withFloat:(jfloat)value
                       withInt:(jint)offset {
  BitUtil_fromFloatWithByteArray_withFloat_withInt_(self, bytes, value, offset);
}

- (jshort)toShortWithByteArray:(IOSByteArray *)b {
  return [self toShortWithByteArray:b withInt:0];
}

- (jshort)toShortWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)toIntWithByteArray:(IOSByteArray *)b {
  return [self toIntWithByteArray:b withInt:0];
}

- (jint)toIntWithByteArray:(IOSByteArray *)b
                   withInt:(jint)offset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (IOSByteArray *)fromIntWithInt:(jint)value {
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:4];
  [self fromIntWithByteArray:bytes withInt:value withInt:0];
  return bytes;
}

- (void)fromIntWithByteArray:(IOSByteArray *)bytes
                     withInt:(jint)value {
  [self fromIntWithByteArray:bytes withInt:value withInt:0];
}

- (IOSByteArray *)fromShortWithShort:(jshort)value {
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:4];
  [self fromShortWithByteArray:bytes withShort:value withInt:0];
  return bytes;
}

- (void)fromShortWithByteArray:(IOSByteArray *)bytes
                     withShort:(jshort)value {
  [self fromShortWithByteArray:bytes withShort:value withInt:0];
}

- (void)fromShortWithByteArray:(IOSByteArray *)bytes
                     withShort:(jshort)value
                       withInt:(jint)offset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)fromIntWithByteArray:(IOSByteArray *)bytes
                     withInt:(jint)value
                     withInt:(jint)offset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jlong)toLongWithByteArray:(IOSByteArray *)b {
  return [self toLongWithByteArray:b withInt:0];
}

- (jlong)toLongWithInt:(jint)high
               withInt:(jint)low {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)toLongWithByteArray:(IOSByteArray *)b
                     withInt:(jint)offset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (IOSByteArray *)fromLongWithLong:(jlong)value {
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:8];
  [self fromLongWithByteArray:bytes withLong:value withInt:0];
  return bytes;
}

- (void)fromLongWithByteArray:(IOSByteArray *)bytes
                     withLong:(jlong)value {
  [self fromLongWithByteArray:bytes withLong:value withInt:0];
}

- (void)fromLongWithByteArray:(IOSByteArray *)bytes
                     withLong:(jlong)value
                      withInt:(jint)offset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jlong)fromBitString2LongWithNSString:(NSString *)str {
  if (((jint) [((NSString *) nil_chk(str)) length]) > 64) @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:JreStrcat("$I", @"Strings needs to fit into a 'long' but length was ", ((jint) [str length]))] autorelease];
  jlong res = 0;
  jint strLen = ((jint) [str length]);
  for (jint charIndex = 0; charIndex < strLen; charIndex++) {
    LShiftAssignLong(&res, 1);
    if ([str charAtWithInt:charIndex] != '0') res |= 1;
  }
  LShiftAssignLong(&res, (64 - strLen));
  return res;
}

- (IOSByteArray *)fromBitStringWithNSString:(NSString *)str {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)toBitStringWithLong:(jlong)value {
  return [self toBitStringWithLong:value withInt:64];
}

- (NSString *)toLastBitStringWithLong:(jlong)value
                              withInt:(jint)bits {
  JavaLangStringBuilder *sb = [[[JavaLangStringBuilder alloc] initWithInt:bits] autorelease];
  jlong lastBit = LShift64(1LL, bits - 1);
  for (jint i = 0; i < bits; i++) {
    if ((value & lastBit) == 0) [sb appendWithChar:'0'];
    else [sb appendWithChar:'1'];
    LShiftAssignLong(&value, 1);
  }
  return [sb description];
}

- (NSString *)toBitStringWithLong:(jlong)value
                          withInt:(jint)bits {
  JavaLangStringBuilder *sb = [[[JavaLangStringBuilder alloc] initWithInt:bits] autorelease];
  jlong lastBit = LShift64(1LL, 63);
  for (jint i = 0; i < bits; i++) {
    if ((value & lastBit) == 0) [sb appendWithChar:'0'];
    else [sb appendWithChar:'1'];
    LShiftAssignLong(&value, 1);
  }
  return [sb description];
}

- (NSString *)toBitStringWithByteArray:(IOSByteArray *)bytes {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)reverseWithLong:(jlong)value
                 withInt:(jint)maxBits {
  jlong res = 0;
  for (; maxBits > 0; URShiftAssignLong(&value, 1)) {
    LShiftAssignLong(&res, 1);
    res |= value & 1;
    maxBits--;
    if (value == 0) {
      LShiftAssignLong(&res, maxBits);
      break;
    }
  }
  return res;
}

- (jint)getIntLowWithLong:(jlong)longValue {
  return (jint) (longValue & (jlong) 0xFFFFFFFFLL);
}

- (jint)getIntHighWithLong:(jlong)longValue {
  return (jint) (RShift64(longValue, 32));
}

- (jlong)combineIntsToLongWithInt:(jint)intLow
                          withInt:(jint)intHigh {
  return (LShift64((jlong) intHigh, 32)) | (intLow & (jlong) 0xFFFFFFFFLL);
}

- (jlong)reverseLeftWithLong:(jlong)value
                     withInt:(jint)maxBits {
  jlong res = 0;
  jint delta = 64 - maxBits;
  jlong maxBit = LShift64(1LL, delta);
  for (; maxBits > 0; LShiftAssignLong(&res, 1)) {
    if ((value & maxBit) != 0) res |= 1;
    LShiftAssignLong(&maxBit, 1);
    maxBits--;
    if (maxBit == 0) {
      LShiftAssignLong(&res, delta);
      break;
    }
  }
  return res;
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [BitUtil class]) {
    JreStrongAssignAndConsume(&BitUtil_LITTLE_, nil, [[BitUtilLittle alloc] init]);
    JreStrongAssignAndConsume(&BitUtil_BIG_, nil, [[BitUtilBig alloc] init]);
    J2OBJC_SET_INITIALIZED(BitUtil)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithJavaNioByteOrder:", "get", "Lcom.graphhopper.util.BitUtil;", 0x9, NULL },
    { "toDoubleWithByteArray:", "toDouble", "D", 0x11, NULL },
    { "toDoubleWithByteArray:withInt:", "toDouble", "D", 0x11, NULL },
    { "fromDoubleWithDouble:", "fromDouble", "[B", 0x11, NULL },
    { "fromDoubleWithByteArray:withDouble:", "fromDouble", "V", 0x11, NULL },
    { "fromDoubleWithByteArray:withDouble:withInt:", "fromDouble", "V", 0x11, NULL },
    { "toFloatWithByteArray:", "toFloat", "F", 0x11, NULL },
    { "toFloatWithByteArray:withInt:", "toFloat", "F", 0x11, NULL },
    { "fromFloatWithFloat:", "fromFloat", "[B", 0x11, NULL },
    { "fromFloatWithByteArray:withFloat:", "fromFloat", "V", 0x11, NULL },
    { "fromFloatWithByteArray:withFloat:withInt:", "fromFloat", "V", 0x11, NULL },
    { "toShortWithByteArray:", "toShort", "S", 0x11, NULL },
    { "toShortWithByteArray:withInt:", "toShort", "S", 0x401, NULL },
    { "toIntWithByteArray:", "toInt", "I", 0x11, NULL },
    { "toIntWithByteArray:withInt:", "toInt", "I", 0x401, NULL },
    { "fromIntWithInt:", "fromInt", "[B", 0x11, NULL },
    { "fromIntWithByteArray:withInt:", "fromInt", "V", 0x11, NULL },
    { "fromShortWithShort:", "fromShort", "[B", 0x11, NULL },
    { "fromShortWithByteArray:withShort:", "fromShort", "V", 0x11, NULL },
    { "fromShortWithByteArray:withShort:withInt:", "fromShort", "V", 0x401, NULL },
    { "fromIntWithByteArray:withInt:withInt:", "fromInt", "V", 0x401, NULL },
    { "toLongWithByteArray:", "toLong", "J", 0x11, NULL },
    { "toLongWithInt:withInt:", "toLong", "J", 0x401, NULL },
    { "toLongWithByteArray:withInt:", "toLong", "J", 0x401, NULL },
    { "fromLongWithLong:", "fromLong", "[B", 0x11, NULL },
    { "fromLongWithByteArray:withLong:", "fromLong", "V", 0x11, NULL },
    { "fromLongWithByteArray:withLong:withInt:", "fromLong", "V", 0x401, NULL },
    { "fromBitString2LongWithNSString:", "fromBitString2Long", "J", 0x11, NULL },
    { "fromBitStringWithNSString:", "fromBitString", "[B", 0x401, NULL },
    { "toBitStringWithLong:", "toBitString", "Ljava.lang.String;", 0x11, NULL },
    { "toLastBitStringWithLong:withInt:", "toLastBitString", "Ljava.lang.String;", 0x1, NULL },
    { "toBitStringWithLong:withInt:", "toBitString", "Ljava.lang.String;", 0x1, NULL },
    { "toBitStringWithByteArray:", "toBitString", "Ljava.lang.String;", 0x401, NULL },
    { "reverseWithLong:withInt:", "reverse", "J", 0x11, NULL },
    { "getIntLowWithLong:", "getIntLow", "I", 0x11, NULL },
    { "getIntHighWithLong:", "getIntHigh", "I", 0x11, NULL },
    { "combineIntsToLongWithInt:withInt:", "combineIntsToLong", "J", 0x11, NULL },
    { "reverseLeftWithLong:withInt:", "reverseLeft", "J", 0x11, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LITTLE_", NULL, 0x19, "Lcom.graphhopper.util.BitUtil;", &BitUtil_LITTLE_,  },
    { "BIG_", NULL, 0x19, "Lcom.graphhopper.util.BitUtil;", &BitUtil_BIG_,  },
  };
  static const J2ObjcClassInfo _BitUtil = { 1, "BitUtil", "com.graphhopper.util", NULL, 0x401, 39, methods, 2, fields, 0, NULL};
  return &_BitUtil;
}

@end

BitUtil *BitUtil_getWithJavaNioByteOrder_(JavaNioByteOrder *order) {
  BitUtil_init();
  if ([((JavaNioByteOrder *) nil_chk(order)) isEqual:JavaNioByteOrder_get_BIG_ENDIAN__()]) return BitUtil_BIG_;
  else return BitUtil_LITTLE_;
}

jdouble BitUtil_toDoubleWithByteArray_withInt_(BitUtil *self, IOSByteArray *bytes, jint offset) {
  return JavaLangDouble_longBitsToDoubleWithLong_([self toLongWithByteArray:bytes withInt:offset]);
}

void BitUtil_fromDoubleWithByteArray_withDouble_withInt_(BitUtil *self, IOSByteArray *bytes, jdouble value, jint offset) {
  [self fromLongWithByteArray:bytes withLong:JavaLangDouble_doubleToRawLongBitsWithDouble_(value) withInt:offset];
}

jfloat BitUtil_toFloatWithByteArray_withInt_(BitUtil *self, IOSByteArray *bytes, jint offset) {
  return JavaLangFloat_intBitsToFloatWithInt_([self toIntWithByteArray:bytes withInt:offset]);
}

void BitUtil_fromFloatWithByteArray_withFloat_withInt_(BitUtil *self, IOSByteArray *bytes, jfloat value, jint offset) {
  [self fromIntWithByteArray:bytes withInt:JavaLangFloat_floatToRawIntBitsWithFloat_(value) withInt:offset];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BitUtil)