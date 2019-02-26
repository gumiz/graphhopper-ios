//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/reader/dem/CGIARProvider.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/graphhopper/reader/dem/CGIARProvider.h"
#include "com/graphhopper/reader/dem/ElevationProvider.h"
#include "com/graphhopper/storage/DAType.h"
#include "com/graphhopper/storage/Directory.h"
#include "com/graphhopper/storage/GHDirectory.h"
#include "com/graphhopper/util/Downloader.h"
#include "java/io/File.h"
#include "java/io/IOException.h"
#include "java/io/PrintStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/slf4j/Logger.h"
#include "org/slf4j/LoggerFactory.h"

@interface ComGraphhopperReaderDemCGIARProvider () {
 @public
  id<OrgSlf4jLogger> logger_;
  id<JavaUtilMap> cacheData_;
  jdouble invPrecision_;
  jint degree_;
  Downloader *downloader_;
  JavaIoFile *cacheDir_;
  NSString *baseUrl_;
  id<Directory> dir_;
  DAType *daType_;
  jboolean calcMean_;
  jboolean autoRemoveTemporary_;
  jlong sleep_;
}

- (id<Directory>)getDirectory;
@end

J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemCGIARProvider, logger_, id<OrgSlf4jLogger>)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemCGIARProvider, cacheData_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemCGIARProvider, downloader_, Downloader *)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemCGIARProvider, cacheDir_, JavaIoFile *)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemCGIARProvider, baseUrl_, NSString *)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemCGIARProvider, dir_, id<Directory>)
J2OBJC_FIELD_SETTER(ComGraphhopperReaderDemCGIARProvider, daType_, DAType *)

@implementation ComGraphhopperReaderDemCGIARProvider

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  ComGraphhopperReaderDemCGIARProvider_mainWithNSStringArray_(args);
}

- (void)setCalcMeanWithBoolean:(jboolean)eleCalcMean {
  calcMean_ = eleCalcMean;
}

- (void)setSleepWithLong:(jlong)sleep {
  self->sleep_ = sleep;
}

- (void)setAutoRemoveTemporaryFilesWithBoolean:(jboolean)autoRemoveTemporary {
  self->autoRemoveTemporary_ = autoRemoveTemporary;
}

- (void)setDownloaderWithDownloader:(Downloader *)downloader {
  ComGraphhopperReaderDemCGIARProvider_set_downloader_(self, downloader);
}

- (id<ComGraphhopperReaderDemElevationProvider>)setCacheDirWithJavaIoFile:(JavaIoFile *)cacheDir {
  if ([((JavaIoFile *) nil_chk(cacheDir)) exists] && ![cacheDir isDirectory]) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"Cache path has to be a directory"] autorelease];
  @try {
    ComGraphhopperReaderDemCGIARProvider_set_cacheDir_(self, [cacheDir getCanonicalFile]);
  }
  @catch (JavaIoIOException *ex) {
    @throw [[[JavaLangRuntimeException alloc] initWithJavaLangThrowable:ex] autorelease];
  }
  return self;
}

- (JavaIoFile *)getCacheDir {
  return cacheDir_;
}

- (id<ComGraphhopperReaderDemElevationProvider>)setBaseURLWithNSString:(NSString *)baseUrl {
  if (baseUrl == nil || [baseUrl isEmpty]) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"baseUrl cannot be empty"] autorelease];
  ComGraphhopperReaderDemCGIARProvider_set_baseUrl_(self, baseUrl);
  return self;
}

- (id<ComGraphhopperReaderDemElevationProvider>)setDATypeWithDAType:(DAType *)daType {
  ComGraphhopperReaderDemCGIARProvider_set_daType_(self, daType);
  return self;
}

- (jdouble)getEleWithDouble:(jdouble)lat
                 withDouble:(jdouble)lon {
  @throw [[[JavaLangUnsupportedOperationException alloc] initWithNSString:@"Not available on iOS"] autorelease];
}

- (jint)downWithDouble:(jdouble)val {
  jint intVal = J2ObjCFpToInt((val / degree_)) * degree_;
  if (!(val >= 0 || intVal - val < invPrecision_)) intVal = intVal - degree_;
  return intVal;
}

