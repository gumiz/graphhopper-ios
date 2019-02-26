//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/security/cert/Certificate.java
//

#ifndef _JavaSecurityCertCertificate_H_
#define _JavaSecurityCertCertificate_H_

@class IOSByteArray;
@class IOSObjectArray;
@protocol JavaSecurityPublicKey;

#include "J2ObjC_header.h"
#include "java/io/Serializable.h"

#define JavaSecurityCertCertificate_serialVersionUID -3585440601605666277LL

@interface JavaSecurityCertCertificate : NSObject < JavaIoSerializable > {
}

- (instancetype)initWithNSString:(NSString *)type;

- (NSString *)getType;

- (jboolean)isEqual:(id)other;

- (NSUInteger)hash;

- (IOSByteArray *)getEncoded;

- (void)verifyWithJavaSecurityPublicKey:(id<JavaSecurityPublicKey>)key;

- (void)verifyWithJavaSecurityPublicKey:(id<JavaSecurityPublicKey>)key
                           withNSString:(NSString *)sigProvider;

- (NSString *)description;

- (id<JavaSecurityPublicKey>)getPublicKey;

- (id)writeReplace;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaSecurityCertCertificate)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaSecurityCertCertificate, serialVersionUID, jlong)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaSecurityCertCertificate)

#define JavaSecurityCertCertificate_CertificateRep_serialVersionUID -8563758940495660020LL

@interface JavaSecurityCertCertificate_CertificateRep : NSObject < JavaIoSerializable > {
}

- (instancetype)initWithNSString:(NSString *)type
                   withByteArray:(IOSByteArray *)data;

- (id)readResolve;

@end

FOUNDATION_EXPORT BOOL JavaSecurityCertCertificate_CertificateRep_initialized;
J2OBJC_STATIC_INIT(JavaSecurityCertCertificate_CertificateRep)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(JavaSecurityCertCertificate_CertificateRep, serialVersionUID, jlong)

FOUNDATION_EXPORT IOSObjectArray *JavaSecurityCertCertificate_CertificateRep_serialPersistentFields_;
J2OBJC_STATIC_FIELD_GETTER(JavaSecurityCertCertificate_CertificateRep, serialPersistentFields_, IOSObjectArray *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(JavaSecurityCertCertificate_CertificateRep)

#endif // _JavaSecurityCertCertificate_H_
