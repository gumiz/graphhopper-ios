//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: dependencies/trove/src/gnu/trove/list/TLongList.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "gnu/trove/function/TLongFunction.h"
#include "gnu/trove/list/TLongList.h"
#include "gnu/trove/procedure/TLongProcedure.h"
#include "java/util/Random.h"

@interface GnuTroveListTLongList : NSObject
@end

@implementation GnuTroveListTLongList

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getNoEntryValue", NULL, "J", 0x401, NULL },
    { "size", NULL, "I", 0x401, NULL },
    { "isEmpty", NULL, "Z", 0x401, NULL },
    { "addWithLong:", "add", "Z", 0x401, NULL },
    { "addWithLongArray:", "add", "V", 0x401, NULL },
    { "addWithLongArray:withInt:withInt:", "add", "V", 0x401, NULL },
    { "insertWithInt:withLong:", "insert", "V", 0x401, NULL },
    { "insertWithInt:withLongArray:", "insert", "V", 0x401, NULL },
    { "insertWithInt:withLongArray:withInt:withInt:", "insert", "V", 0x401, NULL },
    { "getWithInt:", "get", "J", 0x401, NULL },
    { "setWithInt:withLong:", "set", "J", 0x401, NULL },
    { "setWithInt:withLongArray:", "set", "V", 0x401, NULL },
    { "setWithInt:withLongArray:withInt:withInt:", "set", "V", 0x401, NULL },
    { "replaceWithInt:withLong:", "replace", "J", 0x401, NULL },
    { "clear", NULL, "V", 0x401, NULL },
    { "removeWithLong:", "remove", "Z", 0x401, NULL },
    { "removeAtWithInt:", "removeAt", "J", 0x401, NULL },
    { "removeWithInt:withInt:", "remove", "V", 0x401, NULL },
    { "transformValuesWithGnuTroveFunctionTLongFunction:", "transformValues", "V", 0x401, NULL },
    { "reverse", NULL, "V", 0x401, NULL },
    { "reverseWithInt:withInt:", "reverse", "V", 0x401, NULL },
    { "shuffleWithJavaUtilRandom:", "shuffle", "V", 0x401, NULL },
    { "subListWithInt:withInt:", "subList", "Lgnu.trove.list.TLongList;", 0x401, NULL },
    { "toArray", NULL, "[J", 0x401, NULL },
    { "toArrayWithInt:withInt:", "toArray", "[J", 0x401, NULL },
    { "toArrayWithLongArray:", "toArray", "[J", 0x401, NULL },
    { "toArrayWithLongArray:withInt:withInt:", "toArray", "[J", 0x401, NULL },
    { "toArrayWithLongArray:withInt:withInt:withInt:", "toArray", "[J", 0x401, NULL },
    { "forEachWithGnuTroveProcedureTLongProcedure:", "forEach", "Z", 0x401, NULL },
    { "forEachDescendingWithGnuTroveProcedureTLongProcedure:", "forEachDescending", "Z", 0x401, NULL },
    { "sort", NULL, "V", 0x401, NULL },
    { "sortWithInt:withInt:", "sort", "V", 0x401, NULL },
    { "fillWithLong:", "fill", "V", 0x401, NULL },
    { "fillWithInt:withInt:withLong:", "fill", "V", 0x401, NULL },
    { "binarySearchWithLong:", "binarySearch", "I", 0x401, NULL },
    { "binarySearchWithLong:withInt:withInt:", "binarySearch", "I", 0x401, NULL },
    { "indexOfWithLong:", "indexOf", "I", 0x401, NULL },
    { "indexOfWithInt:withLong:", "indexOf", "I", 0x401, NULL },
    { "lastIndexOfWithLong:", "lastIndexOf", "I", 0x401, NULL },
    { "lastIndexOfWithInt:withLong:", "lastIndexOf", "I", 0x401, NULL },
    { "containsWithLong:", "contains", "Z", 0x401, NULL },
    { "grepWithGnuTroveProcedureTLongProcedure:", "grep", "Lgnu.trove.list.TLongList;", 0x401, NULL },
    { "inverseGrepWithGnuTroveProcedureTLongProcedure:", "inverseGrep", "Lgnu.trove.list.TLongList;", 0x401, NULL },
    { "max", NULL, "J", 0x401, NULL },
    { "min", NULL, "J", 0x401, NULL },
    { "sum", NULL, "J", 0x401, NULL },
  };
  static const J2ObjcClassInfo _GnuTroveListTLongList = { 1, "TLongList", "gnu.trove.list", NULL, 0x201, 46, methods, 0, NULL, 0, NULL};
  return &_GnuTroveListTLongList;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GnuTroveListTLongList)