- (NSString *)getFileNameWithDouble:(jdouble)lat
                         withDouble:(jdouble)lon {
  lon = 1 + (180 + lon) / degree_;
  jint lonInt = J2ObjCFpToInt(lon);
  lat = 1 + (60 - lat) / degree_;
  jint latInt = J2ObjCFpToInt(lat);
  if (JavaLangMath_absWithDouble_(latInt - lat) < invPrecision_ / degree_) latInt--;
  NSString *str = @"srtm_";
  str = JreStrcat("$$", str, lonInt < 10 ? @"0" : @"");
  str = JreStrcat("$I", str, lonInt);
  str = JreStrcat("$$", str, latInt < 10 ? @"_0" : @"_");
  str = JreStrcat("$I", str, latInt);
  return str;
}

- (void)release__ {
  [((id<JavaUtilMap>) nil_chk(cacheData_)) clear];
  if (autoRemoveTemporary_ && dir_ != nil) [dir_ clear];
}

- (NSString *)description {
  return @"CGIAR";
}

- (id<Directory>)getDirectory {
  if (dir_ != nil) return dir_;
  [((id<OrgSlf4jLogger>) nil_chk(logger_)) infoWithNSString:JreStrcat("$$$$@$@", [self description], @" Elevation Provider, from: ", baseUrl_, @", to: ", cacheDir_, @", as: ", daType_)];
  return ComGraphhopperReaderDemCGIARProvider_setAndConsume_dir_(self, [[GHDirectory alloc] initWithNSString:[((JavaIoFile *) nil_chk(cacheDir_)) getAbsolutePath] withDAType:daType_]);
}

- (instancetype)init {
  if (self = [super init]) {
    precision_ = 1e7;
    ComGraphhopperReaderDemCGIARProvider_set_logger_(self, OrgSlf4jLoggerFactory_getLoggerWithIOSClass_([self getClass]));
    ComGraphhopperReaderDemCGIARProvider_setAndConsume_cacheData_(self, [[JavaUtilHashMap alloc] init]);
    invPrecision_ = 1 / precision_;
    degree_ = 5;
    ComGraphhopperReaderDemCGIARProvider_set_downloader_(self, [((Downloader *) [[[Downloader alloc] initWithNSString:@"GraphHopper CGIARReader"] autorelease]) setTimeoutWithInt:10000]);
    ComGraphhopperReaderDemCGIARProvider_setAndConsume_cacheDir_(self, [[JavaIoFile alloc] initWithNSString:@"/tmp/cgiar"]);
    ComGraphhopperReaderDemCGIARProvider_set_baseUrl_(self, @"http://srtm.csi.cgiar.org/SRT-ZIP/SRTM_V41/SRTM_Data_GeoTiff");
    ComGraphhopperReaderDemCGIARProvider_set_daType_(self, DAType_get_MMAP_());
    calcMean_ = NO;
    autoRemoveTemporary_ = YES;
    sleep_ = 2000;
  }
  return self;
}

