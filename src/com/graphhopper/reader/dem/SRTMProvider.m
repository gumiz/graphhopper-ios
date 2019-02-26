//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/reader/dem/SRTMProvider.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/reader/dem/ElevationProvider.h"
#include "com/graphhopper/reader/dem/HeightTile.h"
#include "com/graphhopper/reader/dem/SRTMProvider.h"
#include "com/graphhopper/storage/DAType.h"
#include "com/graphhopper/storage/DataAccess.h"
#include "com/graphhopper/storage/Directory.h"
#include "com/graphhopper/storage/GHDirectory.h"
#include "com/graphhopper/util/BitUtil.h"
#include "com/graphhopper/util/Downloader.h"
#include "com/graphhopper/util/Helper.h"
#include "gnu/trove/map/hash/TIntObjectHashMap.h"
#include "java/io/BufferedInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/FileNotFoundException.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Short.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/net/SocketTimeoutException.h"
#include "java/nio/charset/Charset.h"
#include "java/util/List.h"
#include "java/util/zip/ZipEntry.h"
#include "java/util/zip/ZipInputStream.h"
#include "org/slf4j/Logger.h"
#include "org/slf4j/LoggerFactory.h"

__attribute__((unused)) static ComGraphhopperReaderDemSRTMProvider *ComGraphhopperReaderDemSRTMProvider_init__(ComGraphhopperReaderDemSRTMProvider *self);
__attribute__((unused)) static jint ComGraphhopperReaderDemSRTMProvider_calcIntKeyWithDouble_withDouble_(ComGraphhopperReaderDemSRTMProvider *self, jdouble lat, jdouble lon);
__attribute__((unused)) static void ComGraphhopperReaderDemSRTMProvider_updateHeightsFromZipFileWithNSString_withDataAccess_(ComGraphhopperReaderDemSRTMProvider *self, NSString *fileDetails, id<DataAccess> heights);
__attribute__((unused)) static IOSByteArray *ComGraphhopperReaderDemSRTMProvider_getByteArrayFromZipFileWithNSString_(ComGraphhopperReaderDemSRTMProvider *self, NSString *fileDetails);
__attribute__((unused)) static id<Directory> ComGraphhopperReaderDemSRTMProvider_getDirectory(ComGraphhopperReaderDemSRTMProvider *self);

@interface ComGraphhopperReaderDemSRTMProvider () {
 @public
  id<OrgSlf4jLogger> logger_;
  jint DEFAULT_WIDTH_;
  jint WIDTH_BYTE_INDEX_;
  GnuTroveMapHashTIntObjectHashMap *cacheData_;
  GnuTroveMapHashTIntObjectHashMap *areas_;
  jdouble precision_;
  jdouble invPrecision_;
  id<Directory> dir_;
  DAType *daType_;
  Downloader *downloader_;
  JavaIoFile *cacheDir_;
  NSString *baseUrl_;
  jboolean calcMean_;
}

/**
 @brief The URLs are a bit ugly and so we need to find out which area name a certain lat,lon coordinate has.
 */
- (ComGraphhopperReaderDemSRTMProvider *)init__ OBJC_METHOD_FAMILY_NONE;

- (jint)calcIntKeyWithDouble:(jdouble)lat
                  withDouble:(jdouble)lon;

- (void)updateHeightsFromZipFileWithNSString:(NSString *)fileDetails
                              withDataAccess:(id<DataAccess>)heights;

- (IOSByteArray *)getByteArrayFromZipFileWithNSString:(NSString *)fileDetails;

- (id<Directory>)getDirectory;
@end

J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemSRTMProvider, logger_, id<OrgSlf4jLogger>)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemSRTMProvider, cacheData_, GnuTroveMapHashTIntObjectHashMap *)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemSRTMProvider, areas_, GnuTroveMapHashTIntObjectHashMap *)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemSRTMProvider, dir_, id<Directory>)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemSRTMProvider, daType_, DAType *)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemSRTMProvider, downloader_, Downloader *)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemSRTMProvider, cacheDir_, JavaIoFile *)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemSRTMProvider, baseUrl_, NSString *)

BOOL ComGraphhopperReaderDemSRTMProvider_initialized = NO;

