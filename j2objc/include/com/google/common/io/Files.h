//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/tball/tmp/j2objc/guava/sources/com/google/common/io/Files.java
//

#include "J2ObjC_header.h"

#if !ComGoogleCommonIoFiles_RESTRICT
#define ComGoogleCommonIoFiles_INCLUDE_ALL 1
#endif
#undef ComGoogleCommonIoFiles_RESTRICT
#if !defined (_ComGoogleCommonIoFiles_) && (ComGoogleCommonIoFiles_INCLUDE_ALL || ComGoogleCommonIoFiles_INCLUDE)
#define _ComGoogleCommonIoFiles_

@class ComGoogleCommonHashHashCode;
@class ComGoogleCommonIoByteSink;
@class ComGoogleCommonIoByteSource;
@class ComGoogleCommonIoCharSink;
@class ComGoogleCommonIoCharSource;
@class ComGoogleCommonIoFileWriteModeEnum;
@class IOSByteArray;
@class IOSObjectArray;
@class JavaIoBufferedReader;
@class JavaIoBufferedWriter;
@class JavaIoFile;
@class JavaIoOutputStream;
@class JavaIoRandomAccessFile;
@class JavaNioChannelsFileChannel_MapMode;
@class JavaNioCharsetCharset;
@class JavaNioMappedByteBuffer;
@protocol ComGoogleCommonHashHashFunction;
@protocol ComGoogleCommonIoByteProcessor;
@protocol ComGoogleCommonIoInputSupplier;
@protocol ComGoogleCommonIoLineProcessor;
@protocol ComGoogleCommonIoOutputSupplier;
@protocol JavaLangAppendable;
@protocol JavaLangCharSequence;
@protocol JavaUtilList;
@protocol JavaUtilZipChecksum;


#define ComGoogleCommonIoFiles_TEMP_DIR_ATTEMPTS 10000

@interface ComGoogleCommonIoFiles : NSObject {
}

+ (JavaIoBufferedReader *)newReaderWithJavaIoFile:(JavaIoFile *)file
                        withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset OBJC_METHOD_FAMILY_NONE;

+ (JavaIoBufferedWriter *)newWriterWithJavaIoFile:(JavaIoFile *)file
                        withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset OBJC_METHOD_FAMILY_NONE;

+ (ComGoogleCommonIoByteSource *)asByteSourceWithJavaIoFile:(JavaIoFile *)file;

+ (ComGoogleCommonIoByteSink *)asByteSinkWithJavaIoFile:(JavaIoFile *)file
            withComGoogleCommonIoFileWriteModeEnumArray:(IOSObjectArray *)modes;

+ (ComGoogleCommonIoCharSource *)asCharSourceWithJavaIoFile:(JavaIoFile *)file
                                  withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

+ (ComGoogleCommonIoCharSink *)asCharSinkWithJavaIoFile:(JavaIoFile *)file
                              withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset
            withComGoogleCommonIoFileWriteModeEnumArray:(IOSObjectArray *)modes;

+ (id<ComGoogleCommonIoInputSupplier>)newInputStreamSupplierWithJavaIoFile:(JavaIoFile *)file OBJC_METHOD_FAMILY_NONE;

+ (id<ComGoogleCommonIoOutputSupplier>)newOutputStreamSupplierWithJavaIoFile:(JavaIoFile *)file OBJC_METHOD_FAMILY_NONE;

+ (id<ComGoogleCommonIoOutputSupplier>)newOutputStreamSupplierWithJavaIoFile:(JavaIoFile *)file
                                                                 withBoolean:(jboolean)append OBJC_METHOD_FAMILY_NONE;

+ (id<ComGoogleCommonIoInputSupplier>)newReaderSupplierWithJavaIoFile:(JavaIoFile *)file
                                            withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset OBJC_METHOD_FAMILY_NONE;

+ (id<ComGoogleCommonIoOutputSupplier>)newWriterSupplierWithJavaIoFile:(JavaIoFile *)file
                                             withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset OBJC_METHOD_FAMILY_NONE;

+ (id<ComGoogleCommonIoOutputSupplier>)newWriterSupplierWithJavaIoFile:(JavaIoFile *)file
                                             withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset
                                                           withBoolean:(jboolean)append OBJC_METHOD_FAMILY_NONE;

+ (IOSByteArray *)toByteArrayWithJavaIoFile:(JavaIoFile *)file;

+ (NSString *)toStringWithJavaIoFile:(JavaIoFile *)file
           withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

+ (void)copy__WithComGoogleCommonIoInputSupplier:(id<ComGoogleCommonIoInputSupplier>)from
                                  withJavaIoFile:(JavaIoFile *)to OBJC_METHOD_FAMILY_NONE;

