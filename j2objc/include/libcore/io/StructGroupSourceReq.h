//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/io/StructGroupSourceReq.java
//

#ifndef _LibcoreIoStructGroupSourceReq_H_
#define _LibcoreIoStructGroupSourceReq_H_

@class JavaNetInetAddress;

#include "J2ObjC_header.h"

@interface LibcoreIoStructGroupSourceReq : NSObject {
 @public
  jint gsr_interface_;
  JavaNetInetAddress *gsr_group_;
  JavaNetInetAddress *gsr_source_;
}

- (instancetype)initWithInt:(jint)gsr_interface
     withJavaNetInetAddress:(JavaNetInetAddress *)gsr_group
     withJavaNetInetAddress:(JavaNetInetAddress *)gsr_source;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(LibcoreIoStructGroupSourceReq)

J2OBJC_FIELD_SETTER(LibcoreIoStructGroupSourceReq, gsr_group_, JavaNetInetAddress *)
J2OBJC_FIELD_SETTER(LibcoreIoStructGroupSourceReq, gsr_source_, JavaNetInetAddress *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(LibcoreIoStructGroupSourceReq)

#endif // _LibcoreIoStructGroupSourceReq_H_