- (void)dealloc {
  RELEASE_(logger_);
  RELEASE_(cacheData_);
  RELEASE_(downloader_);
  RELEASE_(cacheDir_);
  RELEASE_(baseUrl_);
  RELEASE_(dir_);
  RELEASE_(daType_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComGraphhopperReaderDemCGIARProvider *)other {
  [super copyAllFieldsTo:other];
  other->precision_ = precision_;
  ComGraphhopperReaderDemCGIARProvider_set_logger_(other, logger_);
  ComGraphhopperReaderDemCGIARProvider_set_cacheData_(other, cacheData_);
  other->invPrecision_ = invPrecision_;
  other->degree_ = degree_;
  ComGraphhopperReaderDemCGIARProvider_set_downloader_(other, downloader_);
  ComGraphhopperReaderDemCGIARProvider_set_cacheDir_(other, cacheDir_);
  ComGraphhopperReaderDemCGIARProvider_set_baseUrl_(other, baseUrl_);
  ComGraphhopperReaderDemCGIARProvider_set_dir_(other, dir_);
  ComGraphhopperReaderDemCGIARProvider_set_daType_(other, daType_);
  other->calcMean_ = calcMean_;
  other->autoRemoveTemporary_ = autoRemoveTemporary_;
  other->sleep_ = sleep_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "mainWithNSStringArray:", "main", "V", 0x9, NULL },
    { "setCalcMeanWithBoolean:", "setCalcMean", "V", 0x1, NULL },
    { "setSleepWithLong:", "setSleep", "V", 0x0, NULL },
    { "setAutoRemoveTemporaryFilesWithBoolean:", "setAutoRemoveTemporaryFiles", "V", 0x1, NULL },
    { "setDownloaderWithDownloader:", "setDownloader", "V", 0x1, NULL },
    { "setCacheDirWithJavaIoFile:", "setCacheDir", "Lcom.graphhopper.reader.dem.ElevationProvider;", 0x1, NULL },
    { "getCacheDir", NULL, "Ljava.io.File;", 0x4, NULL },
    { "setBaseURLWithNSString:", "setBaseURL", "Lcom.graphhopper.reader.dem.ElevationProvider;", 0x1, NULL },
    { "setDATypeWithDAType:", "setDAType", "Lcom.graphhopper.reader.dem.ElevationProvider;", 0x1, NULL },
    { "getEleWithDouble:withDouble:", "getEle", "D", 0x1, NULL },
    { "downWithDouble:", "down", "I", 0x0, NULL },
    { "getFileNameWithDouble:withDouble:", "getFileName", "Ljava.lang.String;", 0x4, NULL },
    { "release__", "release", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getDirectory", NULL, "Lcom.graphhopper.storage.Directory;", 0x2, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "WIDTH_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComGraphhopperReaderDemCGIARProvider_WIDTH },
    { "precision_", NULL, 0x10, "D", NULL,  },
    { "logger_", NULL, 0x12, "Lorg.slf4j.Logger;", NULL,  },
    { "cacheData_", NULL, 0x12, "Ljava.util.Map;", NULL,  },
    { "invPrecision_", NULL, 0x12, "D", NULL,  },
    { "degree_", NULL, 0x12, "I", NULL,  },
    { "downloader_", NULL, 0x2, "Lcom.graphhopper.util.Downloader;", NULL,  },
    { "cacheDir_", NULL, 0x2, "Ljava.io.File;", NULL,  },
    { "baseUrl_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "dir_", NULL, 0x2, "Lcom.graphhopper.storage.Directory;", NULL,  },
    { "daType_", NULL, 0x2, "Lcom.graphhopper.storage.DAType;", NULL,  },
    { "calcMean_", NULL, 0x2, "Z", NULL,  },
    { "autoRemoveTemporary_", NULL, 0x2, "Z", NULL,  },
    { "sleep_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _ComGraphhopperReaderDemCGIARProvider = { 1, "CGIARProvider", "com.graphhopper.reader.dem", NULL, 0x1, 16, methods, 14, fields, 0, NULL};
  return &_ComGraphhopperReaderDemCGIARProvider;
}

@end

void ComGraphhopperReaderDemCGIARProvider_mainWithNSStringArray_(IOSObjectArray *args) {
  ComGraphhopperReaderDemCGIARProvider_init();
  ComGraphhopperReaderDemCGIARProvider *provider = [[[ComGraphhopperReaderDemCGIARProvider alloc] init] autorelease];
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithDouble:[provider getEleWithDouble:46 withDouble:-20]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:49.949784 withDouble:11.57517]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:49.968668 withDouble:11.575127]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:49.968682 withDouble:11.574842]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:-22.532854 withDouble:-65.110474]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:38.065392 withDouble:-87.099609]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:40 withDouble:-105.2277023]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:39.99999999 withDouble:-105.2277023]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:39.9999999 withDouble:-105.2277023]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:39.999999 withDouble:-105.2277023]];
  [JavaLangSystem_get_out_() printlnWithDouble:[provider getEleWithDouble:29.840644 withDouble:-42.890625]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGraphhopperReaderDemCGIARProvider)