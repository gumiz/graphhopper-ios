//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/list/TDoubleList.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "gnu/trove/function/TDoubleFunction.h"
#include "gnu/trove/list/TDoubleList.h"
#include "gnu/trove/procedure/TDoubleProcedure.h"
#include "java/util/Random.h"

@interface GnuTroveListTDoubleList : NSObject
@end

@implementation GnuTroveListTDoubleList

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getNoEntryValue", NULL, "D", 0x401, NULL },
    { "size", NULL, "I", 0x401, NULL },
    { "isEmpty", NULL, "Z", 0x401, NULL },
    { "addWithDouble:", "add", "Z", 0x401, NULL },
    { "addWithDoubleArray:", "add", "V", 0x401, NULL },
    { "addWithDoubleArray:withInt:withInt:", "add", "V", 0x401, NULL },
    { "insertWithInt:withDouble:", "insert", "V", 0x401, NULL },
    { "insertWithInt:withDoubleArray:", "insert", "V", 0x401, NULL },
    { "insertWithInt:withDoubleArray:withInt:withInt:", "insert", "V", 0x401, NULL },
    { "getWithInt:", "get", "D", 0x401, NULL },
    { "setWithInt:withDouble:", "set", "D", 0x401, NULL },
    { "setWithInt:withDoubleArray:", "set", "V", 0x401, NULL },
    { "setWithInt:withDoubleArray:withInt:withInt:", "set", "V", 0x401, NULL },
    { "replaceWithInt:withDouble:", "replace", "D", 0x401, NULL },
    { "clear", NULL, "V", 0x401, NULL },
    { "removeWithDouble:", "remove", "Z", 0x401, NULL },
    { "removeAtWithInt:", "removeAt", "D", 0x401, NULL },
    { "removeWithInt:withInt:", "remove", "V", 0x401, NULL },
    { "transformValuesWithGnuTroveFunctionTDoubleFunction:", "transformValues", "V", 0x401, NULL },
    { "reverse", NULL, "V", 0x401, NULL },
    { "reverseWithInt:withInt:", "reverse", "V", 0x401, NULL },
    { "shuffleWithJavaUtilRandom:", "shuffle", "V", 0x401, NULL },
    { "subListWithInt:withInt:", "subList", "Lgnu.trove.list.TDoubleList;", 0x401, NULL },
    { "toArray", NULL, "[D", 0x401, NULL },
    { "toArrayWithInt:withInt:", "toArray", "[D", 0x401, NULL },
    { "toArrayWithDoubleArray:", "toArray", "[D", 0x401, NULL },
    { "toArrayWithDoubleArray:withInt:withInt:", "toArray", "[D", 0x401, NULL },
    { "toArrayWithDoubleArray:withInt:withInt:withInt:", "toArray", "[D", 0x401, NULL },
    { "forEachWithGnuTroveProcedureTDoubleProcedure:", "forEach", "Z", 0x401, NULL },
    { "forEachDescendingWithGnuTroveProcedureTDoubleProcedure:", "forEachDescending", "Z", 0x401, NULL },
    { "sort", NULL, "V", 0x401, NULL },
    { "sortWithInt:withInt:", "sort", "V", 0x401, NULL },
    { "fillWithDouble:", "fill", "V", 0x401, NULL },
    { "fillWithInt:withInt:withDouble:", "fill", "V", 0x401, NULL },
    { "binarySearchWithDouble:", "binarySearch", "I", 0x401, NULL },
    { "binarySearchWithDouble:withInt:withInt:", "binarySearch", "I", 0x401, NULL },
    { "indexOfWithDouble:", "indexOf", "I", 0x401, NULL },
    { "indexOfWithInt:withDouble:", "indexOf", "I", 0x401, NULL },
    { "lastIndexOfWithDouble:", "lastIndexOf", "I", 0x401, NULL },
    { "lastIndexOfWithInt:withDouble:", "lastIndexOf", "I", 0x401, NULL },
    { "containsWithDouble:", "contains", "Z", 0x401, NULL },
    { "grepWithGnuTroveProcedureTDoubleProcedure:", "grep", "Lgnu.trove.list.TDoubleList;", 0x401, NULL },
    { "inverseGrepWithGnuTroveProcedureTDoubleProcedure:", "inverseGrep", "Lgnu.trove.list.TDoubleList;", 0x401, NULL },
    { "max", NULL, "D", 0x401, NULL },
    { "min", NULL, "D", 0x401, NULL },
    { "sum", NULL, "D", 0x401, NULL },
  };
  static const J2ObjcClassInfo _GnuTroveListTDoubleList = { 1, "TDoubleList", "gnu.trove.list", NULL, 0x201, 46, methods, 0, NULL, 0, NULL};
  return &_GnuTroveListTDoubleList;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GnuTroveListTDoubleList)