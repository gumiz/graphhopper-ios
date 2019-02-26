//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/map/TIntIntMap.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "gnu/trove/TIntCollection.h"
#include "gnu/trove/function/TIntFunction.h"
#include "gnu/trove/iterator/TIntIntIterator.h"
#include "gnu/trove/map/TIntIntMap.h"
#include "gnu/trove/procedure/TIntIntProcedure.h"
#include "gnu/trove/procedure/TIntProcedure.h"
#include "gnu/trove/set/TIntSet.h"
#include "java/util/Map.h"

@interface GnuTroveMapTIntIntMap : NSObject
@end

@implementation GnuTroveMapTIntIntMap

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getNoEntryKey", NULL, "I", 0x401, NULL },
    { "getNoEntryValue", NULL, "I", 0x401, NULL },
    { "putWithInt:withInt:", "put", "I", 0x401, NULL },
    { "putIfAbsentWithInt:withInt:", "putIfAbsent", "I", 0x401, NULL },
    { "putAllWithJavaUtilMap:", "putAll", "V", 0x401, NULL },
    { "putAllWithGnuTroveMapTIntIntMap:", "putAll", "V", 0x401, NULL },
    { "getWithInt:", "get", "I", 0x401, NULL },
    { "clear", NULL, "V", 0x401, NULL },
    { "isEmpty", NULL, "Z", 0x401, NULL },
    { "removeWithInt:", "remove", "I", 0x401, NULL },
    { "size", NULL, "I", 0x401, NULL },
    { "keySet", NULL, "Lgnu.trove.set.TIntSet;", 0x401, NULL },
    { "keys", NULL, "[I", 0x401, NULL },
    { "keysWithIntArray:", "keys", "[I", 0x401, NULL },
    { "valueCollection", NULL, "Lgnu.trove.TIntCollection;", 0x401, NULL },
    { "values", NULL, "[I", 0x401, NULL },
    { "valuesWithIntArray:", "values", "[I", 0x401, NULL },
    { "containsValueWithInt:", "containsValue", "Z", 0x401, NULL },
    { "containsKeyWithInt:", "containsKey", "Z", 0x401, NULL },
    { "iterator", NULL, "Lgnu.trove.iterator.TIntIntIterator;", 0x401, NULL },
    { "forEachKeyWithGnuTroveProcedureTIntProcedure:", "forEachKey", "Z", 0x401, NULL },
    { "forEachValueWithGnuTroveProcedureTIntProcedure:", "forEachValue", "Z", 0x401, NULL },
    { "forEachEntryWithGnuTroveProcedureTIntIntProcedure:", "forEachEntry", "Z", 0x401, NULL },
    { "transformValuesWithGnuTroveFunctionTIntFunction:", "transformValues", "V", 0x401, NULL },
    { "retainEntriesWithGnuTroveProcedureTIntIntProcedure:", "retainEntries", "Z", 0x401, NULL },
    { "incrementWithInt:", "increment", "Z", 0x401, NULL },
    { "adjustValueWithInt:withInt:", "adjustValue", "Z", 0x401, NULL },
    { "adjustOrPutValueWithInt:withInt:withInt:", "adjustOrPutValue", "I", 0x401, NULL },
  };
  static const J2ObjcClassInfo _GnuTroveMapTIntIntMap = { 1, "TIntIntMap", "gnu.trove.map", NULL, 0x201, 28, methods, 0, NULL, 0, NULL};
  return &_GnuTroveMapTIntIntMap;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GnuTroveMapTIntIntMap)