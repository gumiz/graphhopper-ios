//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: graphhopper/core/src/main/java/com/graphhopper/storage/CHGraphImpl.java
//

#include "J2ObjC_source.h"
#include "com/graphhopper/routing/ch/PrepareEncoder.h"
#include "com/graphhopper/routing/util/AllCHEdgesIterator.h"
#include "com/graphhopper/routing/util/EdgeFilter.h"
#include "com/graphhopper/routing/util/EncodingManager.h"
#include "com/graphhopper/routing/util/FlagEncoder.h"
#include "com/graphhopper/routing/weighting/AbstractWeighting.h"
#include "com/graphhopper/routing/weighting/Weighting.h"
#include "com/graphhopper/storage/BaseGraph.h"
#include "com/graphhopper/storage/CHGraph.h"
#include "com/graphhopper/storage/CHGraphImpl.h"
#include "com/graphhopper/storage/DataAccess.h"
#include "com/graphhopper/storage/Directory.h"
#include "com/graphhopper/storage/EdgeAccess.h"
#include "com/graphhopper/storage/Graph.h"
#include "com/graphhopper/storage/GraphExtension.h"
#include "com/graphhopper/storage/NodeAccess.h"
#include "com/graphhopper/util/BitUtil.h"
#include "com/graphhopper/util/CHEdgeExplorer.h"
#include "com/graphhopper/util/CHEdgeIterator.h"
#include "com/graphhopper/util/CHEdgeIteratorState.h"
#include "com/graphhopper/util/EdgeIterator.h"
#include "com/graphhopper/util/EdgeIteratorState.h"
#include "com/graphhopper/util/Helper.h"
#include "com/graphhopper/util/PointList.h"
#include "com/graphhopper/util/shapes/BBox.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"

__attribute__((unused)) static id<ComGraphhopperRoutingWeightingWeighting> CHGraphImpl_getWeighting(CHGraphImpl *self);
__attribute__((unused)) static void CHGraphImpl_checkNodeIdWithInt_(CHGraphImpl *self, jint nodeId);
__attribute__((unused)) static void CHGraphImpl_setWeightWithBaseGraph_CommonEdgeIterator_withDouble_(CHGraphImpl *self, BaseGraph_CommonEdgeIterator *edge, jdouble weight);
__attribute__((unused)) static jdouble CHGraphImpl_getWeightWithBaseGraph_CommonEdgeIterator_(CHGraphImpl *self, BaseGraph_CommonEdgeIterator *edge);
__attribute__((unused)) static void CHGraphImpl_CHEdgeIteratorImpl_setSkippedEdgesWithInt_withInt_(CHGraphImpl_CHEdgeIteratorImpl *self, jint edge1, jint edge2);
__attribute__((unused)) static jboolean CHGraphImpl_CHEdgeIteratorImpl_isShortcut(CHGraphImpl_CHEdgeIteratorImpl *self);
__attribute__((unused)) static jboolean CHGraphImpl_AllCHEdgesIteratorImpl_isShortcut(CHGraphImpl_AllCHEdgesIteratorImpl *self);
__attribute__((unused)) static jlong CHGraphImpl_$1_toPointerWithInt_(CHGraphImpl_$1 *self, jint shortcutId);
__attribute__((unused)) static jboolean CHGraphImpl_$1_isInBoundsWithInt_(CHGraphImpl_$1 *self, jint shortcutId);

@interface CHGraphImpl () {
 @public
  BaseGraph *baseGraph_;
  EdgeAccess *chEdgeAccess_;
  id<ComGraphhopperRoutingWeightingWeighting> weighting_;
  jint N_LEVEL_;
  jint S_SKIP_EDGE1_, S_SKIP_EDGE2_;
  jint shortcutCount_;
}
@end

J2OBJC_FIELD_SETTER(CHGraphImpl, baseGraph_, BaseGraph *)
J2OBJC_FIELD_SETTER(CHGraphImpl, chEdgeAccess_, EdgeAccess *)
J2OBJC_FIELD_SETTER(CHGraphImpl, weighting_, id<ComGraphhopperRoutingWeightingWeighting>)

@interface CHGraphImpl_CHEdgeIteratorImpl () {
 @public
  CHGraphImpl *this$0_;
}
@end

J2OBJC_FIELD_SETTER(CHGraphImpl_CHEdgeIteratorImpl, this$0_, CHGraphImpl *)

@interface CHGraphImpl_AllCHEdgesIteratorImpl () {
 @public
  CHGraphImpl *this$0_;
}
@end

J2OBJC_FIELD_SETTER(CHGraphImpl_AllCHEdgesIteratorImpl, this$0_, CHGraphImpl *)

@interface CHGraphImpl_$1 () {
 @public
  CHGraphImpl *this$0_;
  BaseGraph *val$baseGraph_;
  NSString *val$name_;
}
@end

J2OBJC_FIELD_SETTER(CHGraphImpl_$1, this$0_, CHGraphImpl *)
J2OBJC_FIELD_SETTER(CHGraphImpl_$1, val$baseGraph_, BaseGraph *)
J2OBJC_FIELD_SETTER(CHGraphImpl_$1, val$name_, NSString *)

@implementation CHGraphImpl

- (instancetype)initWithComGraphhopperRoutingWeightingWeighting:(id<ComGraphhopperRoutingWeightingWeighting>)w
                                                  withDirectory:(id<Directory>)dir
                                                  withBaseGraph:(BaseGraph *)baseGraph {
  if (self = [super init]) {
    scDirMask_ = PrepareEncoder_getScDirMask();
    shortcutCount_ = 0;
    if (w == nil) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Weighting for CHGraph cannot be null"] autorelease];
    CHGraphImpl_set_weighting_(self, w);
    CHGraphImpl_set_baseGraph_(self, baseGraph);
    NSString *name = ComGraphhopperRoutingWeightingAbstractWeighting_weightingToFileNameWithComGraphhopperRoutingWeightingWeighting_(w);
    CHGraphImpl_set_nodesCH_(self, [((id<Directory>) nil_chk(dir)) findWithNSString:JreStrcat("$$", @"nodes_ch_", name)]);
    CHGraphImpl_set_shortcuts_(self, [dir findWithNSString:JreStrcat("$$", @"shortcuts_", name)]);
    CHGraphImpl_setAndConsume_chEdgeAccess_(self, [[CHGraphImpl_$1 alloc] initWithCHGraphImpl:self withDataAccess:shortcuts_ withBitUtil:((BaseGraph *) nil_chk(baseGraph))->bitUtil_ withBaseGraph:baseGraph withNSString:name]);
  }
  return self;
}