@implementation ComGraphhopperReaderDemSRTMProvider

BitUtil * ComGraphhopperReaderDemSRTMProvider_BIT_UTIL_;

- (instancetype)init {
  if (self = [super init]) {
    ComGraphhopperReaderDemSRTMProvider_set_logger_(self, OrgSlf4jLoggerFactory_getLoggerWithIOSClass_([self getClass]));
    DEFAULT_WIDTH_ = 1201;
    WIDTH_BYTE_INDEX_ = 0;
    ComGraphhopperReaderDemSRTMProvider_setAndConsume_cacheData_(self, [[GnuTroveMapHashTIntObjectHashMap alloc] init]);
    ComGraphhopperReaderDemSRTMProvider_setAndConsume_areas_(self, [[GnuTroveMapHashTIntObjectHashMap alloc] init]);
    precision_ = 1e7;
    invPrecision_ = 1 / precision_;
    ComGraphhopperReaderDemSRTMProvider_set_daType_(self, DAType_get_MMAP_());
    ComGraphhopperReaderDemSRTMProvider_set_downloader_(self, [((Downloader *) [[[Downloader alloc] initWithNSString:@"GraphHopper SRTMReader"] autorelease]) setTimeoutWithInt:10000]);
    ComGraphhopperReaderDemSRTMProvider_setAndConsume_cacheDir_(self, [[JavaIoFile alloc] initWithNSString:@"/tmp/srtm"]);
    ComGraphhopperReaderDemSRTMProvider_set_baseUrl_(self, @"https://srtm.kurviger.de/SRTM3/");
    calcMean_ = NO;
    ComGraphhopperReaderDemSRTMProvider_init__(self);
  }
  return self;
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  ComGraphhopperReaderDemSRTMProvider_mainWithNSStringArray_(args);
}

- (void)setCalcMeanWithBoolean:(jboolean)calcMean {
  self->calcMean_ = calcMean;
}

- (ComGraphhopperReaderDemSRTMProvider *)init__ {
  return ComGraphhopperReaderDemSRTMProvider_init__(self);
}

- (jint)calcIntKeyWithDouble:(jdouble)lat
                  withDouble:(jdouble)lon {
  return ComGraphhopperReaderDemSRTMProvider_calcIntKeyWithDouble_withDouble_(self, lat, lon);
}

- (void)setDownloaderWithDownloader:(Downloader *)downloader {
  ComGraphhopperReaderDemSRTMProvider_set_downloader_(self, downloader);
}

- (id<ComGraphhopperReaderDemElevationProvider>)setCacheDirWithJavaIoFile:(JavaIoFile *)cacheDir {
  if ([((JavaIoFile *) nil_chk(cacheDir)) exists] && ![cacheDir isDirectory]) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"Cache path has to be a directory"] autorelease];
  @try {
    ComGraphhopperReaderDemSRTMProvider_set_cacheDir_(self, [cacheDir getCanonicalFile]);
  }
  @catch (JavaIoIOException *ex) {
    @throw [[[JavaLangRuntimeException alloc] initWithJavaLangThrowable:ex] autorelease];
  }
  return self;
}

- (id<ComGraphhopperReaderDemElevationProvider>)setBaseURLWithNSString:(NSString *)baseUrl {
  if (baseUrl == nil || [baseUrl isEmpty]) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"baseUrl cannot be empty"] autorelease];
  ComGraphhopperReaderDemSRTMProvider_set_baseUrl_(self, baseUrl);
  return self;
}

- (id<ComGraphhopperReaderDemElevationProvider>)setDATypeWithDAType:(DAType *)daType {
  ComGraphhopperReaderDemSRTMProvider_set_daType_(self, daType);
  return self;
}

- (jint)downWithDouble:(jdouble)val {
  jint intVal = J2ObjCFpToInt(val);
  if (val >= 0 || intVal - val < invPrecision_) return intVal;
  return intVal - 1;
}

