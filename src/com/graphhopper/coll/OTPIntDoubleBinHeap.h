//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/tools-lgpl/src/main/java/com/graphhopper/coll/OTPIntDoubleBinHeap.java
//

#ifndef _OTPIntDoubleBinHeap_H_
#define _OTPIntDoubleBinHeap_H_

@class IOSFloatArray;
@class IOSIntArray;
@class JavaLangDouble;
@class JavaLangInteger;

#include "J2ObjC_header.h"

#define OTPIntDoubleBinHeap_GROW_FACTOR 2.0

/**
 @brief Taken from opentripplanner.
 */
@interface OTPIntDoubleBinHeap : NSObject {
}

- (instancetype)init;

- (instancetype)initWithInt:(jint)capacity;

- (jint)getSize;

- (jint)size;

- (jboolean)isEmpty;

- (JavaLangDouble *)peekKey;

- (jdouble)peek_key;

- (JavaLangInteger *)peekElement;

- (jint)peek_element;

- (JavaLangInteger *)pollElement;

- (jint)poll_element;

- (void)updateWithNSNumber:(NSNumber *)key
       withJavaLangInteger:(JavaLangInteger *)element;

- (jboolean)update_WithDouble:(jdouble)key
                      withInt:(jint)element;

- (void)insertWithNSNumber:(NSNumber *)key
       withJavaLangInteger:(JavaLangInteger *)element;

- (void)insert_WithDouble:(jdouble)key
                  withInt:(jint)element;

- (void)ensureCapacityWithInt:(jint)capacity;

- (jint)getCapacity;

- (jfloat)getKeyWithInt:(jint)index;

- (jint)getElementWithInt:(jint)index;

- (void)setWithInt:(jint)index
         withFloat:(jfloat)key
           withInt:(jint)element;

- (void)trimToWithInt:(jint)toSize;

- (void)clear;

- (NSString *)description;

- (NSString *)toKeyString;

- (jint)indexOfValueWithInt:(jint)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OTPIntDoubleBinHeap)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(OTPIntDoubleBinHeap, GROW_FACTOR, jdouble)
CF_EXTERN_C_END

typedef OTPIntDoubleBinHeap ComGraphhopperCollOTPIntDoubleBinHeap;

J2OBJC_TYPE_LITERAL_HEADER(OTPIntDoubleBinHeap)

#endif // _OTPIntDoubleBinHeap_H_