- (id<ComGraphhopperRoutingWeightingWeighting>)getWeighting {
  return CHGraphImpl_getWeighting(self);
}

- (jboolean)isShortcutWithInt:(jint)edgeId {
  NSAssert([((BaseGraph *) nil_chk(baseGraph_)) isFrozen], @"level graph not yet frozen");
  return edgeId >= baseGraph_->edgeCount_;
}

- (void)setLevelWithInt:(jint)nodeIndex
                withInt:(jint)level {
  CHGraphImpl_checkNodeIdWithInt_(self, nodeIndex);
  [((id<DataAccess>) nil_chk(nodesCH_)) setIntWithLong:(jlong) nodeIndex * nodeCHEntryBytes_ + N_LEVEL_ withInt:level];
}

- (jint)getLevelWithInt:(jint)nodeIndex {
  CHGraphImpl_checkNodeIdWithInt_(self, nodeIndex);
  return [((id<DataAccess>) nil_chk(nodesCH_)) getIntWithLong:(jlong) nodeIndex * nodeCHEntryBytes_ + N_LEVEL_];
}

- (void)checkNodeIdWithInt:(jint)nodeId {
  CHGraphImpl_checkNodeIdWithInt_(self, nodeId);
}

- (id<CHEdgeIteratorState>)shortcutWithInt:(jint)a
                                   withInt:(jint)b {
  if (![((BaseGraph *) nil_chk(baseGraph_)) isFrozen]) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Cannot create shortcut if graph is not yet frozen"] autorelease];
  CHGraphImpl_checkNodeIdWithInt_(self, a);
  CHGraphImpl_checkNodeIdWithInt_(self, b);
  jint scId = [((EdgeAccess *) nil_chk(chEdgeAccess_)) internalEdgeAddWithInt:[self nextShortcutId] withInt:a withInt:b];
  CHGraphImpl_CHEdgeIteratorImpl *iter = [[[CHGraphImpl_CHEdgeIteratorImpl alloc] initWithCHGraphImpl:self withBaseGraph:baseGraph_ withEdgeAccess:chEdgeAccess_ withEdgeFilter:EdgeFilter_get_ALL_EDGES_()] autorelease];
  jboolean ret = [iter init__WithInt:scId withInt:b];
  NSAssert(ret, @"com/graphhopper/storage/CHGraphImpl.java:162 condition failed: assert ret;");
  CHGraphImpl_CHEdgeIteratorImpl_setSkippedEdgesWithInt_withInt_(iter, EdgeIterator_NO_EDGE, EdgeIterator_NO_EDGE);
  return iter;
}

- (jint)nextShortcutId {
  jint nextSC = shortcutCount_;
  shortcutCount_++;
  if (shortcutCount_ < 0) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$", @"too many shortcuts. new shortcut id would be negative. ", [self description])] autorelease];
  [((id<DataAccess>) nil_chk(shortcuts_)) ensureCapacityWithLong:((jlong) shortcutCount_ + 1) * shortcutEntryBytes_];
  return nextSC + ((BaseGraph *) nil_chk(baseGraph_))->edgeCount_;
}

- (id<EdgeIteratorState>)edgeWithInt:(jint)a
                             withInt:(jint)b
                          withDouble:(jdouble)distance
                         withBoolean:(jboolean)bothDirections {
  return [((id<EdgeIteratorState>) nil_chk([((id<CHEdgeIteratorState>) nil_chk([self edgeWithInt:a withInt:b])) setDistanceWithDouble:distance])) setFlagsWithLong:[((EncodingManager *) nil_chk(((BaseGraph *) nil_chk(baseGraph_))->encodingManager_)) flagsDefaultWithBoolean:YES withBoolean:bothDirections]];
}

- (id<CHEdgeIteratorState>)edgeWithInt:(jint)a
                               withInt:(jint)b {
  [((BaseGraph *) nil_chk(baseGraph_)) ensureNodeIndexWithInt:JavaLangMath_maxWithInt_withInt_(a, b)];
  jint edgeId = [((EdgeAccess *) nil_chk(baseGraph_->edgeAccess_)) internalEdgeAddWithInt:[baseGraph_ nextEdgeId] withInt:a withInt:b];
  CHGraphImpl_CHEdgeIteratorImpl *iter = [[[CHGraphImpl_CHEdgeIteratorImpl alloc] initWithCHGraphImpl:self withBaseGraph:baseGraph_ withEdgeAccess:baseGraph_->edgeAccess_ withEdgeFilter:EdgeFilter_get_ALL_EDGES_()] autorelease];
  jboolean ret = [iter init__WithInt:edgeId withInt:b];
  NSAssert(ret, @"com/graphhopper/storage/CHGraphImpl.java:189 condition failed: assert ret;");
  return iter;
}

- (id<CHEdgeExplorer>)createEdgeExplorer {
  return [self createEdgeExplorerWithEdgeFilter:EdgeFilter_get_ALL_EDGES_()];
}

- (id<CHEdgeExplorer>)createEdgeExplorerWithEdgeFilter:(id<EdgeFilter>)filter {
  return [[[CHGraphImpl_CHEdgeIteratorImpl alloc] initWithCHGraphImpl:self withBaseGraph:baseGraph_ withEdgeAccess:chEdgeAccess_ withEdgeFilter:filter] autorelease];
}

- (id<CHEdgeIteratorState>)getEdgeIteratorStateWithInt:(jint)edgeId
                                               withInt:(jint)endNode {
  if ([self isShortcutWithInt:edgeId]) {
    if (![((EdgeAccess *) nil_chk(chEdgeAccess_)) isInBoundsWithInt:edgeId]) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$I$", @"shortcutId ", edgeId, @" out of bounds")] autorelease];
  }
  else if (![((EdgeAccess *) nil_chk(((BaseGraph *) nil_chk(baseGraph_))->edgeAccess_)) isInBoundsWithInt:edgeId]) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$I$", @"edgeId ", edgeId, @" out of bounds")] autorelease];
  return (id<CHEdgeIteratorState>) check_protocol_cast([((EdgeAccess *) nil_chk(chEdgeAccess_)) getEdgePropsWithInt:edgeId withInt:endNode], @protocol(CHEdgeIteratorState));
}

- (jint)getNodes {
  return [((BaseGraph *) nil_chk(baseGraph_)) getNodes];
}

- (id<NodeAccess>)getNodeAccess {
  return [((BaseGraph *) nil_chk(baseGraph_)) getNodeAccess];
}