- (NSString *)getFileStringWithDouble:(jdouble)lat
                           withDouble:(jdouble)lon {
  jint intKey = ComGraphhopperReaderDemSRTMProvider_calcIntKeyWithDouble_withDouble_(self, lat, lon);
  NSString *str = [((GnuTroveMapHashTIntObjectHashMap *) nil_chk(areas_)) getWithInt:intKey];
  if (str == nil) return nil;
  jint minLat = JavaLangMath_absWithInt_([self downWithDouble:lat]);
  jint minLon = JavaLangMath_absWithInt_([self downWithDouble:lon]);
  str = JreStrcat("$C", str, '/');
  if (lat >= 0) str = JreStrcat("$C", str, 'N');
  else str = JreStrcat("$C", str, 'S');
  if (minLat < 10) str = JreStrcat("$C", str, '0');
  str = JreStrcat("$I", str, minLat);
  if (lon >= 0) str = JreStrcat("$C", str, 'E');
  else str = JreStrcat("$C", str, 'W');
  if (minLon < 10) str = JreStrcat("$C", str, '0');
  if (minLon < 100) str = JreStrcat("$C", str, '0');
  str = JreStrcat("$I", str, minLon);
  return str;
}

- (jdouble)getEleWithDouble:(jdouble)lat
                 withDouble:(jdouble)lon {
  lat = J2ObjCFpToInt((lat * precision_)) / precision_;
  lon = J2ObjCFpToInt((lon * precision_)) / precision_;
  jint intKey = ComGraphhopperReaderDemSRTMProvider_calcIntKeyWithDouble_withDouble_(self, lat, lon);
  ComGraphhopperReaderDemHeightTile *demProvider = [((GnuTroveMapHashTIntObjectHashMap *) nil_chk(cacheData_)) getWithInt:intKey];
  if (demProvider != nil) return [demProvider getHeightWithDouble:lat withDouble:lon];
  if (![((JavaIoFile *) nil_chk(cacheDir_)) exists]) [cacheDir_ mkdirs];
  NSString *fileDetails = [self getFileStringWithDouble:lat withDouble:lon];
  if (fileDetails == nil) return 0;
  id<DataAccess> heights = [((id<Directory>) nil_chk(ComGraphhopperReaderDemSRTMProvider_getDirectory(self))) findWithNSString:JreStrcat("$I", @"dem", intKey)];
  jboolean loadExisting = NO;
  @try {
    loadExisting = [((id<DataAccess>) nil_chk(heights)) loadExisting];
  }
  @catch (JavaLangException *ex) {
    [((id<OrgSlf4jLogger>) nil_chk(logger_)) warnWithNSString:JreStrcat("$I$$", @"cannot load dem", intKey, @", error:", [((JavaLangException *) nil_chk(ex)) getMessage])];
  }
  if (!loadExisting) ComGraphhopperReaderDemSRTMProvider_updateHeightsFromZipFileWithNSString_withDataAccess_(self, fileDetails, heights);
  jint width = J2ObjCFpToInt((JavaLangMath_sqrtWithDouble_([((id<DataAccess>) nil_chk(heights)) getHeaderWithInt:WIDTH_BYTE_INDEX_]) + 0.5));
  if (width == 0) width = DEFAULT_WIDTH_;
  demProvider = [[[ComGraphhopperReaderDemHeightTile alloc] initWithInt:[self downWithDouble:lat] withInt:[self downWithDouble:lon] withInt:width withDouble:precision_ withInt:1] autorelease];
  [cacheData_ putWithInt:intKey withId:demProvider];
  [demProvider setCalcMeanWithBoolean:calcMean_];
  [demProvider setHeightsWithDataAccess:heights];
  return [demProvider getHeightWithDouble:lat withDouble:lon];
}

- (void)updateHeightsFromZipFileWithNSString:(NSString *)fileDetails
                              withDataAccess:(id<DataAccess>)heights {
  ComGraphhopperReaderDemSRTMProvider_updateHeightsFromZipFileWithNSString_withDataAccess_(self, fileDetails, heights);
}

- (IOSByteArray *)getByteArrayFromZipFileWithNSString:(NSString *)fileDetails {
  return ComGraphhopperReaderDemSRTMProvider_getByteArrayFromZipFileWithNSString_(self, fileDetails);
}

- (void)release__ {
  [((GnuTroveMapHashTIntObjectHashMap *) nil_chk(cacheData_)) clear];
  if (dir_ != nil) [dir_ clear];
}

