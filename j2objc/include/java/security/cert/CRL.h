//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/security/cert/CRL.java
//

#ifndef _JavaSecurityCertCRL_H_
#define _JavaSecurityCertCRL_H_

@class JavaSecurityCertCertificate;

#include "J2ObjC_header.h"

@interface JavaSecurityCertCRL : NSObject {
}

- (instancetype)initWithNSString:(NSString *)type;

- (NSString *)getType;

- (jboolean)isRevokedWithJavaSecurityCertCertificate:(JavaSecurityCertCertificate *)cert;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaSecurityCertCRL)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaSecurityCertCRL)

#endif // _JavaSecurityCertCRL_H_