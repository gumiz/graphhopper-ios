//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/map/TIntObjectMap.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "gnu/trove/function/TObjectFunction.h"
#include "gnu/trove/iterator/TIntObjectIterator.h"
#include "gnu/trove/map/TIntObjectMap.h"
#include "gnu/trove/procedure/TIntObjectProcedure.h"
#include "gnu/trove/procedure/TIntProcedure.h"
#include "gnu/trove/procedure/TObjectProcedure.h"
#include "gnu/trove/set/TIntSet.h"
#include "java/util/Collection.h"
#include "java/util/Map.h"

@interface GnuTroveMapTIntObjectMap : NSObject
@end

@implementation GnuTroveMapTIntObjectMap

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getNoEntryKey", NULL, "I", 0x401, NULL },
    { "size", NULL, "I", 0x401, NULL },
    { "isEmpty", NULL, "Z", 0x401, NULL },
    { "containsKeyWithInt:", "containsKey", "Z", 0x401, NULL },
    { "containsValueWithId:", "containsValue", "Z", 0x401, NULL },
    { "getWithInt:", "get", "TV;", 0x401, NULL },
    { "putWithInt:withId:", "put", "TV;", 0x401, NULL },
    { "putIfAbsentWithInt:withId:", "putIfAbsent", "TV;", 0x401, NULL },
    { "removeWithInt:", "remove", "TV;", 0x401, NULL },
    { "putAllWithJavaUtilMap:", "putAll", "V", 0x401, NULL },
    { "putAllWithGnuTroveMapTIntObjectMap:", "putAll", "V", 0x401, NULL },
    { "clear", NULL, "V", 0x401, NULL },
    { "keySet", NULL, "Lgnu.trove.set.TIntSet;", 0x401, NULL },
    { "keys", NULL, "[I", 0x401, NULL },
    { "keysWithIntArray:", "keys", "[I", 0x401, NULL },
    { "valueCollection", NULL, "Ljava.util.Collection;", 0x401, NULL },
    { "values", NULL, "[Ljava.lang.Object;", 0x401, NULL },
    { "valuesWithNSObjectArray:", "values", "[Ljava.lang.Object;", 0x401, NULL },
    { "iterator", NULL, "Lgnu.trove.iterator.TIntObjectIterator;", 0x401, NULL },
    { "forEachKeyWithGnuTroveProcedureTIntProcedure:", "forEachKey", "Z", 0x401, NULL },
    { "forEachValueWithGnuTroveProcedureTObjectProcedure:", "forEachValue", "Z", 0x401, NULL },
    { "forEachEntryWithGnuTroveProcedureTIntObjectProcedure:", "forEachEntry", "Z", 0x401, NULL },
    { "transformValuesWithGnuTroveFunctionTObjectFunction:", "transformValues", "V", 0x401, NULL },
    { "retainEntriesWithGnuTroveProcedureTIntObjectProcedure:", "retainEntries", "Z", 0x401, NULL },
    { "isEqual:", "equals", "Z", 0x401, NULL },
    { "hash", "hashCode", "I", 0x401, NULL },
  };
  static const J2ObjcClassInfo _GnuTroveMapTIntObjectMap = { 1, "TIntObjectMap", "gnu.trove.map", NULL, 0x201, 26, methods, 0, NULL, 0, NULL};
  return &_GnuTroveMapTIntObjectMap;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GnuTroveMapTIntObjectMap)