- (NSString *)description {
  return @"SRTM";
}

- (id<Directory>)getDirectory {
  return ComGraphhopperReaderDemSRTMProvider_getDirectory(self);
}

- (void)dealloc {
  RELEASE_(logger_);
  RELEASE_(cacheData_);
  RELEASE_(areas_);
  RELEASE_(dir_);
  RELEASE_(daType_);
  RELEASE_(downloader_);
  RELEASE_(cacheDir_);
  RELEASE_(baseUrl_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComGraphhopperReaderDemSRTMProvider *)other {
  [super copyAllFieldsTo:other];
  ComGraphhopperReaderDemSRTMProvider_set_logger_(other, logger_);
  other->DEFAULT_WIDTH_ = DEFAULT_WIDTH_;
  other->WIDTH_BYTE_INDEX_ = WIDTH_BYTE_INDEX_;
  ComGraphhopperReaderDemSRTMProvider_set_cacheData_(other, cacheData_);
  ComGraphhopperReaderDemSRTMProvider_set_areas_(other, areas_);
  other->precision_ = precision_;
  other->invPrecision_ = invPrecision_;
  ComGraphhopperReaderDemSRTMProvider_set_dir_(other, dir_);
  ComGraphhopperReaderDemSRTMProvider_set_daType_(other, daType_);
  ComGraphhopperReaderDemSRTMProvider_set_downloader_(other, downloader_);
  ComGraphhopperReaderDemSRTMProvider_set_cacheDir_(other, cacheDir_);
  ComGraphhopperReaderDemSRTMProvider_set_baseUrl_(other, baseUrl_);
  other->calcMean_ = calcMean_;
}

+ (void)initialize {
  if (self == [ComGraphhopperReaderDemSRTMProvider class]) {
    JreStrongAssign(&ComGraphhopperReaderDemSRTMProvider_BIT_UTIL_, nil, BitUtil_get_BIG_());
    J2OBJC_SET_INITIALIZED(ComGraphhopperReaderDemSRTMProvider)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SRTMProvider", NULL, 0x1, NULL },
    { "mainWithNSStringArray:", "main", "V", 0x9, "Ljava.io.IOException;" },
    { "setCalcMeanWithBoolean:", "setCalcMean", "V", 0x1, NULL },
    { "init__", "init", "Lcom.graphhopper.reader.dem.SRTMProvider;", 0x2, NULL },
    { "calcIntKeyWithDouble:withDouble:", "calcIntKey", "I", 0x2, NULL },
    { "setDownloaderWithDownloader:", "setDownloader", "V", 0x1, NULL },
    { "setCacheDirWithJavaIoFile:", "setCacheDir", "Lcom.graphhopper.reader.dem.ElevationProvider;", 0x1, NULL },
    { "setBaseURLWithNSString:", "setBaseURL", "Lcom.graphhopper.reader.dem.ElevationProvider;", 0x1, NULL },
    { "setDATypeWithDAType:", "setDAType", "Lcom.graphhopper.reader.dem.ElevationProvider;", 0x1, NULL },
    { "downWithDouble:", "down", "I", 0x0, NULL },
    { "getFileStringWithDouble:withDouble:", "getFileString", "Ljava.lang.String;", 0x0, NULL },
    { "getEleWithDouble:withDouble:", "getEle", "D", 0x1, NULL },
    { "updateHeightsFromZipFileWithNSString:withDataAccess:", "updateHeightsFromZipFile", "V", 0x2, "Ljava.lang.RuntimeException;" },
    { "getByteArrayFromZipFileWithNSString:", "getByteArrayFromZipFile", "[B", 0x2, "Ljava.lang.InterruptedException;Ljava.io.FileNotFoundException;Ljava.io.IOException;" },
    { "release__", "release", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getDirectory", NULL, "Lcom.graphhopper.storage.Directory;", 0x2, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BIT_UTIL_", NULL, 0x1a, "Lcom.graphhopper.util.BitUtil;", &ComGraphhopperReaderDemSRTMProvider_BIT_UTIL_,  },
    { "logger_", NULL, 0x12, "Lorg.slf4j.Logger;", NULL,  },
    { "DEFAULT_WIDTH_", NULL, 0x12, "I", NULL,  },
    { "WIDTH_BYTE_INDEX_", NULL, 0x12, "I", NULL,  },
    { "cacheData_", NULL, 0x12, "Lgnu.trove.map.hash.TIntObjectHashMap;", NULL,  },
    { "areas_", NULL, 0x12, "Lgnu.trove.map.hash.TIntObjectHashMap;", NULL,  },
    { "precision_", NULL, 0x12, "D", NULL,  },
    { "invPrecision_", NULL, 0x12, "D", NULL,  },
    { "dir_", NULL, 0x2, "Lcom.graphhopper.storage.Directory;", NULL,  },
    { "daType_", NULL, 0x2, "Lcom.graphhopper.storage.DAType;", NULL,  },
    { "downloader_", NULL, 0x2, "Lcom.graphhopper.util.Downloader;", NULL,  },
    { "cacheDir_", NULL, 0x2, "Ljava.io.File;", NULL,  },
    { "baseUrl_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "calcMean_", NULL, 0x2, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComGraphhopperReaderDemSRTMProvider = { 1, "SRTMProvider", "com.graphhopper.reader.dem", NULL, 0x1, 17, methods, 14, fields, 0, NULL};
  return &_ComGraphhopperReaderDemSRTMProvider;
}

@end

void ComGraphhopperReaderDemSRTMProvider_mainWithNSStringArray_(IOSObjectArray *args) {
  ComGraphhopperReaderDemSRTMProvider_init();
  ComGraphhopperReaderDemSRTMProvider *provider = [[[ComGraphhopperReaderDemSRTMProvider alloc] init] autorelease];
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithDouble:[provider getEleWithDouble:47.468668 withDouble:14.575127]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:47.467753 withDouble:14.573911]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:46.468835 withDouble:12.578777]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:48.469123 withDouble:9.576393]];
  [provider setCalcMeanWithBoolean:YES];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:47.467753 withDouble:14.573911]];
}

