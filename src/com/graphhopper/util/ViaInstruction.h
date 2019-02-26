//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/util/ViaInstruction.java
//

#ifndef _ViaInstruction_H_
#define _ViaInstruction_H_

@class InstructionAnnotation;
@class PointList;
@protocol Translation;

#include "J2ObjC_header.h"
#include "com/graphhopper/util/Instruction.h"

/**
 @author Peter Karich
 */
@interface ViaInstruction : Instruction {
}

- (instancetype)initWithNSString:(NSString *)name
       withInstructionAnnotation:(InstructionAnnotation *)ia
                   withPointList:(PointList *)pl;

- (instancetype)initWithInstruction:(Instruction *)instr;

- (jint)getViaCount;

- (void)setViaCountWithInt:(jint)count;

- (NSString *)getTurnDescriptionWithTranslation:(id<Translation>)tr;

@end

J2OBJC_EMPTY_STATIC_INIT(ViaInstruction)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef ViaInstruction ComGraphhopperUtilViaInstruction;

J2OBJC_TYPE_LITERAL_HEADER(ViaInstruction)

#endif // _ViaInstruction_H_