+ (void)writeWithByteArray:(IOSByteArray *)from
            withJavaIoFile:(JavaIoFile *)to;

+ (void)copy__WithJavaIoFile:(JavaIoFile *)from
withComGoogleCommonIoOutputSupplier:(id<ComGoogleCommonIoOutputSupplier>)to OBJC_METHOD_FAMILY_NONE;

+ (void)copy__WithJavaIoFile:(JavaIoFile *)from
      withJavaIoOutputStream:(JavaIoOutputStream *)to OBJC_METHOD_FAMILY_NONE;

+ (void)copy__WithJavaIoFile:(JavaIoFile *)from
              withJavaIoFile:(JavaIoFile *)to OBJC_METHOD_FAMILY_NONE;

+ (void)copy__WithComGoogleCommonIoInputSupplier:(id<ComGoogleCommonIoInputSupplier>)from
                                  withJavaIoFile:(JavaIoFile *)to
                       withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset OBJC_METHOD_FAMILY_NONE;

+ (void)writeWithJavaLangCharSequence:(id<JavaLangCharSequence>)from
                       withJavaIoFile:(JavaIoFile *)to
            withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

+ (void)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)from
                        withJavaIoFile:(JavaIoFile *)to
             withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

+ (void)copy__WithJavaIoFile:(JavaIoFile *)from
   withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset
withComGoogleCommonIoOutputSupplier:(id<ComGoogleCommonIoOutputSupplier>)to OBJC_METHOD_FAMILY_NONE;

+ (void)copy__WithJavaIoFile:(JavaIoFile *)from
   withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset
      withJavaLangAppendable:(id<JavaLangAppendable>)to OBJC_METHOD_FAMILY_NONE;

+ (jboolean)equalWithJavaIoFile:(JavaIoFile *)file1
                 withJavaIoFile:(JavaIoFile *)file2;

+ (JavaIoFile *)createTempDir;

+ (void)touchWithJavaIoFile:(JavaIoFile *)file;

+ (void)createParentDirsWithJavaIoFile:(JavaIoFile *)file;

+ (void)moveWithJavaIoFile:(JavaIoFile *)from
            withJavaIoFile:(JavaIoFile *)to;

+ (NSString *)readFirstLineWithJavaIoFile:(JavaIoFile *)file
                withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

+ (id<JavaUtilList>)readLinesWithJavaIoFile:(JavaIoFile *)file
                  withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

+ (id)readLinesWithJavaIoFile:(JavaIoFile *)file
    withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset
withComGoogleCommonIoLineProcessor:(id<ComGoogleCommonIoLineProcessor>)callback;

+ (id)readBytesWithJavaIoFile:(JavaIoFile *)file
withComGoogleCommonIoByteProcessor:(id<ComGoogleCommonIoByteProcessor>)processor;

+ (jlong)getChecksumWithJavaIoFile:(JavaIoFile *)file
           withJavaUtilZipChecksum:(id<JavaUtilZipChecksum>)checksum;

+ (ComGoogleCommonHashHashCode *)hash__WithJavaIoFile:(JavaIoFile *)file
                  withComGoogleCommonHashHashFunction:(id<ComGoogleCommonHashHashFunction>)hashFunction;

+ (JavaNioMappedByteBuffer *)mapWithJavaIoFile:(JavaIoFile *)file;

+ (JavaNioMappedByteBuffer *)mapWithJavaIoFile:(JavaIoFile *)file
        withJavaNioChannelsFileChannel_MapMode:(JavaNioChannelsFileChannel_MapMode *)mode;

+ (JavaNioMappedByteBuffer *)mapWithJavaIoFile:(JavaIoFile *)file
        withJavaNioChannelsFileChannel_MapMode:(JavaNioChannelsFileChannel_MapMode *)mode
                                      withLong:(jlong)size;

+ (NSString *)simplifyPathWithNSString:(NSString *)pathname;

+ (NSString *)getFileExtensionWithNSString:(NSString *)fullName;

+ (NSString *)getNameWithoutExtensionWithNSString:(NSString *)file;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonIoFiles)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT JavaIoBufferedReader *ComGoogleCommonIoFiles_newReaderWithJavaIoFile_withJavaNioCharsetCharset_(JavaIoFile *file, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT JavaIoBufferedWriter *ComGoogleCommonIoFiles_newWriterWithJavaIoFile_withJavaNioCharsetCharset_(JavaIoFile *file, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT ComGoogleCommonIoByteSource *ComGoogleCommonIoFiles_asByteSourceWithJavaIoFile_(JavaIoFile *file);

FOUNDATION_EXPORT ComGoogleCommonIoByteSink *ComGoogleCommonIoFiles_asByteSinkWithJavaIoFile_withComGoogleCommonIoFileWriteModeEnumArray_(JavaIoFile *file, IOSObjectArray *modes);

FOUNDATION_EXPORT ComGoogleCommonIoCharSource *ComGoogleCommonIoFiles_asCharSourceWithJavaIoFile_withJavaNioCharsetCharset_(JavaIoFile *file, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT ComGoogleCommonIoCharSink *ComGoogleCommonIoFiles_asCharSinkWithJavaIoFile_withJavaNioCharsetCharset_withComGoogleCommonIoFileWriteModeEnumArray_(JavaIoFile *file, JavaNioCharsetCharset *charset, IOSObjectArray *modes);

FOUNDATION_EXPORT id<ComGoogleCommonIoInputSupplier> ComGoogleCommonIoFiles_newInputStreamSupplierWithJavaIoFile_(JavaIoFile *file);

FOUNDATION_EXPORT id<ComGoogleCommonIoOutputSupplier> ComGoogleCommonIoFiles_newOutputStreamSupplierWithJavaIoFile_(JavaIoFile *file);

FOUNDATION_EXPORT id<ComGoogleCommonIoOutputSupplier> ComGoogleCommonIoFiles_newOutputStreamSupplierWithJavaIoFile_withBoolean_(JavaIoFile *file, jboolean append);

FOUNDATION_EXPORT id<ComGoogleCommonIoInputSupplier> ComGoogleCommonIoFiles_newReaderSupplierWithJavaIoFile_withJavaNioCharsetCharset_(JavaIoFile *file, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT id<ComGoogleCommonIoOutputSupplier> ComGoogleCommonIoFiles_newWriterSupplierWithJavaIoFile_withJavaNioCharsetCharset_(JavaIoFile *file, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT id<ComGoogleCommonIoOutputSupplier> ComGoogleCommonIoFiles_newWriterSupplierWithJavaIoFile_withJavaNioCharsetCharset_withBoolean_(JavaIoFile *file, JavaNioCharsetCharset *charset, jboolean append);

FOUNDATION_EXPORT IOSByteArray *ComGoogleCommonIoFiles_toByteArrayWithJavaIoFile_(JavaIoFile *file);

FOUNDATION_EXPORT NSString *ComGoogleCommonIoFiles_toStringWithJavaIoFile_withJavaNioCharsetCharset_(JavaIoFile *file, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_copy__WithComGoogleCommonIoInputSupplier_withJavaIoFile_(id<ComGoogleCommonIoInputSupplier> from, JavaIoFile *to);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_writeWithByteArray_withJavaIoFile_(IOSByteArray *from, JavaIoFile *to);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_copy__WithJavaIoFile_withComGoogleCommonIoOutputSupplier_(JavaIoFile *from, id<ComGoogleCommonIoOutputSupplier> to);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_copy__WithJavaIoFile_withJavaIoOutputStream_(JavaIoFile *from, JavaIoOutputStream *to);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_copy__WithJavaIoFile_withJavaIoFile_(JavaIoFile *from, JavaIoFile *to);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_copy__WithComGoogleCommonIoInputSupplier_withJavaIoFile_withJavaNioCharsetCharset_(id<ComGoogleCommonIoInputSupplier> from, JavaIoFile *to, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_writeWithJavaLangCharSequence_withJavaIoFile_withJavaNioCharsetCharset_(id<JavaLangCharSequence> from, JavaIoFile *to, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_appendWithJavaLangCharSequence_withJavaIoFile_withJavaNioCharsetCharset_(id<JavaLangCharSequence> from, JavaIoFile *to, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_copy__WithJavaIoFile_withJavaNioCharsetCharset_withComGoogleCommonIoOutputSupplier_(JavaIoFile *from, JavaNioCharsetCharset *charset, id<ComGoogleCommonIoOutputSupplier> to);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_copy__WithJavaIoFile_withJavaNioCharsetCharset_withJavaLangAppendable_(JavaIoFile *from, JavaNioCharsetCharset *charset, id<JavaLangAppendable> to);

FOUNDATION_EXPORT jboolean ComGoogleCommonIoFiles_equalWithJavaIoFile_withJavaIoFile_(JavaIoFile *file1, JavaIoFile *file2);

FOUNDATION_EXPORT JavaIoFile *ComGoogleCommonIoFiles_createTempDir();

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_touchWithJavaIoFile_(JavaIoFile *file);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_createParentDirsWithJavaIoFile_(JavaIoFile *file);

FOUNDATION_EXPORT void ComGoogleCommonIoFiles_moveWithJavaIoFile_withJavaIoFile_(JavaIoFile *from, JavaIoFile *to);

FOUNDATION_EXPORT NSString *ComGoogleCommonIoFiles_readFirstLineWithJavaIoFile_withJavaNioCharsetCharset_(JavaIoFile *file, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT id<JavaUtilList> ComGoogleCommonIoFiles_readLinesWithJavaIoFile_withJavaNioCharsetCharset_(JavaIoFile *file, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT id ComGoogleCommonIoFiles_readLinesWithJavaIoFile_withJavaNioCharsetCharset_withComGoogleCommonIoLineProcessor_(JavaIoFile *file, JavaNioCharsetCharset *charset, id<ComGoogleCommonIoLineProcessor> callback);

FOUNDATION_EXPORT id ComGoogleCommonIoFiles_readBytesWithJavaIoFile_withComGoogleCommonIoByteProcessor_(JavaIoFile *file, id<ComGoogleCommonIoByteProcessor> processor);

FOUNDATION_EXPORT jlong ComGoogleCommonIoFiles_getChecksumWithJavaIoFile_withJavaUtilZipChecksum_(JavaIoFile *file, id<JavaUtilZipChecksum> checksum);

FOUNDATION_EXPORT ComGoogleCommonHashHashCode *ComGoogleCommonIoFiles_hash__WithJavaIoFile_withComGoogleCommonHashHashFunction_(JavaIoFile *file, id<ComGoogleCommonHashHashFunction> hashFunction);

FOUNDATION_EXPORT JavaNioMappedByteBuffer *ComGoogleCommonIoFiles_mapWithJavaIoFile_(JavaIoFile *file);

FOUNDATION_EXPORT JavaNioMappedByteBuffer *ComGoogleCommonIoFiles_mapWithJavaIoFile_withJavaNioChannelsFileChannel_MapMode_(JavaIoFile *file, JavaNioChannelsFileChannel_MapMode *mode);

FOUNDATION_EXPORT JavaNioMappedByteBuffer *ComGoogleCommonIoFiles_mapWithJavaIoFile_withJavaNioChannelsFileChannel_MapMode_withLong_(JavaIoFile *file, JavaNioChannelsFileChannel_MapMode *mode, jlong size);

FOUNDATION_EXPORT NSString *ComGoogleCommonIoFiles_simplifyPathWithNSString_(NSString *pathname);

FOUNDATION_EXPORT NSString *ComGoogleCommonIoFiles_getFileExtensionWithNSString_(NSString *fullName);

FOUNDATION_EXPORT NSString *ComGoogleCommonIoFiles_getNameWithoutExtensionWithNSString_(NSString *file);

J2OBJC_STATIC_FIELD_GETTER(ComGoogleCommonIoFiles, TEMP_DIR_ATTEMPTS, jint)
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonIoFiles)
#if !defined (_ComGoogleCommonIoFiles_FileByteSource_) && (ComGoogleCommonIoFiles_INCLUDE_ALL || ComGoogleCommonIoFiles_FileByteSource_INCLUDE)
#define _ComGoogleCommonIoFiles_FileByteSource_

@class IOSByteArray;
@class JavaIoFile;
@class JavaIoFileInputStream;

#define ComGoogleCommonIoByteSource_RESTRICT 1
#define ComGoogleCommonIoByteSource_INCLUDE 1
#include "com/google/common/io/ByteSource.h"


@interface ComGoogleCommonIoFiles_FileByteSource : ComGoogleCommonIoByteSource {
}

- (JavaIoFileInputStream *)openStream;

- (jlong)size;

- (IOSByteArray *)read;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonIoFiles_FileByteSource)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonIoFiles_FileByteSource)
#if !defined (_ComGoogleCommonIoFiles_FileByteSink_) && (ComGoogleCommonIoFiles_INCLUDE_ALL || ComGoogleCommonIoFiles_FileByteSink_INCLUDE)
#define _ComGoogleCommonIoFiles_FileByteSink_

@class ComGoogleCommonCollectImmutableSet;
@class IOSObjectArray;
@class JavaIoFile;
@class JavaIoFileOutputStream;

#define ComGoogleCommonIoByteSink_RESTRICT 1
#define ComGoogleCommonIoByteSink_INCLUDE 1
#include "com/google/common/io/ByteSink.h"


@interface ComGoogleCommonIoFiles_FileByteSink : ComGoogleCommonIoByteSink {
}

- (JavaIoFileOutputStream *)openStream;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleCommonIoFiles_FileByteSink)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END
#endif

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleCommonIoFiles_FileByteSink)