ComGraphhopperReaderDemSRTMProvider *ComGraphhopperReaderDemSRTMProvider_init__(ComGraphhopperReaderDemSRTMProvider *self) {
  @try {
    IOSObjectArray *strs = [IOSObjectArray arrayWithObjects:(id[]){ @"Africa", @"Australia", @"Eurasia", @"Islands", @"North_America", @"South_America" } count:6 type:NSString_class_()];
    {
      IOSObjectArray *a__ = strs;
      NSString * const *b__ = a__->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *str = *b__++;
        JavaIoInputStream *is = [[self getClass] getResourceAsStream:JreStrcat("$$", str, @"_names.txt")];
        for (NSString * __strong line in nil_chk(Helper_readFileWithJavaIoReader_([[[JavaIoInputStreamReader alloc] initWithJavaIoInputStream:is withJavaNioCharsetCharset:Helper_get_UTF_CS_()] autorelease]))) {
          jint lat = JavaLangInteger_parseIntWithNSString_([((NSString *) nil_chk(line)) substring:1 endIndex:3]);
          if ([((NSString *) nil_chk([line substring:0 endIndex:1])) charAtWithInt:0] == 'S') lat = -lat;
          jint lon = JavaLangInteger_parseIntWithNSString_([line substring:4 endIndex:7]);
          if ([((NSString *) nil_chk([line substring:3 endIndex:4])) charAtWithInt:0] == 'W') lon = -lon;
          jint intKey = ComGraphhopperReaderDemSRTMProvider_calcIntKeyWithDouble_withDouble_(self, lat, lon);
          NSString *key = [((GnuTroveMapHashTIntObjectHashMap *) nil_chk(self->areas_)) putWithInt:intKey withId:str];
          if (key != nil) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$IC$$$", @"do not overwrite existing! key ", intKey, ' ', key, @" vs. ", str)] autorelease];
        }
      }
    }
    return self;
  }
  @catch (JavaLangException *ex) {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Cannot load area names from classpath" withJavaLangThrowable:ex] autorelease];
  }
}

jint ComGraphhopperReaderDemSRTMProvider_calcIntKeyWithDouble_withDouble_(ComGraphhopperReaderDemSRTMProvider *self, jdouble lat, jdouble lon) {
  return ([self downWithDouble:lat] + 90) * 1000 + [self downWithDouble:lon] + 180;
}

