//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/RAMDirectory.java
//

#ifndef _RAMDirectory_H_
#define _RAMDirectory_H_

#include "J2ObjC_header.h"
#include "com/graphhopper/storage/GHDirectory.h"

/**
 @brief Manages in-memory DataAccess objects.
 <p>
 @author Peter Karich
 */
@interface RAMDirectory : GHDirectory {
}

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)location;

/**
 @param store true if you want that the RAMDirectory can be loaded or saved on demand, false if it should be entirely in RAM
 */
- (instancetype)initWithNSString:(NSString *)_location
                     withBoolean:(jboolean)store;

@end

J2OBJC_EMPTY_STATIC_INIT(RAMDirectory)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef RAMDirectory ComGraphhopperStorageRAMDirectory;

J2OBJC_TYPE_LITERAL_HEADER(RAMDirectory)

#endif // _RAMDirectory_H_