- (BBox *)getBounds {
  return [((BaseGraph *) nil_chk(baseGraph_)) getBounds];
}

- (void)_freeze {
  jlong maxCapacity = ((jlong) [self getNodes]) * nodeCHEntryBytes_;
  [((id<DataAccess>) nil_chk(nodesCH_)) ensureCapacityWithLong:maxCapacity];
  jlong baseCapacity = [((id<DataAccess>) nil_chk(((BaseGraph *) nil_chk(baseGraph_))->nodes_)) getCapacity];
  for (jlong pointer = N_CH_REF_, basePointer = baseGraph_->N_EDGE_REF_; pointer < maxCapacity; pointer += nodeCHEntryBytes_, basePointer += baseGraph_->nodeEntryBytes_) {
    if (basePointer >= baseCapacity) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$J$J$J$J", @"Cannot copy edge refs into ch graph. pointer:", pointer, @", cap:", maxCapacity, @", basePtr:", basePointer, @", baseCap:", baseCapacity)] autorelease];
    [nodesCH_ setIntWithLong:pointer withInt:[baseGraph_->nodes_ getIntWithLong:basePointer]];
  }
}

- (NSString *)toDetailsString {
  return JreStrcat("$$", JreStrcat("$$$$J", [self description], @", shortcuts:", Helper_nfWithLong_(shortcutCount_), @", nodesCH:(", [((id<DataAccess>) nil_chk(nodesCH_)) getCapacity] / Helper_MB), @"MB)");
}

- (void)disconnectWithCHEdgeExplorer:(id<CHEdgeExplorer>)explorer
               withEdgeIteratorState:(id<EdgeIteratorState>)edgeState {
  id<CHEdgeIterator> tmpIter = [((id<CHEdgeExplorer>) nil_chk(explorer)) setBaseNodeWithInt:[((id<EdgeIteratorState>) nil_chk(edgeState)) getAdjNode]];
  jint tmpPrevEdge = EdgeIterator_NO_EDGE;
  while ([((id<CHEdgeIterator>) nil_chk(tmpIter)) next]) {
    if ([tmpIter isShortcut] && [tmpIter getEdge] == [edgeState getEdge]) {
      jlong edgePointer = tmpPrevEdge == EdgeIterator_NO_EDGE ? -1 : [self isShortcutWithInt:tmpPrevEdge] ? [((EdgeAccess *) nil_chk(chEdgeAccess_)) toPointerWithInt:tmpPrevEdge] : [((EdgeAccess *) nil_chk(((BaseGraph *) nil_chk(baseGraph_))->edgeAccess_)) toPointerWithInt:tmpPrevEdge];
      [((EdgeAccess *) nil_chk(chEdgeAccess_)) internalEdgeDisconnectWithInt:[edgeState getEdge] withLong:edgePointer withInt:[edgeState getAdjNode] withInt:[edgeState getBaseNode]];
      break;
    }
    tmpPrevEdge = [tmpIter getEdge];
  }
}

- (id<AllCHEdgesIterator>)getAllEdges {
  return [[[CHGraphImpl_AllCHEdgesIteratorImpl alloc] initWithCHGraphImpl:self withBaseGraph:baseGraph_] autorelease];
}

- (void)setWeightWithBaseGraph_CommonEdgeIterator:(BaseGraph_CommonEdgeIterator *)edge
                                       withDouble:(jdouble)weight {
  CHGraphImpl_setWeightWithBaseGraph_CommonEdgeIterator_withDouble_(self, edge, weight);
}

- (jdouble)getWeightWithBaseGraph_CommonEdgeIterator:(BaseGraph_CommonEdgeIterator *)edge {
  return CHGraphImpl_getWeightWithBaseGraph_CommonEdgeIterator_(self, edge);
}

- (jint)loadEdgesHeader {
  shortcutCount_ = [((id<DataAccess>) nil_chk(shortcuts_)) getHeaderWithInt:0 * 4];
  shortcutEntryBytes_ = [shortcuts_ getHeaderWithInt:1 * 4];
  return 3;
}

- (jint)setEdgesHeader {
  [((id<DataAccess>) nil_chk(shortcuts_)) setHeaderWithInt:0 * 4 withInt:shortcutCount_];
  [shortcuts_ setHeaderWithInt:1 * 4 withInt:shortcutEntryBytes_];
  return 3;
}

- (id<GraphExtension>)getExtension {
  return [((BaseGraph *) nil_chk(baseGraph_)) getExtension];
}

- (id<Graph>)getBaseGraph {
  return baseGraph_;
}

- (id<Graph>)copyToWithGraph:(id<Graph>)g {
  CHGraphImpl *tmpG = ((CHGraphImpl *) check_class_cast(g, [CHGraphImpl class]));
  [((id<DataAccess>) nil_chk(nodesCH_)) copyToWithDataAccess:((CHGraphImpl *) nil_chk(tmpG))->nodesCH_];
  [((id<DataAccess>) nil_chk(shortcuts_)) copyToWithDataAccess:tmpG->shortcuts_];
  tmpG->N_LEVEL_ = N_LEVEL_;
  tmpG->N_CH_REF_ = N_CH_REF_;
  tmpG->nodeCHEntryBytes_ = nodeCHEntryBytes_;
  return g;
}

- (void)initStorage {
  EdgeAccess *ea = ((BaseGraph *) nil_chk(baseGraph_))->edgeAccess_;
  [((EdgeAccess *) nil_chk(chEdgeAccess_)) init__WithInt:((EdgeAccess *) nil_chk(ea))->E_NODEA_ withInt:ea->E_NODEB_ withInt:ea->E_LINKA_ withInt:ea->E_LINKB_ withInt:ea->E_DIST_ withInt:ea->E_FLAGS_ withBoolean:NO];
  S_SKIP_EDGE1_ = ea->E_FLAGS_ + 4;
  S_SKIP_EDGE2_ = S_SKIP_EDGE1_ + 4;
  shortcutEntryBytes_ = S_SKIP_EDGE2_ + 4;
  N_LEVEL_ = 0;
  N_CH_REF_ = N_LEVEL_ + 4;
  nodeCHEntryBytes_ = N_CH_REF_ + 4;
}

- (void)setSegmentSizeWithInt:(jint)bytes {
  [((id<DataAccess>) nil_chk(nodesCH_)) setSegmentSizeWithInt:bytes];
  [((id<DataAccess>) nil_chk(shortcuts_)) setSegmentSizeWithInt:bytes];
}

- (id<CHGraph>)createWithLong:(jlong)bytes {
  [((id<DataAccess>) nil_chk(nodesCH_)) createWithLong:bytes];
  [((id<DataAccess>) nil_chk(shortcuts_)) createWithLong:bytes];
  return self;
}

- (jboolean)loadExisting {
  if (![((id<DataAccess>) nil_chk(nodesCH_)) loadExisting] || ![((id<DataAccess>) nil_chk(shortcuts_)) loadExisting]) return NO;
  [self loadEdgesHeader];
  return YES;
}

- (void)flush {
  [((id<DataAccess>) nil_chk(nodesCH_)) flush];
  [((id<DataAccess>) nil_chk(shortcuts_)) flush];
}

- (void)close {
  [((id<DataAccess>) nil_chk(nodesCH_)) close];
  [((id<DataAccess>) nil_chk(shortcuts_)) close];
}

- (jboolean)isClosed {
  return [((id<DataAccess>) nil_chk(nodesCH_)) isClosed];
}

- (jlong)getCapacity {
  return [((id<DataAccess>) nil_chk(nodesCH_)) getCapacity] + [((id<DataAccess>) nil_chk(shortcuts_)) getCapacity];
}

- (NSString *)description {
  return JreStrcat("$$", @"CHGraph|", [((id<ComGraphhopperRoutingWeightingWeighting>) nil_chk(CHGraphImpl_getWeighting(self))) description]);
}

- (void)dealloc {
  RELEASE_(shortcuts_);
  RELEASE_(nodesCH_);
  RELEASE_(baseGraph_);
  RELEASE_(chEdgeAccess_);
  RELEASE_(weighting_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(CHGraphImpl *)other {
  [super copyAllFieldsTo:other];
  CHGraphImpl_set_shortcuts_(other, shortcuts_);
  CHGraphImpl_set_nodesCH_(other, nodesCH_);
  other->scDirMask_ = scDirMask_;
  CHGraphImpl_set_baseGraph_(other, baseGraph_);
  CHGraphImpl_set_chEdgeAccess_(other, chEdgeAccess_);
  CHGraphImpl_set_weighting_(other, weighting_);
  other->N_CH_REF_ = N_CH_REF_;
  other->shortcutEntryBytes_ = shortcutEntryBytes_;
  other->nodeCHEntryBytes_ = nodeCHEntryBytes_;
  other->N_LEVEL_ = N_LEVEL_;
  other->S_SKIP_EDGE1_ = S_SKIP_EDGE1_;
  other->S_SKIP_EDGE2_ = S_SKIP_EDGE2_;
  other->shortcutCount_ = shortcutCount_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGraphhopperRoutingWeightingWeighting:withDirectory:withBaseGraph:", "CHGraphImpl", NULL, 0x0, NULL },
    { "getWeighting", NULL, "Lcom.graphhopper.routing.weighting.Weighting;", 0x11, NULL },
    { "isShortcutWithInt:", "isShortcut", "Z", 0x1, NULL },
    { "setLevelWithInt:withInt:", "setLevel", "V", 0x11, NULL },
    { "getLevelWithInt:", "getLevel", "I", 0x11, NULL },
    { "checkNodeIdWithInt:", "checkNodeId", "V", 0x10, NULL },
    { "shortcutWithInt:withInt:", "shortcut", "Lcom.graphhopper.util.CHEdgeIteratorState;", 0x1, NULL },
    { "nextShortcutId", NULL, "I", 0x4, NULL },
    { "edgeWithInt:withInt:withDouble:withBoolean:", "edge", "Lcom.graphhopper.util.EdgeIteratorState;", 0x1, NULL },
    { "edgeWithInt:withInt:", "edge", "Lcom.graphhopper.util.CHEdgeIteratorState;", 0x1, NULL },
    { "createEdgeExplorer", NULL, "Lcom.graphhopper.util.CHEdgeExplorer;", 0x1, NULL },
    { "createEdgeExplorerWithEdgeFilter:", "createEdgeExplorer", "Lcom.graphhopper.util.CHEdgeExplorer;", 0x1, NULL },
    { "getEdgeIteratorStateWithInt:withInt:", "getEdgeIteratorState", "Lcom.graphhopper.util.CHEdgeIteratorState;", 0x11, NULL },
    { "getNodes", NULL, "I", 0x1, NULL },
    { "getNodeAccess", NULL, "Lcom.graphhopper.storage.NodeAccess;", 0x1, NULL },
    { "getBounds", NULL, "Lcom.graphhopper.util.shapes.BBox;", 0x1, NULL },
    { "_freeze", NULL, "V", 0x0, NULL },
    { "toDetailsString", NULL, "Ljava.lang.String;", 0x0, NULL },
    { "disconnectWithCHEdgeExplorer:withEdgeIteratorState:", "disconnect", "V", 0x1, NULL },
    { "getAllEdges", NULL, "Lcom.graphhopper.routing.util.AllCHEdgesIterator;", 0x1, NULL },
    { "setWeightWithBaseGraph_CommonEdgeIterator:withDouble:", "setWeight", "V", 0x10, NULL },
    { "getWeightWithBaseGraph_CommonEdgeIterator:", "getWeight", "D", 0x10, NULL },
    { "loadEdgesHeader", NULL, "I", 0x4, NULL },
    { "setEdgesHeader", NULL, "I", 0x4, NULL },
    { "getExtension", NULL, "Lcom.graphhopper.storage.GraphExtension;", 0x1, NULL },
    { "getBaseGraph", NULL, "Lcom.graphhopper.storage.Graph;", 0x1, NULL },
    { "copyToWithGraph:", "copyTo", "Lcom.graphhopper.storage.Graph;", 0x1, NULL },
    { "initStorage", NULL, "V", 0x0, NULL },
    { "setSegmentSizeWithInt:", "setSegmentSize", "V", 0x0, NULL },
    { "createWithLong:", "create", "Lcom.graphhopper.storage.CHGraph;", 0x1, NULL },
    { "loadExisting", NULL, "Z", 0x1, NULL },
    { "flush", NULL, "V", 0x1, NULL },
    { "close", NULL, "V", 0x1, NULL },
    { "isClosed", NULL, "Z", 0x1, NULL },
    { "getCapacity", NULL, "J", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "WEIGHT_FACTOR_", NULL, 0x1a, "D", NULL, .constantValue.asDouble = CHGraphImpl_WEIGHT_FACTOR },
    { "MAX_WEIGHT_LONG_", NULL, 0x1a, "J", NULL, .constantValue.asLong = CHGraphImpl_MAX_WEIGHT_LONG },
    { "MAX_WEIGHT_", NULL, 0x1a, "D", NULL, .constantValue.asDouble = CHGraphImpl_MAX_WEIGHT },
    { "shortcuts_", NULL, 0x10, "Lcom.graphhopper.storage.DataAccess;", NULL,  },
    { "nodesCH_", NULL, 0x10, "Lcom.graphhopper.storage.DataAccess;", NULL,  },
    { "scDirMask_", NULL, 0x10, "J", NULL,  },
    { "baseGraph_", NULL, 0x12, "Lcom.graphhopper.storage.BaseGraph;", NULL,  },
    { "chEdgeAccess_", NULL, 0x12, "Lcom.graphhopper.storage.EdgeAccess;", NULL,  },
    { "weighting_", NULL, 0x12, "Lcom.graphhopper.routing.weighting.Weighting;", NULL,  },
    { "N_CH_REF_", NULL, 0x0, "I", NULL,  },
    { "shortcutEntryBytes_", NULL, 0x0, "I", NULL,  },
    { "nodeCHEntryBytes_", NULL, 0x0, "I", NULL,  },
    { "N_LEVEL_", NULL, 0x2, "I", NULL,  },
    { "S_SKIP_EDGE1_", NULL, 0x2, "I", NULL,  },
    { "S_SKIP_EDGE2_", NULL, 0x2, "I", NULL,  },
    { "shortcutCount_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _CHGraphImpl = { 1, "CHGraphImpl", "com.graphhopper.storage", NULL, 0x1, 36, methods, 16, fields, 0, NULL};
  return &_CHGraphImpl;
}

@end

id<ComGraphhopperRoutingWeightingWeighting> CHGraphImpl_getWeighting(CHGraphImpl *self) {
  return self->weighting_;
}

void CHGraphImpl_checkNodeIdWithInt_(CHGraphImpl *self, jint nodeId) {
  NSCAssert(nodeId < [((BaseGraph *) nil_chk(self->baseGraph_)) getNodes], [JreStrcat("$I$IC" J2OBJC_COMMA() @"node " J2OBJC_COMMA() nodeId J2OBJC_COMMA() @" is invalid. Not in [0 J2OBJC_COMMA()" J2OBJC_COMMA() [self->baseGraph_ getNodes] J2OBJC_COMMA() ')') description]);
}

void CHGraphImpl_setWeightWithBaseGraph_CommonEdgeIterator_withDouble_(CHGraphImpl *self, BaseGraph_CommonEdgeIterator *edge, jdouble weight) {
  if (weight < 0) @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$D", @"weight cannot be negative but was ", weight)] autorelease];
  jlong weightLong;
  if (weight > CHGraphImpl_MAX_WEIGHT) weightLong = CHGraphImpl_MAX_WEIGHT_LONG;
  else weightLong = LShift64((J2ObjCFpToLong((weight * CHGraphImpl_WEIGHT_FACTOR))), 2);
  jlong accessFlags = [((BaseGraph_CommonEdgeIterator *) nil_chk(edge)) getDirectFlags] & self->scDirMask_;
  [edge setFlagsWithLong:weightLong | accessFlags];
}

jdouble CHGraphImpl_getWeightWithBaseGraph_CommonEdgeIterator_(CHGraphImpl *self, BaseGraph_CommonEdgeIterator *edge) {
  jlong flags32bit = [((BaseGraph_CommonEdgeIterator *) nil_chk(edge)) getDirectFlags];
  jdouble weight = (URShift64(flags32bit, 2)) / CHGraphImpl_WEIGHT_FACTOR;
  if (weight >= CHGraphImpl_MAX_WEIGHT) return JavaLangDouble_POSITIVE_INFINITY;
  return weight;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CHGraphImpl)

@implementation CHGraphImpl_CHEdgeIteratorImpl

- (instancetype)initWithCHGraphImpl:(CHGraphImpl *)outer$
                      withBaseGraph:(BaseGraph *)baseGraph
                     withEdgeAccess:(EdgeAccess *)edgeAccess
                     withEdgeFilter:(id<EdgeFilter>)filter {
  CHGraphImpl_CHEdgeIteratorImpl_set_this$0_(self, outer$);
  return [super initWithBaseGraph:baseGraph withEdgeAccess:edgeAccess withEdgeFilter:filter];
}

- (jlong)getFlags {
  [self checkShortcutWithBoolean:NO withNSString:@"getFlags"];
  return [super getDirectFlags];
}

- (id<CHEdgeIterator>)setBaseNodeWithInt:(jint)baseNode {
  NSAssert([((BaseGraph *) nil_chk(baseGraph_)) isFrozen], @"Traversal CHGraph is only possible if BaseGraph is frozen");
  [self setEdgeIdWithInt:[((EdgeAccess *) nil_chk(this$0_->chEdgeAccess_)) getEdgeRefWithInt:baseNode]];
  [self _setBaseNodeWithInt:baseNode];
  return self;
}

- (void)setSkippedEdgesWithInt:(jint)edge1
                       withInt:(jint)edge2 {
  CHGraphImpl_CHEdgeIteratorImpl_setSkippedEdgesWithInt_withInt_(self, edge1, edge2);
}

- (jint)getSkippedEdge1 {
  [self checkShortcutWithBoolean:YES withNSString:@"getSkippedEdge1"];
  return [((id<DataAccess>) nil_chk(this$0_->shortcuts_)) getIntWithLong:edgePointer_ + this$0_->S_SKIP_EDGE1_];
}

- (jint)getSkippedEdge2 {
  [self checkShortcutWithBoolean:YES withNSString:@"getSkippedEdge2"];
  return [((id<DataAccess>) nil_chk(this$0_->shortcuts_)) getIntWithLong:edgePointer_ + this$0_->S_SKIP_EDGE2_];
}

- (jboolean)isShortcut {
  return CHGraphImpl_CHEdgeIteratorImpl_isShortcut(self);
}

- (jboolean)isBackwardWithFlagEncoder:(id<FlagEncoder>)encoder {
  NSAssert(encoder == [((id<ComGraphhopperRoutingWeightingWeighting>) nil_chk(this$0_->weighting_)) getFlagEncoder], [JreStrcat("@$@" J2OBJC_COMMA() encoder J2OBJC_COMMA() @" vs. " J2OBJC_COMMA() [this$0_->weighting_ getFlagEncoder]) description]);
  if (CHGraphImpl_CHEdgeIteratorImpl_isShortcut(self)) return ([self getDirectFlags] & PrepareEncoder_getScBwdDir()) != 0;
  return [((id<FlagEncoder>) nil_chk(encoder)) isBackwardWithLong:[self getDirectFlags]];
}

- (jboolean)isForwardWithFlagEncoder:(id<FlagEncoder>)encoder {
  NSAssert(encoder == [((id<ComGraphhopperRoutingWeightingWeighting>) nil_chk(this$0_->weighting_)) getFlagEncoder], [JreStrcat("@$@" J2OBJC_COMMA() encoder J2OBJC_COMMA() @" vs. " J2OBJC_COMMA() [this$0_->weighting_ getFlagEncoder]) description]);
  if (CHGraphImpl_CHEdgeIteratorImpl_isShortcut(self)) return ([self getDirectFlags] & PrepareEncoder_getScFwdDir()) != 0;
  return [((id<FlagEncoder>) nil_chk(encoder)) isForwardWithLong:[self getDirectFlags]];
}

- (id<CHEdgeIteratorState>)setWeightWithDouble:(jdouble)weight {
  [self checkShortcutWithBoolean:YES withNSString:@"setWeight"];
  CHGraphImpl_setWeightWithBaseGraph_CommonEdgeIterator_withDouble_(this$0_, self, weight);
  return self;
}

- (jdouble)getWeight {
  [self checkShortcutWithBoolean:YES withNSString:@"getWeight"];
  return CHGraphImpl_getWeightWithBaseGraph_CommonEdgeIterator_(this$0_, self);
}

- (void)selectEdgeAccess {
  if (nextEdgeId_ < ((BaseGraph *) nil_chk(baseGraph_))->edgeCount_) BaseGraph_CommonEdgeIterator_set_edgeAccess_(self, baseGraph_->edgeAccess_);
  else BaseGraph_CommonEdgeIterator_set_edgeAccess_(self, this$0_->chEdgeAccess_);
}

- (void)checkShortcutWithBoolean:(jboolean)shouldBeShortcut
                    withNSString:(NSString *)methodName {
  if (CHGraphImpl_CHEdgeIteratorImpl_isShortcut(self)) {
    if (!shouldBeShortcut) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$$I", @"Cannot call ", methodName, @" on shortcut ", [self getEdge])] autorelease];
  }
  else if (shouldBeShortcut) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$$$I", @"Method ", methodName, @" only for shortcuts ", [self getEdge])] autorelease];
}

- (NSString *)getName {
  [self checkShortcutWithBoolean:NO withNSString:@"getName"];
  return [super getName];
}

- (id<EdgeIteratorState>)setNameWithNSString:(NSString *)name {
  [self checkShortcutWithBoolean:NO withNSString:@"setName"];
  return [super setNameWithNSString:name];
}

- (PointList *)fetchWayGeometryWithInt:(jint)mode {
  [self checkShortcutWithBoolean:NO withNSString:@"fetchWayGeometry"];
  return [super fetchWayGeometryWithInt:mode];
}

- (id<EdgeIteratorState>)setWayGeometryWithPointList:(PointList *)list {
  [self checkShortcutWithBoolean:NO withNSString:@"setWayGeometry"];
  return [super setWayGeometryWithPointList:list];
}

- (jboolean)canBeOverwrittenWithLong:(jlong)flags {
  return PrepareEncoder_canBeOverwrittenWithLong_withLong_([self getDirectFlags], flags);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(CHGraphImpl_CHEdgeIteratorImpl *)other {
  [super copyAllFieldsTo:other];
  CHGraphImpl_CHEdgeIteratorImpl_set_this$0_(other, this$0_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithCHGraphImpl:withBaseGraph:withEdgeAccess:withEdgeFilter:", "CHEdgeIteratorImpl", NULL, 0x1, NULL },
    { "getFlags", NULL, "J", 0x11, NULL },
    { "setBaseNodeWithInt:", "setBaseNode", "Lcom.graphhopper.util.CHEdgeIterator;", 0x11, NULL },
    { "setSkippedEdgesWithInt:withInt:", "setSkippedEdges", "V", 0x11, NULL },
    { "getSkippedEdge1", NULL, "I", 0x11, NULL },
    { "getSkippedEdge2", NULL, "I", 0x11, NULL },
    { "isShortcut", NULL, "Z", 0x11, NULL },
    { "isBackwardWithFlagEncoder:", "isBackward", "Z", 0x1, NULL },
    { "isForwardWithFlagEncoder:", "isForward", "Z", 0x1, NULL },
    { "setWeightWithDouble:", "setWeight", "Lcom.graphhopper.util.CHEdgeIteratorState;", 0x11, NULL },
    { "getWeight", NULL, "D", 0x11, NULL },
    { "selectEdgeAccess", NULL, "V", 0x14, NULL },
    { "checkShortcutWithBoolean:withNSString:", "checkShortcut", "V", 0x1, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x11, NULL },
    { "setNameWithNSString:", "setName", "Lcom.graphhopper.util.EdgeIteratorState;", 0x11, NULL },
    { "fetchWayGeometryWithInt:", "fetchWayGeometry", "Lcom.graphhopper.util.PointList;", 0x11, NULL },
    { "setWayGeometryWithPointList:", "setWayGeometry", "Lcom.graphhopper.util.EdgeIteratorState;", 0x11, NULL },
    { "canBeOverwrittenWithLong:", "canBeOverwritten", "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.graphhopper.storage.CHGraphImpl;", NULL,  },
  };
  static const J2ObjcClassInfo _CHGraphImpl_CHEdgeIteratorImpl = { 1, "CHEdgeIteratorImpl", "com.graphhopper.storage", "CHGraphImpl", 0x0, 18, methods, 1, fields, 0, NULL};
  return &_CHGraphImpl_CHEdgeIteratorImpl;
}

@end

void CHGraphImpl_CHEdgeIteratorImpl_setSkippedEdgesWithInt_withInt_(CHGraphImpl_CHEdgeIteratorImpl *self, jint edge1, jint edge2) {
  [self checkShortcutWithBoolean:YES withNSString:@"setSkippedEdges"];
  if (EdgeIterator_Edge_isValidWithInt_(edge1) != EdgeIterator_Edge_isValidWithInt_(edge2)) {
    @throw [[[JavaLangIllegalStateException alloc] initWithNSString:JreStrcat("$I$I", @"Skipped edges of a shortcut needs to be both valid or invalid but they were not ", edge1, @", ", edge2)] autorelease];
  }
  [((id<DataAccess>) nil_chk(self->this$0_->shortcuts_)) setIntWithLong:self->edgePointer_ + self->this$0_->S_SKIP_EDGE1_ withInt:edge1];
  [self->this$0_->shortcuts_ setIntWithLong:self->edgePointer_ + self->this$0_->S_SKIP_EDGE2_ withInt:edge2];
}

jboolean CHGraphImpl_CHEdgeIteratorImpl_isShortcut(CHGraphImpl_CHEdgeIteratorImpl *self) {
  return self->edgeId_ >= ((BaseGraph *) nil_chk(self->baseGraph_))->edgeCount_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CHGraphImpl_CHEdgeIteratorImpl)

@implementation CHGraphImpl_AllCHEdgesIteratorImpl

- (instancetype)initWithCHGraphImpl:(CHGraphImpl *)outer$
                      withBaseGraph:(BaseGraph *)baseGraph {
  CHGraphImpl_AllCHEdgesIteratorImpl_set_this$0_(self, outer$);
  return [super initWithBaseGraph:baseGraph];
}

- (jboolean)checkRange {
  if (CHGraphImpl_AllCHEdgesIteratorImpl_isShortcut(self)) return edgeId_ < this$0_->shortcutCount_;
  if ([super checkRange]) return YES;
  BaseGraph_CommonEdgeIterator_set_edgeAccess_(self, this$0_->chEdgeAccess_);
  edgeId_ = 0;
  edgePointer_ = (jlong) edgeId_ * this$0_->shortcutEntryBytes_;
  return edgeId_ < this$0_->shortcutCount_;
}

- (jint)getEdge {
  if (CHGraphImpl_AllCHEdgesIteratorImpl_isShortcut(self)) return ((BaseGraph *) nil_chk(baseGraph_))->edgeCount_ + edgeId_;
  return [super getEdge];
}

- (jboolean)isBackwardWithFlagEncoder:(id<FlagEncoder>)encoder {
  NSAssert(encoder == [((id<ComGraphhopperRoutingWeightingWeighting>) nil_chk(this$0_->weighting_)) getFlagEncoder], [JreStrcat("@$@" J2OBJC_COMMA() encoder J2OBJC_COMMA() @" vs. " J2OBJC_COMMA() [this$0_->weighting_ getFlagEncoder]) description]);
  if (CHGraphImpl_AllCHEdgesIteratorImpl_isShortcut(self)) return ([self getDirectFlags] & PrepareEncoder_getScBwdDir()) != 0;
  return [((id<FlagEncoder>) nil_chk(encoder)) isBackwardWithLong:[self getDirectFlags]];
}

- (jboolean)isForwardWithFlagEncoder:(id<FlagEncoder>)encoder {
  NSAssert(encoder == [((id<ComGraphhopperRoutingWeightingWeighting>) nil_chk(this$0_->weighting_)) getFlagEncoder], [JreStrcat("@$@" J2OBJC_COMMA() encoder J2OBJC_COMMA() @" vs. " J2OBJC_COMMA() [this$0_->weighting_ getFlagEncoder]) description]);
  if (CHGraphImpl_AllCHEdgesIteratorImpl_isShortcut(self)) return ([self getDirectFlags] & PrepareEncoder_getScFwdDir()) != 0;
  return [((id<FlagEncoder>) nil_chk(encoder)) isForwardWithLong:[self getDirectFlags]];
}

- (jlong)getFlags {
  if (CHGraphImpl_AllCHEdgesIteratorImpl_isShortcut(self)) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Shortcut should not need to return raw flags!"] autorelease];
  return [self getDirectFlags];
}

- (jint)getMaxId {
  return [super getMaxId] + this$0_->shortcutCount_;
}

- (void)setSkippedEdgesWithInt:(jint)edge1
                       withInt:(jint)edge2 {
  [((id<DataAccess>) nil_chk(((BaseGraph *) nil_chk(baseGraph_))->edges_)) setIntWithLong:edgePointer_ + this$0_->S_SKIP_EDGE1_ withInt:edge1];
  [baseGraph_->edges_ setIntWithLong:edgePointer_ + this$0_->S_SKIP_EDGE2_ withInt:edge2];
}

- (jint)getSkippedEdge1 {
  return [((id<DataAccess>) nil_chk(((BaseGraph *) nil_chk(baseGraph_))->edges_)) getIntWithLong:edgePointer_ + this$0_->S_SKIP_EDGE1_];
}

- (jint)getSkippedEdge2 {
  return [((id<DataAccess>) nil_chk(((BaseGraph *) nil_chk(baseGraph_))->edges_)) getIntWithLong:edgePointer_ + this$0_->S_SKIP_EDGE2_];
}

- (jboolean)isShortcut {
  return CHGraphImpl_AllCHEdgesIteratorImpl_isShortcut(self);
}

- (id<CHEdgeIteratorState>)setWeightWithDouble:(jdouble)weight {
  CHGraphImpl_setWeightWithBaseGraph_CommonEdgeIterator_withDouble_(this$0_, self, weight);
  return self;
}

- (jdouble)getWeight {
  return CHGraphImpl_getWeightWithBaseGraph_CommonEdgeIterator_(this$0_, self);
}

- (jboolean)canBeOverwrittenWithLong:(jlong)flags {
  return PrepareEncoder_canBeOverwrittenWithLong_withLong_([self getDirectFlags], flags);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(CHGraphImpl_AllCHEdgesIteratorImpl *)other {
  [super copyAllFieldsTo:other];
  CHGraphImpl_AllCHEdgesIteratorImpl_set_this$0_(other, this$0_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithCHGraphImpl:withBaseGraph:", "AllCHEdgesIteratorImpl", NULL, 0x1, NULL },
    { "checkRange", NULL, "Z", 0x14, NULL },
    { "getEdge", NULL, "I", 0x1, NULL },
    { "isBackwardWithFlagEncoder:", "isBackward", "Z", 0x1, NULL },
    { "isForwardWithFlagEncoder:", "isForward", "Z", 0x1, NULL },
    { "getFlags", NULL, "J", 0x11, NULL },
    { "getMaxId", NULL, "I", 0x1, NULL },
    { "setSkippedEdgesWithInt:withInt:", "setSkippedEdges", "V", 0x11, NULL },
    { "getSkippedEdge1", NULL, "I", 0x11, NULL },
    { "getSkippedEdge2", NULL, "I", 0x11, NULL },
    { "isShortcut", NULL, "Z", 0x11, NULL },
    { "setWeightWithDouble:", "setWeight", "Lcom.graphhopper.util.CHEdgeIteratorState;", 0x11, NULL },
    { "getWeight", NULL, "D", 0x11, NULL },
    { "canBeOverwrittenWithLong:", "canBeOverwritten", "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.graphhopper.storage.CHGraphImpl;", NULL,  },
  };
  static const J2ObjcClassInfo _CHGraphImpl_AllCHEdgesIteratorImpl = { 1, "AllCHEdgesIteratorImpl", "com.graphhopper.storage", "CHGraphImpl", 0x0, 14, methods, 1, fields, 0, NULL};
  return &_CHGraphImpl_AllCHEdgesIteratorImpl;
}

@end

jboolean CHGraphImpl_AllCHEdgesIteratorImpl_isShortcut(CHGraphImpl_AllCHEdgesIteratorImpl *self) {
  NSCAssert([((BaseGraph *) nil_chk(self->baseGraph_)) isFrozen], @"level graph not yet frozen");
  return self->edgeAccess_ == self->this$0_->chEdgeAccess_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CHGraphImpl_AllCHEdgesIteratorImpl)

@implementation CHGraphImpl_$1

- (BaseGraph_EdgeIterable *)createSingleEdgeWithEdgeFilter:(id<EdgeFilter>)edgeFilter {
  return [[[CHGraphImpl_CHEdgeIteratorImpl alloc] initWithCHGraphImpl:this$0_ withBaseGraph:val$baseGraph_ withEdgeAccess:self withEdgeFilter:edgeFilter] autorelease];
}

- (jint)getEdgeRefWithInt:(jint)nodeId {
  return [((id<DataAccess>) nil_chk(this$0_->nodesCH_)) getIntWithLong:(jlong) nodeId * this$0_->nodeCHEntryBytes_ + this$0_->N_CH_REF_];
}

- (void)setEdgeRefWithInt:(jint)nodeId
                  withInt:(jint)edgeId {
  [((id<DataAccess>) nil_chk(this$0_->nodesCH_)) setIntWithLong:(jlong) nodeId * this$0_->nodeCHEntryBytes_ + this$0_->N_CH_REF_ withInt:edgeId];
}

- (jint)getEntryBytes {
  return this$0_->shortcutEntryBytes_;
}

- (jlong)toPointerWithInt:(jint)shortcutId {
  return CHGraphImpl_$1_toPointerWithInt_(self, shortcutId);
}

- (jboolean)isInBoundsWithInt:(jint)shortcutId {
  return CHGraphImpl_$1_isInBoundsWithInt_(self, shortcutId);
}

- (jlong)reverseFlagsWithLong:(jlong)edgePointer
                     withLong:(jlong)flags {
  jboolean isShortcut = edgePointer >= CHGraphImpl_$1_toPointerWithInt_(self, ((BaseGraph *) nil_chk(val$baseGraph_))->edgeCount_);
  if (!isShortcut) return [((EdgeAccess *) nil_chk(val$baseGraph_->edgeAccess_)) reverseFlagsWithLong:edgePointer withLong:flags];
  jlong dir = flags & this$0_->scDirMask_;
  if (dir == this$0_->scDirMask_ || dir == 0) return flags;
  return flags ^ this$0_->scDirMask_;
}

- (NSString *)description {
  return JreStrcat("$$", @"ch edge access ", val$name_);
}

- (instancetype)initWithCHGraphImpl:(CHGraphImpl *)outer$
                     withDataAccess:(id<DataAccess>)arg$0
                        withBitUtil:(BitUtil *)arg$1
                      withBaseGraph:(BaseGraph *)capture$0
                       withNSString:(NSString *)capture$1 {
  CHGraphImpl_$1_set_this$0_(self, outer$);
  CHGraphImpl_$1_set_val$baseGraph_(self, capture$0);
  CHGraphImpl_$1_set_val$name_(self, capture$1);
  return [super initWithDataAccess:arg$0 withBitUtil:arg$1];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$baseGraph_);
  RELEASE_(val$name_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(CHGraphImpl_$1 *)other {
  [super copyAllFieldsTo:other];
  CHGraphImpl_$1_set_this$0_(other, this$0_);
  CHGraphImpl_$1_set_val$baseGraph_(other, val$baseGraph_);
  CHGraphImpl_$1_set_val$name_(other, val$name_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createSingleEdgeWithEdgeFilter:", "createSingleEdge", "Lcom.graphhopper.storage.BaseGraph$EdgeIterable;", 0x10, NULL },
    { "getEdgeRefWithInt:", "getEdgeRef", "I", 0x10, NULL },
    { "setEdgeRefWithInt:withInt:", "setEdgeRef", "V", 0x10, NULL },
    { "getEntryBytes", NULL, "I", 0x10, NULL },
    { "toPointerWithInt:", "toPointer", "J", 0x10, NULL },
    { "isInBoundsWithInt:", "isInBounds", "Z", 0x10, NULL },
    { "reverseFlagsWithLong:withLong:", "reverseFlags", "J", 0x10, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "initWithCHGraphImpl:withDataAccess:withBitUtil:withBaseGraph:withNSString:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.graphhopper.storage.CHGraphImpl;", NULL,  },
    { "val$baseGraph_", NULL, 0x1012, "Lcom.graphhopper.storage.BaseGraph;", NULL,  },
    { "val$name_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _CHGraphImpl_$1 = { 1, "$1", "com.graphhopper.storage", "CHGraphImpl", 0x8000, 9, methods, 3, fields, 0, NULL};
  return &_CHGraphImpl_$1;
}

@end

jlong CHGraphImpl_$1_toPointerWithInt_(CHGraphImpl_$1 *self, jint shortcutId) {
  NSCAssert(CHGraphImpl_$1_isInBoundsWithInt_(self, shortcutId), [JreStrcat("$I$I$IC" J2OBJC_COMMA() @"shortcutId " J2OBJC_COMMA() shortcutId J2OBJC_COMMA() @" not in bounds [" J2OBJC_COMMA() ((BaseGraph *) nil_chk(self->val$baseGraph_))->edgeCount_ J2OBJC_COMMA() @" J2OBJC_COMMA() " J2OBJC_COMMA() (self->val$baseGraph_->edgeCount_ + self->this$0_->shortcutCount_) J2OBJC_COMMA() ')') description]);
  return (jlong) (shortcutId - self->val$baseGraph_->edgeCount_) * self->this$0_->shortcutEntryBytes_;
}

jboolean CHGraphImpl_$1_isInBoundsWithInt_(CHGraphImpl_$1 *self, jint shortcutId) {
  jint tmp = shortcutId - ((BaseGraph *) nil_chk(self->val$baseGraph_))->edgeCount_;
  return tmp < self->this$0_->shortcutCount_ && tmp >= 0;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CHGraphImpl_$1)