void ComGraphhopperReaderDemSRTMProvider_updateHeightsFromZipFileWithNSString_withDataAccess_(ComGraphhopperReaderDemSRTMProvider *self, NSString *fileDetails, id<DataAccess> heights) {
  @try {
    IOSByteArray *bytes = ComGraphhopperReaderDemSRTMProvider_getByteArrayFromZipFileWithNSString_(self, fileDetails);
    [((id<DataAccess>) nil_chk(heights)) createWithLong:((IOSByteArray *) nil_chk(bytes))->size_];
    for (jint bytePos = 0; bytePos < bytes->size_; bytePos += 2) {
      jshort val = [((BitUtil *) nil_chk(ComGraphhopperReaderDemSRTMProvider_BIT_UTIL_)) toShortWithByteArray:bytes withInt:bytePos];
      if (val < -1000 || val > 12000) val = JavaLangShort_MIN_VALUE;
      [heights setShortWithLong:bytePos withShort:val];
    }
    [heights setHeaderWithInt:self->WIDTH_BYTE_INDEX_ withInt:bytes->size_ / 2];
    [heights flush];
  }
  @catch (JavaLangException *ex) {
    @throw [[[JavaLangRuntimeException alloc] initWithJavaLangThrowable:ex] autorelease];
  }
}

IOSByteArray *ComGraphhopperReaderDemSRTMProvider_getByteArrayFromZipFileWithNSString_(ComGraphhopperReaderDemSRTMProvider *self, NSString *fileDetails) {
  NSString *zippedURL = JreStrcat("$C$$", self->baseUrl_, '/', fileDetails, @".hgt.zip");
  JavaIoFile *file = [[[JavaIoFile alloc] initWithJavaIoFile:self->cacheDir_ withNSString:[((JavaIoFile *) [[[JavaIoFile alloc] initWithNSString:zippedURL] autorelease]) getName]] autorelease];
  JavaIoInputStream *is;
  if (![file exists]) {
    for (jint i = 0; i < 3; i++) {
      @try {
        [((Downloader *) nil_chk(self->downloader_)) downloadFileWithNSString:zippedURL withNSString:[file getAbsolutePath]];
        break;
      }
      @catch (JavaNetSocketTimeoutException *ex) {
        JavaLangThread_sleepWithLong_(2000);
        continue;
      }
    }
  }
  is = [[[JavaIoFileInputStream alloc] initWithJavaIoFile:file] autorelease];
  JavaUtilZipZipInputStream *zis = [[[JavaUtilZipZipInputStream alloc] initWithJavaIoInputStream:is] autorelease];
  [zis getNextEntry];
  JavaIoBufferedInputStream *buff = [[[JavaIoBufferedInputStream alloc] initWithJavaIoInputStream:zis] autorelease];
  JavaIoByteArrayOutputStream *os = [[[JavaIoByteArrayOutputStream alloc] init] autorelease];
  IOSByteArray *buffer = [IOSByteArray arrayWithLength:(jint) 0xFFFF];
  jint len;
  while ((len = [buff readWithByteArray:buffer]) > 0) {
    [os writeWithByteArray:buffer withInt:0 withInt:len];
  }
  [os flush];
  Helper_closeWithJavaIoCloseable_(buff);
  return [os toByteArray];
}

id<Directory> ComGraphhopperReaderDemSRTMProvider_getDirectory(ComGraphhopperReaderDemSRTMProvider *self) {
  if (self->dir_ != nil) return self->dir_;
  [((id<OrgSlf4jLogger>) nil_chk(self->logger_)) infoWithNSString:JreStrcat("$$$$@$@", [self description], @" Elevation Provider, from: ", self->baseUrl_, @", to: ", self->cacheDir_, @", as: ", self->daType_)];
  return ComGraphhopperReaderDemSRTMProvider_setAndConsume_dir_(self, [[GHDirectory alloc] initWithNSString:[((JavaIoFile *) nil_chk(self->cacheDir_)) getAbsolutePath] withDAType:self->daType_]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGraphhopperReaderDemSRTMProvider)
