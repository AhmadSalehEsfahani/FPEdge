; ModuleID = 'main13428.obj.13428.tmp/fpga.ll'
source_filename = "main.cpp"
target datalayout = "e-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "spir64-unknown-unknown-intelfpga"

%"class.ihc::stream" = type { i8 }
%"class.ihc::stream_checker" = type { i8 }
%struct.Tuple = type { i32, i32, i32 }

$"?write@?$stream@UTuple@@$$V@ihc@@QEAAXAEBUTuple@@@Z" = comdat any

$"??0Tuple@@QEAA@XZ" = comdat any

$"?checkIfUsesEmptyThenUsesPackets@?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@ihc@@QEBAXXZ" = comdat any

$"?__ihc_enqueue_handle@@3PEAXEA" = comdat any

$"?checker@?$stream@UTuple@@$$V@ihc@@0V?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@2@B" = comdat any

@"?__ihc_enqueue_handle@@3PEAXEA" = weak_odr dso_local global i8* null, comdat, align 8, !dbg !0
@"?s0@@3V?$stream@UTuple@@$$V@ihc@@A" = dso_local global %"class.ihc::stream" zeroinitializer, align 1, !dbg !174
@"?s1@@3V?$stream@UTuple@@$$V@ihc@@A" = dso_local global %"class.ihc::stream" zeroinitializer, align 1, !dbg !176
@"?s2@@3V?$stream@UTuple@@$$V@ihc@@A" = dso_local global %"class.ihc::stream" zeroinitializer, align 1, !dbg !178
@"?checker@?$stream@UTuple@@$$V@ihc@@0V?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@2@B" = linkonce_odr dso_local constant %"class.ihc::stream_checker" undef, comdat, align 1, !dbg !194
@.str = private unnamed_addr constant [16 x i8] c"{staticreset:2}\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [57 x i8] c"C:/intelFPGA_pro/22.3/hls/include\\HLS/internal/_stream.h\00", section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32 }] [{ i8*, i8*, i8*, i32 } { i8* getelementptr inbounds (%"class.ihc::stream_checker", %"class.ihc::stream_checker"* @"?checker@?$stream@UTuple@@$$V@ihc@@0V?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@2@B", i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i32 251 }], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @"??__Es0@@YAXXZ"() #0 !dbg !1258 {
entry:
  %call = call %"class.ihc::stream"* @"??0?$stream@UTuple@@$$V@ihc@@QEAA@XZ"(%"class.ihc::stream"* @"?s0@@3V?$stream@UTuple@@$$V@ihc@@A"), !dbg !1259
  ret void, !dbg !1259
}

declare dso_local %"class.ihc::stream"* @"??0?$stream@UTuple@@$$V@ihc@@QEAA@XZ"(%"class.ihc::stream"* returned) unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @"??__Es1@@YAXXZ"() #0 !dbg !1260 {
entry:
  %call = call %"class.ihc::stream"* @"??0?$stream@UTuple@@$$V@ihc@@QEAA@XZ"(%"class.ihc::stream"* @"?s1@@3V?$stream@UTuple@@$$V@ihc@@A"), !dbg !1261
  ret void, !dbg !1261
}

; Function Attrs: nounwind uwtable
define internal void @"??__Es2@@YAXXZ"() #0 !dbg !1262 {
entry:
  %call = call %"class.ihc::stream"* @"??0?$stream@UTuple@@$$V@ihc@@QEAA@XZ"(%"class.ihc::stream"* @"?s2@@3V?$stream@UTuple@@$$V@ihc@@A"), !dbg !1263
  ret void, !dbg !1263
}

; Function Attrs: nounwind uwtable
define dso_local void @"?adder@@YAXXZ"() #0 !dbg !1264 {
entry:
  %tuple = alloca %struct.Tuple, align 4
  %0 = bitcast %struct.Tuple* %tuple to i8*, !dbg !1267
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %0) #7, !dbg !1267
  call void @llvm.dbg.declare(metadata %struct.Tuple* %tuple, metadata !1266, metadata !DIExpression()), !dbg !1268
  %1 = call %struct.Tuple @"?read@?$stream@UTuple@@$$V@ihc@@QEAA?AUTuple@@_N@Z"(%"class.ihc::stream"* @"?s0@@3V?$stream@UTuple@@$$V@ihc@@A", i1 true), !dbg !1269
  store %struct.Tuple %1, %struct.Tuple* %tuple, align 4, !dbg !1269
  %a = getelementptr inbounds %struct.Tuple, %struct.Tuple* %tuple, i32 0, i32 0, !dbg !1270
  %2 = load i32, i32* %a, align 4, !dbg !1270, !tbaa !1271
  %b = getelementptr inbounds %struct.Tuple, %struct.Tuple* %tuple, i32 0, i32 1, !dbg !1276
  %3 = load i32, i32* %b, align 4, !dbg !1276, !tbaa !1277
  %add = add nsw i32 %2, %3, !dbg !1278
  %res = getelementptr inbounds %struct.Tuple, %struct.Tuple* %tuple, i32 0, i32 2, !dbg !1279
  store i32 %add, i32* %res, align 4, !dbg !1280, !tbaa !1281
  call void @"?write@?$stream@UTuple@@$$V@ihc@@QEAAXAEBUTuple@@@Z"(%"class.ihc::stream"* @"?s1@@3V?$stream@UTuple@@$$V@ihc@@A", %struct.Tuple* nonnull align 4 dereferenceable(12) %tuple), !dbg !1282
  %4 = bitcast %struct.Tuple* %tuple to i8*, !dbg !1283
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %4) #7, !dbg !1283
  ret void, !dbg !1283
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @"?write@?$stream@UTuple@@$$V@ihc@@QEAAXAEBUTuple@@@Z"(%"class.ihc::stream"* %this, %struct.Tuple* nonnull align 4 dereferenceable(12) %arg) #0 comdat align 2 !dbg !1284 {
entry:
  %arg.addr = alloca %struct.Tuple*, align 8
  %this.addr = alloca %"class.ihc::stream"*, align 8
  store %struct.Tuple* %arg, %struct.Tuple** %arg.addr, align 8, !tbaa !1289
  call void @llvm.dbg.declare(metadata %struct.Tuple** %arg.addr, metadata !1286, metadata !DIExpression()), !dbg !1291
  store %"class.ihc::stream"* %this, %"class.ihc::stream"** %this.addr, align 8, !tbaa !1289
  call void @llvm.dbg.declare(metadata %"class.ihc::stream"** %this.addr, metadata !1287, metadata !DIExpression()), !dbg !1292
  %this1 = load %"class.ihc::stream"*, %"class.ihc::stream"** %this.addr, align 8
  call void @"?checkIfUsesEmptyThenUsesPackets@?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@ihc@@QEBAXXZ"(%"class.ihc::stream_checker"* @"?checker@?$stream@UTuple@@$$V@ihc@@0V?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@2@B"), !dbg !1293
  %0 = load %struct.Tuple*, %struct.Tuple** %arg.addr, align 8, !dbg !1294, !tbaa !1289
  %1 = ptrtoint %"class.ihc::stream"* %this1 to i64, !dbg !1295
  call void @llvm.intel.hls.outstream.write.s_struct.Tuples(%struct.Tuple* %0, i64 %1, i32 0, i32 0, i32 0, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i32 0), !dbg !1296
  ret void, !dbg !1297
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() #4 !dbg !1298 {
entry:
  %retval = alloca i32, align 4
  %tuple = alloca %struct.Tuple, align 4
  %res = alloca %struct.Tuple, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.Tuple* %tuple to i8*, !dbg !1302
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %0) #7, !dbg !1302
  call void @llvm.dbg.declare(metadata %struct.Tuple* %tuple, metadata !1300, metadata !DIExpression()), !dbg !1303
  %call = call %struct.Tuple* @"??0Tuple@@QEAA@XZ"(%struct.Tuple* %tuple) #7, !dbg !1303
  %a = getelementptr inbounds %struct.Tuple, %struct.Tuple* %tuple, i32 0, i32 0, !dbg !1304
  store i32 5, i32* %a, align 4, !dbg !1305, !tbaa !1271
  %b = getelementptr inbounds %struct.Tuple, %struct.Tuple* %tuple, i32 0, i32 1, !dbg !1306
  store i32 6, i32* %b, align 4, !dbg !1307, !tbaa !1277
  %1 = bitcast %struct.Tuple* %res to i8*, !dbg !1308
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %1) #7, !dbg !1308
  call void @llvm.dbg.declare(metadata %struct.Tuple* %res, metadata !1301, metadata !DIExpression()), !dbg !1309
  %2 = call %struct.Tuple @"?streamer@@YA?AUTuple@@AEAU1@@Z"(%struct.Tuple* %tuple), !dbg !1310
  store %struct.Tuple %2, %struct.Tuple* %res, align 4, !dbg !1310
  %3 = bitcast %struct.Tuple* %res to i8*, !dbg !1311
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %3) #7, !dbg !1311
  %4 = bitcast %struct.Tuple* %tuple to i8*, !dbg !1311
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %4) #7, !dbg !1311
  ret i32 0, !dbg !1312
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local %struct.Tuple* @"??0Tuple@@QEAA@XZ"(%struct.Tuple* returned %this) unnamed_addr #5 comdat align 2 !dbg !1313 {
entry:
  %this.addr = alloca %struct.Tuple*, align 8
  store %struct.Tuple* %this, %struct.Tuple** %this.addr, align 8, !tbaa !1289
  call void @llvm.dbg.declare(metadata %struct.Tuple** %this.addr, metadata !1319, metadata !DIExpression()), !dbg !1321
  %this1 = load %struct.Tuple*, %struct.Tuple** %this.addr, align 8
  %a = getelementptr inbounds %struct.Tuple, %struct.Tuple* %this1, i32 0, i32 0, !dbg !1322
  store i32 0, i32* %a, align 4, !dbg !1322, !tbaa !1271
  %b = getelementptr inbounds %struct.Tuple, %struct.Tuple* %this1, i32 0, i32 1, !dbg !1323
  store i32 0, i32* %b, align 4, !dbg !1323, !tbaa !1277
  %res = getelementptr inbounds %struct.Tuple, %struct.Tuple* %this1, i32 0, i32 2, !dbg !1324
  store i32 0, i32* %res, align 4, !dbg !1324, !tbaa !1281
  ret %struct.Tuple* %this1, !dbg !1325
}

declare { %struct.Tuple*, i8, i8, i32 } @llvm.intel.hls.instream.read.s_struct.Tuples(i64, i32, i32, i32, i1, i1, i1, i1)

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @"?checkIfUsesEmptyThenUsesPackets@?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@ihc@@QEBAXXZ"(%"class.ihc::stream_checker"* %this) #0 comdat align 2 !dbg !1326 {
entry:
  %this.addr = alloca %"class.ihc::stream_checker"*, align 8
  store %"class.ihc::stream_checker"* %this, %"class.ihc::stream_checker"** %this.addr, align 8, !tbaa !1289
  call void @llvm.dbg.declare(metadata %"class.ihc::stream_checker"** %this.addr, metadata !1328, metadata !DIExpression()), !dbg !1330
  %this1 = load %"class.ihc::stream_checker"*, %"class.ihc::stream_checker"** %this.addr, align 8
  ret void, !dbg !1331
}

declare void @llvm.intel.hls.outstream.write.s_struct.Tuples(%struct.Tuple*, i64, i32, i32, i32, i1, i1, i1, i1, i1, i1, i32)

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 !dbg !1332 {
entry:
  call void @"??__Es0@@YAXXZ"(), !dbg !1334
  call void @"??__Es1@@YAXXZ"(), !dbg !1334
  call void @"??__Es2@@YAXXZ"(), !dbg !1334
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Tuple @"?read@?$stream@UTuple@@$$V@ihc@@QEAA?AUTuple@@_N@Z"(%"class.ihc::stream"* %this, i1 zeroext %wait) #0 !dbg !1335 {
entry:
  %retval = alloca %struct.Tuple, align 8
  %result.ptr = alloca i8*, align 8
  %wait.addr = alloca i8, align 1
  %this.addr = alloca %"class.ihc::stream"*, align 8
  %sop = alloca i8, align 1
  %eop = alloca i8, align 1
  %emp = alloca i32, align 4
  %0 = bitcast %struct.Tuple* %retval to i8*
  store i8* %0, i8** %result.ptr, align 8
  %frombool = zext i1 %wait to i8
  store i8 %frombool, i8* %wait.addr, align 1, !tbaa !1342
  call void @llvm.dbg.declare(metadata i8* %wait.addr, metadata !1337, metadata !DIExpression()), !dbg !1344
  store %"class.ihc::stream"* %this, %"class.ihc::stream"** %this.addr, align 8, !tbaa !1289
  call void @llvm.dbg.declare(metadata %"class.ihc::stream"** %this.addr, metadata !1338, metadata !DIExpression()), !dbg !1345
  %this1 = load %"class.ihc::stream"*, %"class.ihc::stream"** %this.addr, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %sop) #7, !dbg !1346
  call void @llvm.dbg.declare(metadata i8* %sop, metadata !1339, metadata !DIExpression()), !dbg !1347
  store i8 0, i8* %sop, align 1, !dbg !1347, !tbaa !1342
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %eop) #7, !dbg !1348
  call void @llvm.dbg.declare(metadata i8* %eop, metadata !1340, metadata !DIExpression()), !dbg !1349
  store i8 0, i8* %eop, align 1, !dbg !1349, !tbaa !1342
  %1 = bitcast i32* %emp to i8*, !dbg !1350
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #7, !dbg !1350
  call void @llvm.dbg.declare(metadata i32* %emp, metadata !1341, metadata !DIExpression()), !dbg !1351
  store i32 0, i32* %emp, align 4, !dbg !1351, !tbaa !1352
  %2 = ptrtoint %"class.ihc::stream"* %this1 to i64, !dbg !1353
  %3 = call { %struct.Tuple*, i8, i8, i32 } @llvm.intel.hls.instream.read.s_struct.Tuples(i64 %2, i32 0, i32 0, i32 0, i1 false, i1 false, i1 false, i1 true), !dbg !1354
  %4 = extractvalue { %struct.Tuple*, i8, i8, i32 } %3, 1, !dbg !1354
  store i8 %4, i8* %sop, align 1, !dbg !1354
  %5 = extractvalue { %struct.Tuple*, i8, i8, i32 } %3, 2, !dbg !1354
  store i8 %5, i8* %eop, align 1, !dbg !1354
  %6 = extractvalue { %struct.Tuple*, i8, i8, i32 } %3, 3, !dbg !1354
  store i32 %6, i32* %emp, align 4, !dbg !1354
  %7 = extractvalue { %struct.Tuple*, i8, i8, i32 } %3, 0, !dbg !1354
  %8 = bitcast %struct.Tuple* %retval to i8*, !dbg !1355
  %9 = bitcast %struct.Tuple* %7 to i8*, !dbg !1355
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false), !dbg !1355, !tbaa.struct !1356
  %10 = bitcast i32* %emp to i8*, !dbg !1357
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #7, !dbg !1357
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %eop) #7, !dbg !1357
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %sop) #7, !dbg !1357
  %res = load %struct.Tuple, %struct.Tuple* %retval, align 4, !dbg !1357
  ret %struct.Tuple %res, !dbg !1357
}

; Function Attrs: noinline nounwind uwtable
define %struct.Tuple @"?streamer@@YA?AUTuple@@AEAU1@@Z"(%struct.Tuple* nonnull align 4 dereferenceable(12) %tuple) #6 !dbg !1358 !ihc_component !1364 !arg_type !1365 !impl_type !1366 !stable !1367 !cosim_name !1368 !memory !1369 !component_interface !1366 !stall_free_return !1370 !use_single_clock !1367 {
entry:
  %retval = alloca %struct.Tuple, align 8
  %result.ptr = alloca i8*, align 8
  %tuple.addr = alloca %struct.Tuple*, align 8
  %ref.tmp = alloca %struct.Tuple, align 4
  %0 = bitcast %struct.Tuple* %retval to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %struct.Tuple* %tuple, %struct.Tuple** %tuple.addr, align 8, !tbaa !1289
  call void @llvm.dbg.declare(metadata %struct.Tuple** %tuple.addr, metadata !1363, metadata !DIExpression()), !dbg !1371
  %1 = load %struct.Tuple*, %struct.Tuple** %tuple.addr, align 8, !dbg !1372, !tbaa !1289
  call void @"?write@?$stream@UTuple@@$$V@ihc@@QEAAXAEBUTuple@@@Z"(%"class.ihc::stream"* @"?s0@@3V?$stream@UTuple@@$$V@ihc@@A", %struct.Tuple* nonnull align 4 dereferenceable(12) %1), !dbg !1373
  call void @"?adder@@YAXXZ"(), !dbg !1374
  %2 = bitcast %struct.Tuple* %ref.tmp to i8*, !dbg !1375
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %2) #7, !dbg !1375
  %3 = call %struct.Tuple @"?read@?$stream@UTuple@@$$V@ihc@@QEAA?AUTuple@@_N@Z"(%"class.ihc::stream"* @"?s1@@3V?$stream@UTuple@@$$V@ihc@@A", i1 true), !dbg !1376
  store %struct.Tuple %3, %struct.Tuple* %ref.tmp, align 4, !dbg !1376
  %4 = load %struct.Tuple*, %struct.Tuple** %tuple.addr, align 8, !dbg !1377, !tbaa !1289
  %5 = bitcast %struct.Tuple* %4 to i8*, !dbg !1378
  %6 = bitcast %struct.Tuple* %ref.tmp to i8*, !dbg !1378
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 12, i1 false), !dbg !1378, !tbaa.struct !1356
  %7 = bitcast %struct.Tuple* %ref.tmp to i8*, !dbg !1377
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %7) #7, !dbg !1377
  %8 = load %struct.Tuple*, %struct.Tuple** %tuple.addr, align 8, !dbg !1379, !tbaa !1289
  %9 = bitcast %struct.Tuple* %retval to i8*, !dbg !1379
  %10 = bitcast %struct.Tuple* %8 to i8*, !dbg !1379
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 12, i1 false), !dbg !1379, !tbaa.struct !1356
  %res = load %struct.Tuple, %struct.Tuple* %retval, align 4, !dbg !1380
  ret %struct.Tuple %res, !dbg !1380
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.linker.options = !{!1252}
!llvm.module.flags = !{!1253, !1254, !1255, !1256}
!llvm.ident = !{!1257}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ihc_enqueue_handle", linkageName: "?__ihc_enqueue_handle@@3PEAXEA", scope: !2, file: !13, line: 80, type: !259, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang based Intel(R) oneAPI DPC++ Compiler 2021.1 (YYYY.x.0.MMDD)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !173, imports: !196, nameTableKind: None)
!3 = !DIFile(filename: "main.cpp", directory: "D:\\project\\ip\\hls\\main", checksumkind: CSK_MD5, checksum: "e8d16470574496b0e81f9006a8b460dc")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!7 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "stream<Tuple>", scope: !9, file: !8, line: 206, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !10, templateParams: !171, identifier: ".?AV?$stream@UTuple@@$$V@ihc@@")
!8 = !DIFile(filename: "C:/intelFPGA_pro\\22.3\\hls\\include\\HLS\\internal\\_stream.h", directory: "", checksumkind: CSK_MD5, checksum: "f310ef9b443e84839687800edb4085f0")
!9 = !DINamespace(name: "ihc", scope: null)
!10 = !{!11, !85, !87, !88, !89, !91, !92, !93, !94, !95, !115, !119, !124, !128, !132, !135, !138, !141, !144, !147, !150, !153, !156, !159, !162, !165, !168}
!11 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !7, baseType: !12, flags: DIFlagPublic, extraData: i32 0)
!12 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "stream<Tuple>", scope: !14, file: !13, line: 258, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !15, templateParams: !82, identifier: ".?AV?$stream@UTuple@@$$V@internal@ihc@@")
!13 = !DIFile(filename: "C:/intelFPGA_pro\\22.3\\hls\\include\\HLS\\internal\\_hls.h", directory: "", checksumkind: CSK_MD5, checksum: "c6eecb5b5f647ac0931b94743cf04df4")
!14 = !DINamespace(name: "internal", scope: !9)
!15 = !{!16, !20, !25, !29, !33, !42, !47, !51, !54, !57, !61, !64, !67, !70, !73, !76, !79, !80, !81}
!16 = !DISubprogram(name: "stream", scope: !12, file: !13, line: 272, type: !17, scopeLine: 272, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!20 = !DISubprogram(name: "stream", scope: !12, file: !13, line: 274, type: !21, scopeLine: 274, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !19, !23}
!23 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!25 = !DISubprogram(name: "operator=", linkageName: "??4?$stream@UTuple@@$$V@internal@ihc@@QEAAAEAV012@AEBV012@@Z", scope: !12, file: !13, line: 275, type: !26, scopeLine: 275, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !19, !23}
!28 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!29 = !DISubprogram(name: "_internal_cosim_empty", linkageName: "?_internal_cosim_empty@?$stream@UTuple@@$$V@internal@ihc@@QEAA_NXZ", scope: !12, file: !13, line: 277, type: !30, scopeLine: 277, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !19}
!32 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!33 = !DISubprogram(name: "read", linkageName: "?read@?$stream@UTuple@@$$V@internal@ihc@@QEAA?AUTuple@@XZ", scope: !12, file: !13, line: 296, type: !34, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !19}
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tuple", file: !3, line: 31, size: 96, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !37, identifier: ".?AUTuple@@")
!37 = !{!38, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !36, file: !3, line: 32, baseType: !39, size: 32)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !36, file: !3, line: 33, baseType: !39, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !36, file: !3, line: 34, baseType: !39, size: 32, offset: 64)
!42 = !DISubprogram(name: "write", linkageName: "?write@?$stream@UTuple@@$$V@internal@ihc@@QEAAXAEBUTuple@@@Z", scope: !12, file: !13, line: 297, type: !43, scopeLine: 297, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !19, !45}
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!47 = !DISubprogram(name: "tryRead", linkageName: "?tryRead@?$stream@UTuple@@$$V@internal@ihc@@QEAA?AUTuple@@AEA_N@Z", scope: !12, file: !13, line: 298, type: !48, scopeLine: 298, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!48 = !DISubroutineType(types: !49)
!49 = !{!36, !19, !50}
!50 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !32, size: 64)
!51 = !DISubprogram(name: "tryWrite", linkageName: "?tryWrite@?$stream@UTuple@@$$V@internal@ihc@@QEAA_NAEBUTuple@@@Z", scope: !12, file: !13, line: 299, type: !52, scopeLine: 299, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!52 = !DISubroutineType(types: !53)
!53 = !{!32, !19, !45}
!54 = !DISubprogram(name: "read", linkageName: "?read@?$stream@UTuple@@$$V@internal@ihc@@QEAA?AUTuple@@AEA_N0@Z", scope: !12, file: !13, line: 302, type: !55, scopeLine: 302, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!55 = !DISubroutineType(types: !56)
!56 = !{!36, !19, !50, !50}
!57 = !DISubprogram(name: "read", linkageName: "?read@?$stream@UTuple@@$$V@internal@ihc@@QEAA?AUTuple@@AEA_N0AEAH@Z", scope: !12, file: !13, line: 303, type: !58, scopeLine: 303, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!58 = !DISubroutineType(types: !59)
!59 = !{!36, !19, !50, !50, !60}
!60 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !39, size: 64)
!61 = !DISubprogram(name: "write", linkageName: "?write@?$stream@UTuple@@$$V@internal@ihc@@QEAAXAEBUTuple@@_N1@Z", scope: !12, file: !13, line: 304, type: !62, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !19, !45, !32, !32}
!64 = !DISubprogram(name: "write", linkageName: "?write@?$stream@UTuple@@$$V@internal@ihc@@QEAAXAEBUTuple@@_N1H@Z", scope: !12, file: !13, line: 305, type: !65, scopeLine: 305, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !19, !45, !32, !32, !39}
!67 = !DISubprogram(name: "tryRead", linkageName: "?tryRead@?$stream@UTuple@@$$V@internal@ihc@@QEAA?AUTuple@@AEA_N00@Z", scope: !12, file: !13, line: 306, type: !68, scopeLine: 306, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!68 = !DISubroutineType(types: !69)
!69 = !{!36, !19, !50, !50, !50}
!70 = !DISubprogram(name: "tryRead", linkageName: "?tryRead@?$stream@UTuple@@$$V@internal@ihc@@QEAA?AUTuple@@AEA_N00AEAH@Z", scope: !12, file: !13, line: 307, type: !71, scopeLine: 307, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!71 = !DISubroutineType(types: !72)
!72 = !{!36, !19, !50, !50, !50, !60}
!73 = !DISubprogram(name: "tryWrite", linkageName: "?tryWrite@?$stream@UTuple@@$$V@internal@ihc@@QEAA_NAEBUTuple@@_N1@Z", scope: !12, file: !13, line: 308, type: !74, scopeLine: 308, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!74 = !DISubroutineType(types: !75)
!75 = !{!32, !19, !45, !32, !32}
!76 = !DISubprogram(name: "tryWrite", linkageName: "?tryWrite@?$stream@UTuple@@$$V@internal@ihc@@QEAA_NAEBUTuple@@_N1H@Z", scope: !12, file: !13, line: 309, type: !77, scopeLine: 309, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!77 = !DISubroutineType(types: !78)
!78 = !{!32, !19, !45, !32, !32, !39}
!79 = !DISubprogram(name: "_internal_cosim_front", linkageName: "?_internal_cosim_front@?$stream@UTuple@@$$V@internal@ihc@@QEAA?AUTuple@@XZ", scope: !12, file: !13, line: 311, type: !34, scopeLine: 311, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!80 = !DISubprogram(name: "_internal_cosim_front", linkageName: "?_internal_cosim_front@?$stream@UTuple@@$$V@internal@ihc@@QEAA?AUTuple@@AEA_N0@Z", scope: !12, file: !13, line: 312, type: !55, scopeLine: 312, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!81 = !DISubprogram(name: "_internal_cosim_front", linkageName: "?_internal_cosim_front@?$stream@UTuple@@$$V@internal@ihc@@QEAA?AUTuple@@AEA_N0AEAH@Z", scope: !12, file: !13, line: 313, type: !58, scopeLine: 313, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!82 = !{!83, !84}
!83 = !DITemplateTypeParameter(name: "T", type: !36)
!84 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "Params", value: !4)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_buffer", scope: !7, file: !8, line: 229, baseType: !86, flags: DIFlagStaticMember, extraData: i32 0)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_readyLatency", scope: !7, file: !8, line: 230, baseType: !86, flags: DIFlagStaticMember, extraData: i32 0)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_bitsPerSymbol", scope: !7, file: !8, line: 232, baseType: !86, flags: DIFlagStaticMember, extraData: i32 0)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_firstSymbolInHighOrderBits", scope: !7, file: !8, line: 234, baseType: !90, flags: DIFlagStaticMember, extraData: i1 false)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_usesPackets", scope: !7, file: !8, line: 236, baseType: !90, flags: DIFlagStaticMember, extraData: i1 false)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_usesEmpty", scope: !7, file: !8, line: 238, baseType: !90, flags: DIFlagStaticMember, extraData: i1 false)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_usesValid", scope: !7, file: !8, line: 240, baseType: !90, flags: DIFlagStaticMember, extraData: i1 true)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_usesReady", scope: !7, file: !8, line: 242, baseType: !90, flags: DIFlagStaticMember, extraData: i1 true)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "checker", scope: !7, file: !8, line: 251, baseType: !96, flags: DIFlagStaticMember)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "stream_checker<Tuple,0,0,0,0,0,0,1,1>", scope: !9, file: !8, line: 77, size: 8, flags: DIFlagTypePassByValue, elements: !98, templateParams: !105, identifier: ".?AV?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@ihc@@")
!98 = !{!99, !103, !104}
!99 = !DISubprogram(name: "checkUsesPackets", linkageName: "?checkUsesPackets@?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@ihc@@QEBAXXZ", scope: !97, file: !8, line: 86, type: !100, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!103 = !DISubprogram(name: "checkUsesEmpty", linkageName: "?checkUsesEmpty@?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@ihc@@QEBAXXZ", scope: !97, file: !8, line: 92, type: !100, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubprogram(name: "checkIfUsesEmptyThenUsesPackets", linkageName: "?checkIfUsesEmptyThenUsesPackets@?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@ihc@@QEBAXXZ", scope: !97, file: !8, line: 98, type: !100, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114}
!106 = !DITemplateTypeParameter(name: "_T", type: !36)
!107 = !DITemplateValueParameter(name: "_buffer", type: !39, value: i32 0)
!108 = !DITemplateValueParameter(name: "_readyLatency", type: !39, value: i32 0)
!109 = !DITemplateValueParameter(name: "_bitsPerSymbol", type: !39, value: i32 0)
!110 = !DITemplateValueParameter(name: "_firstSymbolInHighOrderBits", type: !39, value: i32 0)
!111 = !DITemplateValueParameter(name: "_usesPackets", type: !39, value: i32 0)
!112 = !DITemplateValueParameter(name: "_usesEmpty", type: !39, value: i32 0)
!113 = !DITemplateValueParameter(name: "_usesValid", type: !39, value: i32 1)
!114 = !DITemplateValueParameter(name: "_usesReady", type: !39, value: i32 1)
!115 = !DISubprogram(name: "stream", scope: !7, file: !8, line: 208, type: !116, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!119 = !DISubprogram(name: "stream", scope: !7, file: !8, line: 209, type: !120, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !118, !122}
!122 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!124 = !DISubprogram(name: "stream", scope: !7, file: !8, line: 210, type: !125, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !118, !127}
!127 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !123, size: 64)
!128 = !DISubprogram(name: "operator=", linkageName: "??4?$stream@UTuple@@$$V@ihc@@QEAAAEAV01@AEBV01@@Z", scope: !7, file: !8, line: 211, type: !129, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !118, !122}
!131 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!132 = !DISubprogram(name: "operator=", linkageName: "??4?$stream@UTuple@@$$V@ihc@@QEAAAEAV01@$$QEBV01@@Z", scope: !7, file: !8, line: 212, type: !133, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!133 = !DISubroutineType(types: !134)
!134 = !{!131, !118, !127}
!135 = !DISubprogram(name: "read", linkageName: "?read@?$stream@UTuple@@$$V@ihc@@QEAA?AUTuple@@_N@Z", scope: !7, file: !8, line: 213, type: !136, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DISubroutineType(types: !137)
!137 = !{!36, !118, !32}
!138 = !DISubprogram(name: "write", linkageName: "?write@?$stream@UTuple@@$$V@ihc@@QEAAXAEBUTuple@@@Z", scope: !7, file: !8, line: 214, type: !139, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !118, !45}
!141 = !DISubprogram(name: "tryRead", linkageName: "?tryRead@?$stream@UTuple@@$$V@ihc@@QEAA?AUTuple@@AEA_N@Z", scope: !7, file: !8, line: 215, type: !142, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!142 = !DISubroutineType(types: !143)
!143 = !{!36, !118, !50}
!144 = !DISubprogram(name: "tryWrite", linkageName: "?tryWrite@?$stream@UTuple@@$$V@ihc@@QEAA_NAEBUTuple@@@Z", scope: !7, file: !8, line: 216, type: !145, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DISubroutineType(types: !146)
!146 = !{!32, !118, !45}
!147 = !DISubprogram(name: "read", linkageName: "?read@?$stream@UTuple@@$$V@ihc@@QEAA?AUTuple@@AEA_N0_N@Z", scope: !7, file: !8, line: 219, type: !148, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{!36, !118, !50, !50, !32}
!150 = !DISubprogram(name: "read", linkageName: "?read@?$stream@UTuple@@$$V@ihc@@QEAA?AUTuple@@AEA_N0AEAH_N@Z", scope: !7, file: !8, line: 220, type: !151, scopeLine: 220, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubroutineType(types: !152)
!152 = !{!36, !118, !50, !50, !60, !32}
!153 = !DISubprogram(name: "write", linkageName: "?write@?$stream@UTuple@@$$V@ihc@@QEAAXAEBUTuple@@_N1@Z", scope: !7, file: !8, line: 221, type: !154, scopeLine: 221, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !118, !45, !32, !32}
!156 = !DISubprogram(name: "write", linkageName: "?write@?$stream@UTuple@@$$V@ihc@@QEAAXAEBUTuple@@_N1H@Z", scope: !7, file: !8, line: 222, type: !157, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !118, !45, !32, !32, !39}
!159 = !DISubprogram(name: "tryRead", linkageName: "?tryRead@?$stream@UTuple@@$$V@ihc@@QEAA?AUTuple@@AEA_N00@Z", scope: !7, file: !8, line: 223, type: !160, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{!36, !118, !50, !50, !50}
!162 = !DISubprogram(name: "tryRead", linkageName: "?tryRead@?$stream@UTuple@@$$V@ihc@@QEAA?AUTuple@@AEA_N00AEAH@Z", scope: !7, file: !8, line: 224, type: !163, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DISubroutineType(types: !164)
!164 = !{!36, !118, !50, !50, !50, !60}
!165 = !DISubprogram(name: "tryWrite", linkageName: "?tryWrite@?$stream@UTuple@@$$V@ihc@@QEAA_NAEBUTuple@@_N1@Z", scope: !7, file: !8, line: 225, type: !166, scopeLine: 225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubroutineType(types: !167)
!167 = !{!32, !118, !45, !32, !32}
!168 = !DISubprogram(name: "tryWrite", linkageName: "?tryWrite@?$stream@UTuple@@$$V@ihc@@QEAA_NAEBUTuple@@_N1H@Z", scope: !7, file: !8, line: 226, type: !169, scopeLine: 226, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DISubroutineType(types: !170)
!170 = !{!32, !118, !45, !32, !32, !39}
!171 = !{!106, !172}
!172 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Params", value: !4)
!173 = !{!0, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194}
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "s0", linkageName: "?s0@@3V?$stream@UTuple@@$$V@ihc@@A", scope: !2, file: !3, line: 40, type: !7, isLocal: false, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "s1", linkageName: "?s1@@3V?$stream@UTuple@@$$V@ihc@@A", scope: !2, file: !3, line: 40, type: !7, isLocal: false, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "s2", linkageName: "?s2@@3V?$stream@UTuple@@$$V@ihc@@A", scope: !2, file: !3, line: 40, type: !7, isLocal: false, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!181 = distinct !DIGlobalVariable(name: "_buffer", scope: !2, file: !8, line: 229, type: !86, isLocal: true, isDefinition: true, declaration: !85)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!183 = distinct !DIGlobalVariable(name: "_readyLatency", scope: !2, file: !8, line: 230, type: !86, isLocal: true, isDefinition: true, declaration: !87)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!185 = distinct !DIGlobalVariable(name: "_bitsPerSymbol", scope: !2, file: !8, line: 232, type: !86, isLocal: true, isDefinition: true, declaration: !88)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!187 = distinct !DIGlobalVariable(name: "_firstSymbolInHighOrderBits", scope: !2, file: !8, line: 234, type: !90, isLocal: true, isDefinition: true, declaration: !89)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!189 = distinct !DIGlobalVariable(name: "_usesPackets", scope: !2, file: !8, line: 236, type: !90, isLocal: true, isDefinition: true, declaration: !91)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!191 = distinct !DIGlobalVariable(name: "_usesEmpty", scope: !2, file: !8, line: 238, type: !90, isLocal: true, isDefinition: true, declaration: !92)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!193 = distinct !DIGlobalVariable(name: "_usesReady", scope: !2, file: !8, line: 242, type: !90, isLocal: true, isDefinition: true, declaration: !94)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "checker", linkageName: "?checker@?$stream@UTuple@@$$V@ihc@@0V?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@2@B", scope: !2, file: !8, line: 251, type: !96, isLocal: false, isDefinition: true, declaration: !95)
!196 = !{!197, !202, !205, !208, !211, !213, !217, !224, !228, !233, !238, !246, !250, !254, !266, !271, !281, !285, !289, !293, !297, !301, !305, !311, !315, !319, !323, !327, !332, !338, !342, !347, !353, !357, !358, !362, !364, !368, !372, !376, !381, !385, !389, !393, !395, !397, !399, !400, !405, !414, !415, !418, !419, !424, !428, !430, !432, !434, !436, !441, !445, !449, !455, !459, !463, !467, !471, !473, !477, !483, !487, !491, !493, !495, !499, !501, !505, !509, !511, !513, !517, !519, !521, !525, !529, !533, !537, !541, !545, !547, !553, !557, !561, !567, !571, !573, !575, !579, !581, !586, !591, !595, !597, !599, !604, !608, !610, !612, !614, !618, !622, !626, !630, !634, !636, !640, !642, !644, !646, !648, !652, !656, !657, !658, !661, !663, !668, !672, !676, !680, !684, !688, !693, !695, !697, !701, !706, !710, !715, !721, !723, !727, !732, !736, !740, !744, !748, !752, !756, !760, !762, !767, !773, !778, !782, !786, !788, !790, !794, !798, !802, !806, !808, !810, !812, !814, !818, !822, !824, !826, !830, !834, !838, !840, !842, !844, !846, !852, !854, !858, !860, !864, !868, !872, !876, !881, !884, !886, !888, !891, !893, !895, !897, !899, !901, !903, !905, !907, !909, !911, !913, !915, !917, !919, !921, !923, !925, !927, !929, !931, !934, !936, !938, !940, !945, !949, !951, !953, !957, !959, !961, !963, !965, !967, !969, !971, !976, !980, !982, !984, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1011, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1029, !1033, !1035, !1037, !1039, !1041, !1043, !1045, !1047, !1049, !1051, !1053, !1055, !1057, !1059, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1079, !1081, !1083, !1085, !1087, !1091, !1095, !1097, !1099, !1101, !1103, !1105, !1109, !1111, !1113, !1115, !1117, !1119, !1123, !1125, !1129, !1131, !1133, !1137, !1141, !1143, !1145, !1147, !1149, !1151, !1153, !1155, !1157, !1159, !1161, !1165, !1167, !1169, !1171, !1173, !1177, !1181, !1183, !1185, !1187, !1189, !1191, !1195, !1197, !1199, !1201, !1203, !1205, !1209, !1211, !1215, !1217, !1219, !1223, !1225, !1227, !1229, !1233, !1237, !1242, !1243, !1246, !1250}
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !198, file: !199, line: 99)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !200, file: !199, line: 98, baseType: !201)
!199 = !DIFile(filename: "C:\\intelFPGA_pro\\22.3\\hls\\llvm\\lib\\clang\\11.0.0\\include\\stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f2c255a96945d478dad53c16bda58f72")
!200 = !DINamespace(name: "std", scope: null)
!201 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !203, file: !204, line: 18)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !199, line: 40, baseType: !6)
!204 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\cstddef", directory: "", checksumkind: CSK_MD5, checksum: "053c0af6292486475f27bb2f7529187a")
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !206, file: !204, line: 18)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !199, line: 51, baseType: !207)
!207 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !209, file: !204, line: 101)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", scope: !200, file: !204, line: 19, baseType: !210)
!210 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !206, file: !212, line: 35)
!212 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\cstdlib", directory: "", checksumkind: CSK_MD5, checksum: "8ed950134e977ae88a6f13382daabad7")
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !214, file: !212, line: 35)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !215, line: 275, baseType: !216)
!215 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "de8e838541c51a1328a91fa58d4e7c04")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !215, line: 271, flags: DIFlagFwdDecl, identifier: ".?AU_div_t@@")
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !218, file: !212, line: 35)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !215, line: 281, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !215, line: 277, size: 64, flags: DIFlagTypePassByValue, elements: !220, identifier: ".?AU_ldiv_t@@")
!220 = !{!221, !223}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !219, file: !215, line: 279, baseType: !222, size: 32)
!222 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !219, file: !215, line: 280, baseType: !222, size: 32, offset: 32)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !225, file: !212, line: 36)
!225 = !DISubprogram(name: "abort", scope: !215, file: !215, line: 56, type: !226, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!226 = !DISubroutineType(types: !227)
!227 = !{null}
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !229, file: !212, line: 36)
!229 = !DISubprogram(name: "abs", linkageName: "?abs@@YAOO@Z", scope: !212, file: !212, line: 29, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !232}
!232 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !234, file: !212, line: 36)
!234 = !DISubprogram(name: "atexit", scope: !215, file: !215, line: 140, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubroutineType(types: !236)
!236 = !{!39, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !239, file: !212, line: 37)
!239 = !DISubprogram(name: "atof", scope: !240, file: !240, line: 492, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\corecrt_math.h", directory: "", checksumkind: CSK_MD5, checksum: "861c755e16a8279a2ca1a02ca7deeb98")
!241 = !DISubroutineType(types: !242)
!242 = !{!210, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !247, file: !212, line: 37)
!247 = !DISubprogram(name: "atoi", scope: !215, file: !215, line: 447, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DISubroutineType(types: !249)
!249 = !{!39, !243}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !251, file: !212, line: 37)
!251 = !DISubprogram(name: "atol", scope: !215, file: !215, line: 448, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = !DISubroutineType(types: !253)
!253 = !{!222, !243}
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !255, file: !212, line: 38)
!255 = !DISubprogram(name: "bsearch", scope: !256, file: !256, line: 48, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\corecrt_search.h", directory: "", checksumkind: CSK_MD5, checksum: "0e082e34a53c7130d2fe4be38f437ee5")
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !260, !260, !206, !206, !262}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "_CoreCrtNonSecureSearchSortCompareFunction", file: !256, line: 20, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!39, !260, !260}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !267, file: !212, line: 38)
!267 = !DISubprogram(name: "calloc", scope: !268, file: !268, line: 62, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\corecrt_malloc.h", directory: "", checksumkind: CSK_MD5, checksum: "11d5895916238cf845f07accf180f401")
!269 = !DISubroutineType(types: !270)
!270 = !{!259, !206, !206}
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !272, file: !212, line: 38)
!272 = !DISubprogram(name: "div", linkageName: "?div@@YA?AU_lldiv_t@@_J0@Z", scope: !215, file: !215, line: 374, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !280, !280}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !215, line: 287, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lldiv_t", file: !215, line: 283, size: 128, flags: DIFlagTypePassByValue, elements: !277, identifier: ".?AU_lldiv_t@@")
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !276, file: !215, line: 285, baseType: !6, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !276, file: !215, line: 286, baseType: !6, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !282, file: !212, line: 39)
!282 = !DISubprogram(name: "exit", scope: !215, file: !215, line: 52, type: !283, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !39}
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !286, file: !212, line: 39)
!286 = !DISubprogram(name: "free", scope: !268, file: !268, line: 85, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !259}
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !290, file: !212, line: 40)
!290 = !DISubprogram(name: "labs", scope: !240, file: !240, line: 467, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DISubroutineType(types: !292)
!292 = !{!222, !222}
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !294, file: !212, line: 40)
!294 = !DISubprogram(name: "ldiv", scope: !215, file: !215, line: 299, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubroutineType(types: !296)
!296 = !{!218, !222, !222}
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !298, file: !212, line: 40)
!298 = !DISubprogram(name: "malloc", scope: !268, file: !268, line: 97, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DISubroutineType(types: !300)
!300 = !{!259, !206}
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !302, file: !212, line: 41)
!302 = !DISubprogram(name: "mblen", scope: !215, file: !215, line: 855, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubroutineType(types: !304)
!304 = !{!39, !243, !206}
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !306, file: !212, line: 41)
!306 = !DISubprogram(name: "mbstowcs", scope: !215, file: !215, line: 927, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{!206, !309, !243, !206}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIBasicType(name: "wchar_t", size: 16, encoding: DW_ATE_unsigned)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !312, file: !212, line: 41)
!312 = !DISubprogram(name: "mbtowc", scope: !215, file: !215, line: 896, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DISubroutineType(types: !314)
!314 = !{!39, !309, !243, !206}
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !316, file: !212, line: 42)
!316 = !DISubprogram(name: "qsort", scope: !256, file: !256, line: 56, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !259, !206, !206, !262}
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !320, file: !212, line: 42)
!320 = !DISubprogram(name: "rand", scope: !215, file: !215, line: 348, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubroutineType(types: !322)
!322 = !{!39}
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !324, file: !212, line: 42)
!324 = !DISubprogram(name: "realloc", scope: !268, file: !268, line: 122, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!325 = !DISubroutineType(types: !326)
!326 = !{!259, !259, !206}
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !328, file: !212, line: 43)
!328 = !DISubprogram(name: "srand", scope: !215, file: !215, line: 346, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !331}
!331 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !333, file: !212, line: 43)
!333 = !DISubprogram(name: "strtod", scope: !215, file: !215, line: 498, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{!210, !243, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !339, file: !212, line: 43)
!339 = !DISubprogram(name: "strtol", scope: !215, file: !215, line: 524, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DISubroutineType(types: !341)
!341 = !{!222, !243, !336, !39}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !343, file: !212, line: 44)
!343 = !DISubprogram(name: "strtoul", scope: !215, file: !215, line: 554, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !243, !336, !39}
!346 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !348, file: !212, line: 45)
!348 = !DISubprogram(name: "wcstombs", scope: !215, file: !215, line: 1015, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DISubroutineType(types: !350)
!350 = !{!206, !337, !351, !206}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !354, file: !212, line: 45)
!354 = !DISubprogram(name: "wctomb", scope: !215, file: !215, line: 966, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{!39, !337, !310}
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !275, file: !212, line: 47)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !359, file: !212, line: 50)
!359 = !DISubprogram(name: "getenv", scope: !215, file: !215, line: 1191, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubroutineType(types: !361)
!361 = !{!337, !243}
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !363, file: !212, line: 51)
!363 = !DISubprogram(name: "system", scope: !215, file: !215, line: 1218, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !365, file: !212, line: 54)
!365 = !DISubprogram(name: "atoll", scope: !215, file: !215, line: 449, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DISubroutineType(types: !367)
!367 = !{!6, !243}
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !369, file: !212, line: 54)
!369 = !DISubprogram(name: "llabs", scope: !240, file: !240, line: 468, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DISubroutineType(types: !371)
!371 = !{!6, !6}
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !373, file: !212, line: 54)
!373 = !DISubprogram(name: "lldiv", scope: !215, file: !215, line: 300, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!374 = !DISubroutineType(types: !375)
!375 = !{!275, !6, !6}
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !377, file: !212, line: 55)
!377 = !DISubprogram(name: "strtof", scope: !215, file: !215, line: 485, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubroutineType(types: !379)
!379 = !{!380, !243, !336}
!380 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !382, file: !212, line: 55)
!382 = !DISubprogram(name: "strtold", scope: !215, file: !215, line: 511, type: !383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DISubroutineType(types: !384)
!384 = !{!232, !243, !336}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !386, file: !212, line: 56)
!386 = !DISubprogram(name: "strtoll", scope: !215, file: !215, line: 539, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DISubroutineType(types: !388)
!388 = !{!6, !243, !336, !39}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !390, file: !212, line: 56)
!390 = !DISubprogram(name: "strtoull", scope: !215, file: !215, line: 569, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!391 = !DISubroutineType(types: !392)
!392 = !{!207, !243, !336, !39}
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !394, file: !212, line: 58)
!394 = !DISubprogram(name: "_Exit", scope: !215, file: !215, line: 54, type: !283, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !396, file: !212, line: 58)
!396 = !DISubprogram(name: "at_quick_exit", scope: !215, file: !215, line: 144, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !398, file: !212, line: 58)
!398 = !DISubprogram(name: "quick_exit", scope: !215, file: !215, line: 55, type: !283, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!399 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !14, entity: !200, file: !13, line: 138)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !401, file: !404, line: 33)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !402, line: 28, baseType: !403)
!402 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\corecrt_wstdio.h", directory: "", checksumkind: CSK_MD5, checksum: "7a1297c2c2711a55d0a16ab6e0295b36")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_iobuf", file: !402, line: 25, flags: DIFlagFwdDecl, identifier: ".?AU_iobuf@@")
!404 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\cstdio", directory: "", checksumkind: CSK_MD5, checksum: "4856bdc913af23b3b7693328c360d211")
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !406, file: !404, line: 33)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Mbstatet", file: !407, line: 535, baseType: !408)
!407 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\corecrt.h", directory: "", checksumkind: CSK_MD5, checksum: "4ded0500e6b57b4c065ea265feeb1ba1")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Mbstatet", file: !407, line: 531, size: 64, flags: DIFlagTypePassByValue, elements: !409, identifier: ".?AU_Mbstatet@@")
!409 = !{!410, !411, !413}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_Wchar", scope: !408, file: !407, line: 533, baseType: !346, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_Byte", scope: !408, file: !407, line: 534, baseType: !412, size: 16, offset: 32)
!412 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_State", scope: !408, file: !407, line: 534, baseType: !412, size: 16, offset: 48)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !206, file: !404, line: 35)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !416, file: !404, line: 35)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !417, line: 69, baseType: !6)
!417 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "fbd70ebcdfc4dc50f14b9db7fc2c9b4d")
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !401, file: !404, line: 35)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !420, file: !404, line: 36)
!420 = !DISubprogram(name: "clearerr", scope: !417, file: !417, line: 141, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !425, file: !404, line: 36)
!425 = !DISubprogram(name: "fclose", scope: !417, file: !417, line: 147, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DISubroutineType(types: !427)
!427 = !{!39, !423}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !429, file: !404, line: 36)
!429 = !DISubprogram(name: "feof", scope: !417, file: !417, line: 161, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !431, file: !404, line: 37)
!431 = !DISubprogram(name: "ferror", scope: !417, file: !417, line: 166, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !433, file: !404, line: 37)
!433 = !DISubprogram(name: "fflush", scope: !417, file: !417, line: 171, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !435, file: !404, line: 37)
!435 = !DISubprogram(name: "fgetc", scope: !417, file: !417, line: 177, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !437, file: !404, line: 38)
!437 = !DISubprogram(name: "fgetpos", scope: !417, file: !417, line: 186, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DISubroutineType(types: !439)
!439 = !{!39, !423, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !442, file: !404, line: 38)
!442 = !DISubprogram(name: "fgets", scope: !417, file: !417, line: 193, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DISubroutineType(types: !444)
!444 = !{!337, !337, !39, !423}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !446, file: !404, line: 38)
!446 = !DISubprogram(name: "fopen", scope: !417, file: !417, line: 208, type: !447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!447 = !DISubroutineType(types: !448)
!448 = !{!423, !243, !243}
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !450, file: !404, line: 39)
!450 = !DISubprogram(name: "fprintf", scope: !417, file: !417, line: 828, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{!39, !453, !454, null}
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !456, file: !404, line: 39)
!456 = !DISubprogram(name: "fputc", scope: !417, file: !417, line: 216, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!457 = !DISubroutineType(types: !458)
!458 = !{!39, !39, !423}
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !460, file: !404, line: 39)
!460 = !DISubprogram(name: "fputs", scope: !417, file: !417, line: 228, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!39, !243, !423}
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !464, file: !404, line: 40)
!464 = !DISubprogram(name: "fread", scope: !417, file: !417, line: 234, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = !DISubroutineType(types: !466)
!466 = !{!206, !259, !206, !206, !423}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !468, file: !404, line: 40)
!468 = !DISubprogram(name: "freopen", scope: !417, file: !417, line: 243, type: !469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = !DISubroutineType(types: !470)
!470 = !{!423, !243, !243, !423}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !472, file: !404, line: 40)
!472 = !DISubprogram(name: "fscanf", scope: !417, file: !417, line: 1197, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !474, file: !404, line: 41)
!474 = !DISubprogram(name: "fseek", scope: !417, file: !417, line: 265, type: !475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!475 = !DISubroutineType(types: !476)
!476 = !{!39, !423, !222, !39}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !478, file: !404, line: 41)
!478 = !DISubprogram(name: "fsetpos", scope: !417, file: !417, line: 258, type: !479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!479 = !DISubroutineType(types: !480)
!480 = !{!39, !423, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !484, file: !404, line: 41)
!484 = !DISubprogram(name: "ftell", scope: !417, file: !417, line: 281, type: !485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!485 = !DISubroutineType(types: !486)
!486 = !{!222, !423}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !488, file: !404, line: 42)
!488 = !DISubprogram(name: "fwrite", scope: !417, file: !417, line: 292, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!489 = !DISubroutineType(types: !490)
!490 = !{!206, !260, !206, !206, !423}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !492, file: !404, line: 42)
!492 = !DISubprogram(name: "getc", scope: !417, file: !417, line: 301, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !494, file: !404, line: 42)
!494 = !DISubprogram(name: "getchar", scope: !417, file: !417, line: 306, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !496, file: !404, line: 43)
!496 = !DISubprogram(name: "perror", scope: !417, file: !417, line: 320, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !243}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !500, file: !404, line: 44)
!500 = !DISubprogram(name: "putc", scope: !417, file: !417, line: 342, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !502, file: !404, line: 44)
!502 = !DISubprogram(name: "putchar", scope: !417, file: !417, line: 348, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!503 = !DISubroutineType(types: !504)
!504 = !{!39, !39}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !506, file: !404, line: 45)
!506 = !DISubprogram(name: "printf", scope: !417, file: !417, line: 948, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DISubroutineType(types: !508)
!508 = !{!39, !454, null}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !510, file: !404, line: 45)
!510 = !DISubprogram(name: "puts", scope: !417, file: !417, line: 353, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !512, file: !404, line: 45)
!512 = !DISubprogram(name: "remove", scope: !417, file: !417, line: 364, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !514, file: !404, line: 46)
!514 = !DISubprogram(name: "rename", scope: !417, file: !417, line: 369, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!515 = !DISubroutineType(types: !516)
!516 = !{!39, !243, !243}
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !518, file: !404, line: 46)
!518 = !DISubprogram(name: "rewind", scope: !417, file: !417, line: 387, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !520, file: !404, line: 46)
!520 = !DISubprogram(name: "scanf", scope: !417, file: !417, line: 1274, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !522, file: !404, line: 47)
!522 = !DISubprogram(name: "setbuf", scope: !417, file: !417, line: 395, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !423, !337}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !526, file: !404, line: 47)
!526 = !DISubprogram(name: "setvbuf", scope: !417, file: !417, line: 407, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DISubroutineType(types: !528)
!528 = !{!39, !423, !337, !39, !206}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !530, file: !404, line: 47)
!530 = !DISubprogram(name: "sprintf", scope: !417, file: !417, line: 1800, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!531 = !DISubroutineType(types: !532)
!532 = !{!39, !337, !243, null}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !534, file: !404, line: 48)
!534 = !DISubprogram(name: "sscanf", scope: !417, file: !417, line: 2263, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DISubroutineType(types: !536)
!536 = !{!39, !454, !454, null}
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !538, file: !404, line: 48)
!538 = !DISubprogram(name: "tmpfile", scope: !417, file: !417, line: 430, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DISubroutineType(types: !540)
!540 = !{!423}
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !542, file: !404, line: 48)
!542 = !DISubprogram(name: "tmpnam", scope: !417, file: !417, line: 440, type: !543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!543 = !DISubroutineType(types: !544)
!544 = !{!337, !337}
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !546, file: !404, line: 49)
!546 = !DISubprogram(name: "ungetc", scope: !417, file: !417, line: 449, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !548, file: !404, line: 49)
!548 = !DISubprogram(name: "vfprintf", scope: !417, file: !417, line: 648, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!549 = !DISubroutineType(types: !550)
!550 = !{!39, !453, !454, !551}
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !552, line: 39, baseType: !337)
!552 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\vadefs.h", directory: "", checksumkind: CSK_MD5, checksum: "7356053de7dbd0aa6b07922800462e84")
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !554, file: !404, line: 49)
!554 = !DISubprogram(name: "vprintf", scope: !417, file: !417, line: 738, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!555 = !DISubroutineType(types: !556)
!556 = !{!39, !454, !551}
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !558, file: !404, line: 50)
!558 = !DISubprogram(name: "vsprintf", scope: !417, file: !417, line: 1800, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DISubroutineType(types: !560)
!560 = !{!39, !337, !243, !551}
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !562, file: !404, line: 52)
!562 = !DISubprogram(name: "snprintf", scope: !417, file: !417, line: 1940, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!563 = !DISubroutineType(types: !564)
!564 = !{!39, !565, !566, !454, null}
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !568, file: !404, line: 52)
!568 = !DISubprogram(name: "vsnprintf", scope: !417, file: !417, line: 1430, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubroutineType(types: !570)
!570 = !{!39, !565, !566, !454, !551}
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !572, file: !404, line: 53)
!572 = !DISubprogram(name: "vfscanf", scope: !417, file: !417, line: 1070, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !574, file: !404, line: 53)
!574 = !DISubprogram(name: "vscanf", scope: !417, file: !417, line: 1134, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !576, file: !404, line: 53)
!576 = !DISubprogram(name: "vsscanf", scope: !417, file: !417, line: 2183, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!577 = !DISubroutineType(types: !578)
!578 = !{!39, !454, !454, !551}
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !206, file: !580, line: 21)
!580 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\cstring", directory: "", checksumkind: CSK_MD5, checksum: "cbc2820d6a644d98b408e26b63097d78")
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !582, file: !580, line: 21)
!582 = !DISubprogram(name: "memchr", linkageName: "?memchr@@YAPEAXPEAXH_K@Z", scope: !583, file: !583, line: 100, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!583 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\corecrt_memory.h", directory: "", checksumkind: CSK_MD5, checksum: "33686d742ef373658431918e1a52326c")
!584 = !DISubroutineType(types: !585)
!585 = !{!259, !259, !39, !206}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !587, file: !580, line: 21)
!587 = !DISubprogram(name: "memcmp", scope: !588, file: !588, line: 26, type: !589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!588 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\vcruntime_string.h", directory: "", checksumkind: CSK_MD5, checksum: "5c36f720190eda34280c873b1c69fdac")
!589 = !DISubroutineType(types: !590)
!590 = !{!39, !260, !260, !206}
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !592, file: !580, line: 22)
!592 = !DISubprogram(name: "memcpy", scope: !588, file: !588, line: 40, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!593 = !DISubroutineType(types: !594)
!594 = !{!259, !259, !260, !206}
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !596, file: !580, line: 22)
!596 = !DISubprogram(name: "memmove", scope: !588, file: !588, line: 47, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !598, file: !580, line: 22)
!598 = !DISubprogram(name: "memset", scope: !588, file: !588, line: 60, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !600, file: !580, line: 23)
!600 = !DISubprogram(name: "strcat", scope: !601, file: !601, line: 90, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\string.h", directory: "", checksumkind: CSK_MD5, checksum: "a8fd7b5a59220ef5a365db276a1f809d")
!602 = !DISubroutineType(types: !603)
!603 = !{!337, !337, !243}
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !605, file: !580, line: 23)
!605 = !DISubprogram(name: "strchr", linkageName: "?strchr@@YAPEADQEADH@Z", scope: !601, file: !601, line: 504, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!606 = !DISubroutineType(types: !607)
!607 = !{!337, !565, !86}
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !609, file: !580, line: 23)
!609 = !DISubprogram(name: "strcmp", scope: !601, file: !601, line: 100, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !611, file: !580, line: 24)
!611 = !DISubprogram(name: "strcoll", scope: !601, file: !601, line: 112, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !613, file: !580, line: 24)
!613 = !DISubprogram(name: "strcpy", scope: !601, file: !601, line: 133, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !615, file: !580, line: 24)
!615 = !DISubprogram(name: "strcspn", scope: !601, file: !601, line: 141, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DISubroutineType(types: !617)
!617 = !{!206, !243, !243}
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !619, file: !580, line: 25)
!619 = !DISubprogram(name: "strerror", scope: !601, file: !601, line: 182, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!620 = !DISubroutineType(types: !621)
!621 = !{!337, !39}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !623, file: !580, line: 25)
!623 = !DISubprogram(name: "strlen", scope: !601, file: !601, line: 219, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!624 = !DISubroutineType(types: !625)
!625 = !{!206, !243}
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !627, file: !580, line: 25)
!627 = !DISubprogram(name: "strncat", scope: !601, file: !601, line: 266, type: !628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!628 = !DISubroutineType(types: !629)
!629 = !{!337, !337, !243, !206}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !631, file: !580, line: 26)
!631 = !DISubprogram(name: "strncmp", scope: !601, file: !601, line: 275, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!632 = !DISubroutineType(types: !633)
!633 = !{!39, !243, !243, !206}
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !635, file: !580, line: 26)
!635 = !DISubprogram(name: "strncpy", scope: !601, file: !601, line: 338, type: !628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !637, file: !580, line: 26)
!637 = !DISubprogram(name: "strpbrk", linkageName: "?strpbrk@@YAPEADQEADQEBD@Z", scope: !601, file: !601, line: 510, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!638 = !DISubroutineType(types: !639)
!639 = !{!337, !565, !454}
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !641, file: !580, line: 27)
!641 = !DISubprogram(name: "strrchr", linkageName: "?strrchr@@YAPEADQEADH@Z", scope: !601, file: !601, line: 516, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !643, file: !580, line: 27)
!643 = !DISubprogram(name: "strspn", scope: !601, file: !601, line: 434, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !645, file: !580, line: 27)
!645 = !DISubprogram(name: "strstr", linkageName: "?strstr@@YAPEADQEADQEBD@Z", scope: !601, file: !601, line: 522, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !647, file: !580, line: 28)
!647 = !DISubprogram(name: "strtok", scope: !601, file: !601, line: 440, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !649, file: !580, line: 28)
!649 = !DISubprogram(name: "strxfrm", scope: !601, file: !601, line: 483, type: !650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!650 = !DISubroutineType(types: !651)
!651 = !{!206, !337, !243, !206}
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !653, file: !654, line: 23)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Mbstatet", file: !654, line: 17, baseType: !655)
!654 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\cwchar", directory: "", checksumkind: CSK_MD5, checksum: "d466970a60ca9c744c37caca98644ad9")
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !407, line: 537, baseType: !406)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !655, file: !654, line: 25)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !206, file: !654, line: 25)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !659, file: !654, line: 25)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !660, line: 22, flags: DIFlagFwdDecl, identifier: ".?AUtm@@")
!660 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\corecrt_wtime.h", directory: "", checksumkind: CSK_MD5, checksum: "5bfafdd619092433d7208882a2440138")
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !662, file: !654, line: 25)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !407, line: 511, baseType: !412)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !664, file: !654, line: 27)
!664 = !DISubprogram(name: "btowc", scope: !665, file: !665, line: 58, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!665 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "fc04f05ba302122d10ed7a6130e21446")
!666 = !DISubroutineType(types: !667)
!667 = !{!662, !39}
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !669, file: !654, line: 27)
!669 = !DISubprogram(name: "fgetwc", scope: !402, file: !402, line: 48, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!670 = !DISubroutineType(types: !671)
!671 = !{!662, !423}
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !673, file: !654, line: 27)
!673 = !DISubprogram(name: "fgetws", scope: !402, file: !402, line: 76, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DISubroutineType(types: !675)
!675 = !{!309, !309, !39, !423}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !677, file: !654, line: 27)
!677 = !DISubprogram(name: "fputwc", scope: !402, file: !402, line: 56, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!678 = !DISubroutineType(types: !679)
!679 = !{!662, !310, !423}
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !681, file: !654, line: 28)
!681 = !DISubprogram(name: "fputws", scope: !402, file: !402, line: 83, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!682 = !DISubroutineType(types: !683)
!683 = !{!39, !351, !423}
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !685, file: !654, line: 28)
!685 = !DISubprogram(name: "fwide", scope: !665, file: !665, line: 180, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!686 = !DISubroutineType(types: !687)
!687 = !{!39, !423, !39}
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !689, file: !654, line: 28)
!689 = !DISubprogram(name: "fwprintf", scope: !402, file: !402, line: 491, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!690 = !DISubroutineType(types: !691)
!691 = !{!39, !453, !692, null}
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !694, file: !654, line: 29)
!694 = !DISubprogram(name: "fwscanf", scope: !402, file: !402, line: 853, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !696, file: !654, line: 29)
!696 = !DISubprogram(name: "getwc", scope: !402, file: !402, line: 66, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !698, file: !654, line: 29)
!698 = !DISubprogram(name: "getwchar", scope: !402, file: !402, line: 71, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!699 = !DISubroutineType(types: !700)
!700 = !{!662}
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !702, file: !654, line: 30)
!702 = !DISubprogram(name: "mbrlen", scope: !665, file: !665, line: 62, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!703 = !DISubroutineType(types: !704)
!704 = !{!206, !243, !206, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !707, file: !654, line: 30)
!707 = !DISubprogram(name: "mbrtowc", scope: !665, file: !665, line: 68, type: !708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!708 = !DISubroutineType(types: !709)
!709 = !{!206, !309, !243, !206, !705}
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !711, file: !654, line: 30)
!711 = !DISubprogram(name: "mbsrtowcs", scope: !665, file: !665, line: 95, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{!206, !309, !714, !206, !705}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !716, file: !654, line: 31)
!716 = !DISubprogram(name: "mbsinit", scope: !665, file: !665, line: 189, type: !717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!717 = !DISubroutineType(types: !718)
!718 = !{!39, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !722, file: !654, line: 31)
!722 = !DISubprogram(name: "putwc", scope: !402, file: !402, line: 102, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !724, file: !654, line: 31)
!724 = !DISubprogram(name: "putwchar", scope: !402, file: !402, line: 108, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!725 = !DISubroutineType(types: !726)
!726 = !{!662, !310}
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !728, file: !654, line: 32)
!728 = !DISubprogram(name: "swprintf", linkageName: "?swprintf@@YAHQEA_WQEB_WZZ", scope: !402, file: !402, line: 1822, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!729 = !DISubroutineType(types: !730)
!730 = !{!39, !731, !692, null}
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !733, file: !654, line: 32)
!733 = !DISubprogram(name: "swscanf", scope: !402, file: !402, line: 2039, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DISubroutineType(types: !735)
!735 = !{!39, !692, !692, null}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !737, file: !654, line: 32)
!737 = !DISubprogram(name: "ungetwc", scope: !402, file: !402, line: 118, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!738 = !DISubroutineType(types: !739)
!739 = !{!662, !662, !423}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !741, file: !654, line: 33)
!741 = !DISubprogram(name: "vfwprintf", scope: !402, file: !402, line: 311, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DISubroutineType(types: !743)
!743 = !{!39, !453, !692, !551}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !745, file: !654, line: 33)
!745 = !DISubprogram(name: "vswprintf", linkageName: "?vswprintf@@YAHQEA_WQEB_WPEAD@Z", scope: !402, file: !402, line: 1837, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!746 = !DISubroutineType(types: !747)
!747 = !{!39, !731, !692, !551}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !749, file: !654, line: 33)
!749 = !DISubprogram(name: "vwprintf", scope: !402, file: !402, line: 401, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!750 = !DISubroutineType(types: !751)
!751 = !{!39, !692, !551}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !753, file: !654, line: 34)
!753 = !DISubprogram(name: "wcrtomb", scope: !665, file: !665, line: 121, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DISubroutineType(types: !755)
!755 = !{!206, !337, !310, !705}
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !757, file: !654, line: 34)
!757 = !DISubprogram(name: "wprintf", scope: !402, file: !402, line: 605, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubroutineType(types: !759)
!759 = !{!39, !692, null}
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !761, file: !654, line: 34)
!761 = !DISubprogram(name: "wscanf", scope: !402, file: !402, line: 930, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !763, file: !654, line: 35)
!763 = !DISubprogram(name: "wcsrtombs", scope: !665, file: !665, line: 148, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!764 = !DISubroutineType(types: !765)
!765 = !{!206, !337, !766, !206, !705}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !768, file: !654, line: 35)
!768 = !DISubprogram(name: "wcstol", scope: !769, file: !769, line: 130, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!769 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\corecrt_wstdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "ab95f0c4fbd511f11f19df46f031e299")
!770 = !DISubroutineType(types: !771)
!771 = !{!222, !351, !772, !39}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !774, file: !654, line: 35)
!774 = !DISubprogram(name: "wcscat", scope: !775, file: !775, line: 100, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\corecrt_wstring.h", directory: "", checksumkind: CSK_MD5, checksum: "1832d8775d100c0459719c5514894d53")
!776 = !DISubroutineType(types: !777)
!777 = !{!309, !309, !351}
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !779, file: !654, line: 36)
!779 = !DISubprogram(name: "wcschr", linkageName: "?wcschr@@YAPEA_WPEA_W_W@Z", scope: !775, file: !775, line: 539, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!780 = !DISubroutineType(types: !781)
!781 = !{!309, !309, !310}
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !783, file: !654, line: 36)
!783 = !DISubprogram(name: "wcscmp", scope: !775, file: !775, line: 109, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!784 = !DISubroutineType(types: !785)
!785 = !{!39, !351, !351}
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !787, file: !654, line: 36)
!787 = !DISubprogram(name: "wcscoll", scope: !775, file: !775, line: 472, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !789, file: !654, line: 37)
!789 = !DISubprogram(name: "wcscpy", scope: !775, file: !775, line: 123, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !791, file: !654, line: 37)
!791 = !DISubprogram(name: "wcscspn", scope: !775, file: !775, line: 131, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!792 = !DISubroutineType(types: !793)
!793 = !{!206, !351, !351}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !795, file: !654, line: 37)
!795 = !DISubprogram(name: "wcslen", scope: !775, file: !775, line: 137, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DISubroutineType(types: !797)
!797 = !{!206, !351}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !799, file: !654, line: 38)
!799 = !DISubprogram(name: "wcsncat", scope: !775, file: !775, line: 183, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!800 = !DISubroutineType(types: !801)
!801 = !{!309, !309, !351, !206}
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !803, file: !654, line: 38)
!803 = !DISubprogram(name: "wcsncmp", scope: !775, file: !775, line: 192, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!804 = !DISubroutineType(types: !805)
!805 = !{!39, !351, !351, !206}
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !807, file: !654, line: 38)
!807 = !DISubprogram(name: "wcsncpy", scope: !775, file: !775, line: 205, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !809, file: !654, line: 39)
!809 = !DISubprogram(name: "wcspbrk", linkageName: "?wcspbrk@@YAPEA_WPEA_WPEB_W@Z", scope: !775, file: !775, line: 545, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !811, file: !654, line: 39)
!811 = !DISubprogram(name: "wcsrchr", linkageName: "?wcsrchr@@YAPEA_WPEA_W_W@Z", scope: !775, file: !775, line: 551, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !813, file: !654, line: 39)
!813 = !DISubprogram(name: "wcsspn", scope: !775, file: !775, line: 220, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !815, file: !654, line: 40)
!815 = !DISubprogram(name: "wcstod", scope: !769, file: !769, line: 117, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!816 = !DISubroutineType(types: !817)
!817 = !{!210, !351, !772}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !819, file: !654, line: 40)
!819 = !DISubprogram(name: "wcstoul", scope: !769, file: !769, line: 160, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!820 = !DISubroutineType(types: !821)
!821 = !{!346, !351, !772, !39}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !823, file: !654, line: 40)
!823 = !DISubprogram(name: "wcsstr", linkageName: "?wcsstr@@YAPEA_WPEA_WPEB_W@Z", scope: !775, file: !775, line: 558, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !825, file: !654, line: 41)
!825 = !DISubprogram(name: "wcstok", linkageName: "?wcstok@@YAPEA_WPEA_WPEB_W@Z", scope: !775, file: !775, line: 261, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !827, file: !654, line: 41)
!827 = !DISubprogram(name: "wcsxfrm", scope: !775, file: !775, line: 456, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!828 = !DISubroutineType(types: !829)
!829 = !{!206, !309, !351, !206}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !831, file: !654, line: 41)
!831 = !DISubprogram(name: "wctob", scope: !665, file: !665, line: 156, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!832 = !DISubroutineType(types: !833)
!833 = !{!39, !662}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !835, file: !654, line: 42)
!835 = !DISubprogram(name: "wmemchr", linkageName: "?wmemchr@@YAPEA_WPEA_W_W_K@Z", scope: !665, file: !665, line: 268, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!836 = !DISubroutineType(types: !837)
!837 = !{!309, !309, !310, !206}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !839, file: !654, line: 42)
!839 = !DISubprogram(name: "wmemcmp", scope: !665, file: !665, line: 209, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !841, file: !654, line: 42)
!841 = !DISubprogram(name: "wmemcpy", scope: !665, file: !665, line: 225, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !843, file: !654, line: 43)
!843 = !DISubprogram(name: "wmemmove", scope: !665, file: !665, line: 238, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !845, file: !654, line: 43)
!845 = !DISubprogram(name: "wmemset", scope: !665, file: !665, line: 252, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !847, file: !654, line: 43)
!847 = !DISubprogram(name: "wcsftime", scope: !660, file: !660, line: 65, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!848 = !DISubroutineType(types: !849)
!849 = !{!206, !309, !206, !351, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !853, file: !654, line: 45)
!853 = !DISubprogram(name: "vfwscanf", scope: !402, file: !402, line: 728, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !855, file: !654, line: 45)
!855 = !DISubprogram(name: "vswscanf", scope: !402, file: !402, line: 1921, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!856 = !DISubroutineType(types: !857)
!857 = !{!39, !351, !351, !551}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !859, file: !654, line: 45)
!859 = !DISubprogram(name: "vwscanf", scope: !402, file: !402, line: 790, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !861, file: !654, line: 46)
!861 = !DISubprogram(name: "wcstof", scope: !769, file: !769, line: 203, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DISubroutineType(types: !863)
!863 = !{!380, !351, !772}
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !865, file: !654, line: 46)
!865 = !DISubprogram(name: "wcstold", scope: !769, file: !769, line: 190, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = !DISubroutineType(types: !867)
!867 = !{!232, !351, !772}
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !869, file: !654, line: 47)
!869 = !DISubprogram(name: "wcstoll", scope: !769, file: !769, line: 145, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!870 = !DISubroutineType(types: !871)
!871 = !{!6, !351, !772, !39}
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !873, file: !654, line: 47)
!873 = !DISubprogram(name: "wcstoull", scope: !769, file: !769, line: 175, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DISubroutineType(types: !875)
!875 = !{!207, !351, !772, !39}
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !877, file: !880, line: 18)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !878, line: 17, baseType: !879)
!878 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "0fc37b3d4e79690c027c09679bee81e8")
!879 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!880 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\cstdint", directory: "", checksumkind: CSK_MD5, checksum: "5a933c6fe5f11e462a816a39b5d6b493")
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !882, file: !880, line: 18)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !878, line: 18, baseType: !883)
!883 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !885, file: !880, line: 19)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !878, line: 19, baseType: !39)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !887, file: !880, line: 19)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !878, line: 20, baseType: !6)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !889, file: !880, line: 20)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !878, line: 21, baseType: !890)
!890 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !892, file: !880, line: 20)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !878, line: 22, baseType: !412)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !894, file: !880, line: 21)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !878, line: 23, baseType: !331)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !896, file: !880, line: 21)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !878, line: 24, baseType: !207)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !898, file: !880, line: 23)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !878, line: 26, baseType: !879)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !900, file: !880, line: 23)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !878, line: 27, baseType: !883)
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !902, file: !880, line: 24)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !878, line: 28, baseType: !39)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !904, file: !880, line: 24)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !878, line: 29, baseType: !6)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !906, file: !880, line: 25)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !878, line: 30, baseType: !890)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !908, file: !880, line: 25)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !878, line: 31, baseType: !412)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !910, file: !880, line: 26)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !878, line: 32, baseType: !331)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !912, file: !880, line: 26)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !878, line: 33, baseType: !207)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !914, file: !880, line: 28)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !878, line: 35, baseType: !879)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !916, file: !880, line: 28)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !878, line: 36, baseType: !39)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !918, file: !880, line: 29)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !878, line: 37, baseType: !39)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !920, file: !880, line: 29)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !878, line: 38, baseType: !6)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !922, file: !880, line: 30)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !878, line: 39, baseType: !890)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !924, file: !880, line: 30)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !878, line: 40, baseType: !331)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !926, file: !880, line: 31)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !878, line: 41, baseType: !331)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !928, file: !880, line: 31)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !878, line: 42, baseType: !207)
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !930, file: !880, line: 33)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !878, line: 44, baseType: !6)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !932, file: !880, line: 33)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !933, line: 182, baseType: !6)
!933 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\vcruntime.h", directory: "", checksumkind: CSK_MD5, checksum: "8f4b4431871389e3e9dfceb5afaefc9e")
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !935, file: !880, line: 34)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !878, line: 45, baseType: !207)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !937, file: !880, line: 34)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !552, line: 28, baseType: !207)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !229, file: !939, line: 628)
!939 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\cmath", directory: "", checksumkind: CSK_MD5, checksum: "8dbbc5d2314452a9fb87ea0e7b5e2c90")
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !941, file: !939, line: 633)
!941 = !DISubprogram(name: "modf", linkageName: "?modf@@YAOOPEAO@Z", scope: !939, file: !939, line: 518, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!942 = !DISubroutineType(types: !943)
!943 = !{!232, !232, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !946, file: !939, line: 637)
!946 = !DISubprogram(name: "acosf", scope: !240, file: !240, line: 611, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DISubroutineType(types: !948)
!948 = !{!380, !380}
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !950, file: !939, line: 637)
!950 = !DISubprogram(name: "asinf", scope: !240, file: !240, line: 612, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !952, file: !939, line: 638)
!952 = !DISubprogram(name: "atanf", scope: !240, file: !240, line: 614, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !954, file: !939, line: 638)
!954 = !DISubprogram(name: "atan2f", scope: !240, file: !240, line: 613, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DISubroutineType(types: !956)
!956 = !{!380, !380, !380}
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !958, file: !939, line: 638)
!958 = !DISubprogram(name: "ceilf", scope: !240, file: !240, line: 615, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !960, file: !939, line: 639)
!960 = !DISubprogram(name: "cosf", scope: !240, file: !240, line: 616, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !962, file: !939, line: 639)
!962 = !DISubprogram(name: "coshf", scope: !240, file: !240, line: 617, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !964, file: !939, line: 639)
!964 = !DISubprogram(name: "expf", scope: !240, file: !240, line: 618, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !966, file: !939, line: 640)
!966 = !DISubprogram(name: "fabsf", scope: !240, file: !240, line: 670, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !968, file: !939, line: 640)
!968 = !DISubprogram(name: "floorf", scope: !240, file: !240, line: 679, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !970, file: !939, line: 640)
!970 = !DISubprogram(name: "fmodf", scope: !240, file: !240, line: 680, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !972, file: !939, line: 641)
!972 = !DISubprogram(name: "frexpf", scope: !240, file: !240, line: 696, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DISubroutineType(types: !974)
!974 = !{!380, !380, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !977, file: !939, line: 641)
!977 = !DISubprogram(name: "ldexpf", scope: !240, file: !240, line: 706, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DISubroutineType(types: !979)
!979 = !{!380, !380, !39}
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !981, file: !939, line: 641)
!981 = !DISubprogram(name: "logf", scope: !240, file: !240, line: 714, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !983, file: !939, line: 642)
!983 = !DISubprogram(name: "log10f", scope: !240, file: !240, line: 713, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !985, file: !939, line: 642)
!985 = !DISubprogram(name: "modff", scope: !240, file: !240, line: 715, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DISubroutineType(types: !987)
!987 = !{!380, !380, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !990, file: !939, line: 642)
!990 = !DISubprogram(name: "powf", scope: !240, file: !240, line: 716, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !992, file: !939, line: 643)
!992 = !DISubprogram(name: "sinf", scope: !240, file: !240, line: 717, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !994, file: !939, line: 643)
!994 = !DISubprogram(name: "sinhf", scope: !240, file: !240, line: 718, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !996, file: !939, line: 643)
!996 = !DISubprogram(name: "sqrtf", scope: !240, file: !240, line: 719, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !998, file: !939, line: 644)
!998 = !DISubprogram(name: "tanf", scope: !240, file: !240, line: 720, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1000, file: !939, line: 644)
!1000 = !DISubprogram(name: "tanhf", scope: !240, file: !240, line: 721, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1002, file: !939, line: 646)
!1002 = !DISubprogram(name: "acosl", scope: !240, file: !240, line: 777, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1004, file: !939, line: 646)
!1004 = !DISubprogram(name: "asinl", scope: !240, file: !240, line: 784, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1006, file: !939, line: 647)
!1006 = !DISubprogram(name: "atanl", scope: !240, file: !240, line: 796, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1008, file: !939, line: 647)
!1008 = !DISubprogram(name: "atan2l", scope: !240, file: !240, line: 789, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!232, !232, !232}
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1012, file: !939, line: 647)
!1012 = !DISubprogram(name: "ceill", scope: !240, file: !240, line: 803, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1014, file: !939, line: 648)
!1014 = !DISubprogram(name: "cosl", scope: !240, file: !240, line: 825, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1016, file: !939, line: 648)
!1016 = !DISubprogram(name: "coshl", scope: !240, file: !240, line: 820, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1018, file: !939, line: 648)
!1018 = !DISubprogram(name: "expl", scope: !240, file: !240, line: 833, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1020, file: !939, line: 649)
!1020 = !DISubprogram(name: "fabsl", scope: !240, file: !240, line: 841, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1022, file: !939, line: 649)
!1022 = !DISubprogram(name: "floorl", scope: !240, file: !240, line: 848, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1024, file: !939, line: 649)
!1024 = !DISubprogram(name: "fmodl", scope: !240, file: !240, line: 857, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1026, file: !939, line: 650)
!1026 = !DISubprogram(name: "frexpl", scope: !240, file: !240, line: 862, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!232, !232, !975}
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1030, file: !939, line: 650)
!1030 = !DISubprogram(name: "ldexpl", scope: !240, file: !240, line: 879, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!232, !232, !39}
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1034, file: !939, line: 650)
!1034 = !DISubprogram(name: "logl", scope: !240, file: !240, line: 888, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1036, file: !939, line: 651)
!1036 = !DISubprogram(name: "log10l", scope: !240, file: !240, line: 893, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1038, file: !939, line: 651)
!1038 = !DISubprogram(name: "modfl", scope: !240, file: !240, line: 904, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1040, file: !939, line: 651)
!1040 = !DISubprogram(name: "powl", scope: !240, file: !240, line: 917, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1042, file: !939, line: 652)
!1042 = !DISubprogram(name: "sinl", scope: !240, file: !240, line: 934, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1044, file: !939, line: 652)
!1044 = !DISubprogram(name: "sinhl", scope: !240, file: !240, line: 929, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1046, file: !939, line: 652)
!1046 = !DISubprogram(name: "sqrtl", scope: !240, file: !240, line: 939, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1048, file: !939, line: 653)
!1048 = !DISubprogram(name: "tanl", scope: !240, file: !240, line: 949, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1050, file: !939, line: 653)
!1050 = !DISubprogram(name: "tanhl", scope: !240, file: !240, line: 944, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1052, file: !939, line: 655)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !240, line: 61, baseType: !380)
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1054, file: !939, line: 655)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !240, line: 62, baseType: !210)
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1056, file: !939, line: 667)
!1056 = !DISubprogram(name: "nan", scope: !240, file: !240, line: 526, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1058, file: !939, line: 671)
!1058 = !DISubprogram(name: "acoshf", scope: !240, file: !240, line: 545, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1060, file: !939, line: 671)
!1060 = !DISubprogram(name: "asinhf", scope: !240, file: !240, line: 546, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1062, file: !939, line: 671)
!1062 = !DISubprogram(name: "atanhf", scope: !240, file: !240, line: 547, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1064, file: !939, line: 672)
!1064 = !DISubprogram(name: "cbrtf", scope: !240, file: !240, line: 548, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1066, file: !939, line: 672)
!1066 = !DISubprogram(name: "erff", scope: !240, file: !240, line: 552, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1068, file: !939, line: 672)
!1068 = !DISubprogram(name: "erfcf", scope: !240, file: !240, line: 553, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1070, file: !939, line: 673)
!1070 = !DISubprogram(name: "expm1f", scope: !240, file: !240, line: 554, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1072, file: !939, line: 673)
!1072 = !DISubprogram(name: "exp2f", scope: !240, file: !240, line: 555, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1074, file: !939, line: 674)
!1074 = !DISubprogram(name: "hypotf", scope: !240, file: !240, line: 701, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1076, file: !939, line: 674)
!1076 = !DISubprogram(name: "ilogbf", scope: !240, file: !240, line: 561, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!39, !380}
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1080, file: !939, line: 674)
!1080 = !DISubprogram(name: "lgammaf", scope: !240, file: !240, line: 562, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1082, file: !939, line: 675)
!1082 = !DISubprogram(name: "log1pf", scope: !240, file: !240, line: 565, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1084, file: !939, line: 675)
!1084 = !DISubprogram(name: "log2f", scope: !240, file: !240, line: 566, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1086, file: !939, line: 675)
!1086 = !DISubprogram(name: "logbf", scope: !240, file: !240, line: 567, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1088, file: !939, line: 676)
!1088 = !DISubprogram(name: "llrintf", scope: !240, file: !240, line: 563, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!6, !380}
!1091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1092, file: !939, line: 676)
!1092 = !DISubprogram(name: "lrintf", scope: !240, file: !240, line: 568, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!222, !380}
!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1096, file: !939, line: 676)
!1096 = !DISubprogram(name: "nearbyintf", scope: !240, file: !240, line: 571, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1098, file: !939, line: 677)
!1098 = !DISubprogram(name: "rintf", scope: !240, file: !240, line: 576, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1100, file: !939, line: 677)
!1100 = !DISubprogram(name: "llroundf", scope: !240, file: !240, line: 564, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1102, file: !939, line: 677)
!1102 = !DISubprogram(name: "lroundf", scope: !240, file: !240, line: 569, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1104, file: !939, line: 678)
!1104 = !DISubprogram(name: "fdimf", scope: !240, file: !240, line: 556, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1106, file: !939, line: 678)
!1106 = !DISubprogram(name: "fmaf", scope: !240, file: !240, line: 557, type: !1107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!380, !380, !380, !380}
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1110, file: !939, line: 678)
!1110 = !DISubprogram(name: "fmaxf", scope: !240, file: !240, line: 558, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1112, file: !939, line: 678)
!1112 = !DISubprogram(name: "fminf", scope: !240, file: !240, line: 559, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1114, file: !939, line: 679)
!1114 = !DISubprogram(name: "roundf", scope: !240, file: !240, line: 577, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1116, file: !939, line: 679)
!1116 = !DISubprogram(name: "truncf", scope: !240, file: !240, line: 581, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1118, file: !939, line: 680)
!1118 = !DISubprogram(name: "remainderf", scope: !240, file: !240, line: 574, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1120, file: !939, line: 680)
!1120 = !DISubprogram(name: "remquof", scope: !240, file: !240, line: 575, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!380, !380, !380, !975}
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1124, file: !939, line: 681)
!1124 = !DISubprogram(name: "copysignf", scope: !240, file: !240, line: 550, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1126, file: !939, line: 681)
!1126 = !DISubprogram(name: "nanf", scope: !240, file: !240, line: 570, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!380, !243}
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1130, file: !939, line: 682)
!1130 = !DISubprogram(name: "nextafterf", scope: !240, file: !240, line: 572, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1132, file: !939, line: 682)
!1132 = !DISubprogram(name: "scalbnf", scope: !240, file: !240, line: 579, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1134, file: !939, line: 682)
!1134 = !DISubprogram(name: "scalblnf", scope: !240, file: !240, line: 578, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!380, !380, !222}
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1138, file: !939, line: 683)
!1138 = !DISubprogram(name: "nexttowardf", scope: !240, file: !240, line: 573, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!380, !380, !232}
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1142, file: !939, line: 683)
!1142 = !DISubprogram(name: "tgammaf", scope: !240, file: !240, line: 580, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1144, file: !939, line: 685)
!1144 = !DISubprogram(name: "acoshl", scope: !240, file: !240, line: 775, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1146, file: !939, line: 685)
!1146 = !DISubprogram(name: "asinhl", scope: !240, file: !240, line: 782, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1148, file: !939, line: 685)
!1148 = !DISubprogram(name: "atanhl", scope: !240, file: !240, line: 794, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1150, file: !939, line: 686)
!1150 = !DISubprogram(name: "cbrtl", scope: !240, file: !240, line: 801, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1152, file: !939, line: 686)
!1152 = !DISubprogram(name: "erfl", scope: !240, file: !240, line: 830, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1154, file: !939, line: 686)
!1154 = !DISubprogram(name: "erfcl", scope: !240, file: !240, line: 831, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1156, file: !939, line: 687)
!1156 = !DISubprogram(name: "expm1l", scope: !240, file: !240, line: 839, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1158, file: !939, line: 687)
!1158 = !DISubprogram(name: "exp2l", scope: !240, file: !240, line: 838, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1160, file: !939, line: 688)
!1160 = !DISubprogram(name: "hypotl", scope: !240, file: !240, line: 874, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1162, file: !939, line: 688)
!1162 = !DISubprogram(name: "ilogbl", scope: !240, file: !240, line: 867, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!39, !232}
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1166, file: !939, line: 688)
!1166 = !DISubprogram(name: "lgammal", scope: !240, file: !240, line: 884, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1168, file: !939, line: 689)
!1168 = !DISubprogram(name: "log1pl", scope: !240, file: !240, line: 898, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1170, file: !939, line: 689)
!1170 = !DISubprogram(name: "log2l", scope: !240, file: !240, line: 899, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1172, file: !939, line: 689)
!1172 = !DISubprogram(name: "logbl", scope: !240, file: !240, line: 900, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1174, file: !939, line: 690)
!1174 = !DISubprogram(name: "llrintl", scope: !240, file: !240, line: 885, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!6, !232}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1178, file: !939, line: 690)
!1178 = !DISubprogram(name: "lrintl", scope: !240, file: !240, line: 901, type: !1179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!222, !232}
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1182, file: !939, line: 690)
!1182 = !DISubprogram(name: "nearbyintl", scope: !240, file: !240, line: 913, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1184, file: !939, line: 691)
!1184 = !DISubprogram(name: "rintl", scope: !240, file: !240, line: 924, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1186, file: !939, line: 691)
!1186 = !DISubprogram(name: "llroundl", scope: !240, file: !240, line: 886, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1188, file: !939, line: 691)
!1188 = !DISubprogram(name: "lroundl", scope: !240, file: !240, line: 902, type: !1179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1190, file: !939, line: 692)
!1190 = !DISubprogram(name: "fdiml", scope: !240, file: !240, line: 846, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1192, file: !939, line: 692)
!1192 = !DISubprogram(name: "fmal", scope: !240, file: !240, line: 853, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!232, !232, !232, !232}
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1196, file: !939, line: 692)
!1196 = !DISubprogram(name: "fmaxl", scope: !240, file: !240, line: 854, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1198, file: !939, line: 692)
!1198 = !DISubprogram(name: "fminl", scope: !240, file: !240, line: 855, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1200, file: !939, line: 693)
!1200 = !DISubprogram(name: "roundl", scope: !240, file: !240, line: 925, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1202, file: !939, line: 693)
!1202 = !DISubprogram(name: "truncl", scope: !240, file: !240, line: 955, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1204, file: !939, line: 694)
!1204 = !DISubprogram(name: "remainderl", scope: !240, file: !240, line: 922, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1206, file: !939, line: 694)
!1206 = !DISubprogram(name: "remquol", scope: !240, file: !240, line: 923, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!232, !232, !232, !975}
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1210, file: !939, line: 695)
!1210 = !DISubprogram(name: "copysignl", scope: !240, file: !240, line: 813, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1212, file: !939, line: 695)
!1212 = !DISubprogram(name: "nanl", scope: !240, file: !240, line: 912, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!232, !243}
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1216, file: !939, line: 696)
!1216 = !DISubprogram(name: "nextafterl", scope: !240, file: !240, line: 914, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1218, file: !939, line: 696)
!1218 = !DISubprogram(name: "scalbnl", scope: !240, file: !240, line: 927, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1220, file: !939, line: 696)
!1220 = !DISubprogram(name: "scalblnl", scope: !240, file: !240, line: 926, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!232, !232, !222}
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1224, file: !939, line: 697)
!1224 = !DISubprogram(name: "nexttowardl", scope: !240, file: !240, line: 915, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1226, file: !939, line: 697)
!1226 = !DISubprogram(name: "tgammal", scope: !240, file: !240, line: 954, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1228, file: !939, line: 699)
!1228 = !DISubprogram(name: "fpclassify", linkageName: "?fpclassify@@YAHO@Z", scope: !240, file: !240, line: 300, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1230, file: !939, line: 699)
!1230 = !DISubprogram(name: "signbit", linkageName: "?signbit@@YA_NO@Z", scope: !240, file: !240, line: 315, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!32, !232}
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1234, file: !1236, line: 31)
!1234 = !DISubprogram(name: "terminate", scope: !1235, file: !1235, line: 29, type: !226, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1235 = !DIFile(filename: "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.17763.0\\ucrt\\corecrt_terminate.h", directory: "", checksumkind: CSK_MD5, checksum: "a4142e36929ada7899b97f854f7e0361")
!1236 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\exception", directory: "", checksumkind: CSK_MD5, checksum: "e65f27c7715d50087aa451938be7f864")
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1238, file: !1236, line: 34)
!1238 = !DISubprogram(name: "set_terminate", scope: !1235, file: !1235, line: 33, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1241, !1241}
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "terminate_handler", file: !1235, line: 18, baseType: !237)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1241, file: !1236, line: 35)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !200, entity: !1244, file: !1245, line: 115)
!1244 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", file: !1245, line: 65, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AVtype_info@@")
!1245 = !DIFile(filename: "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional\\VC\\Tools\\MSVC\\14.16.27023\\include\\vcruntime_typeinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "40ee825daf6cb7fa21ee5bb30ce470d5")
!1246 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !1247, file: !1249, line: 2283)
!1247 = !DINamespace(name: "ops_with_other_types", scope: !1248)
!1248 = !DINamespace(name: "ac", scope: null)
!1249 = !DIFile(filename: "C:/intelFPGA_pro\\22.3\\hls\\include\\HLS\\ac_int.h", directory: "", checksumkind: CSK_MD5, checksum: "025d7af1d025df4af0b0bf3f680aae4f")
!1250 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !1251, file: !1249, line: 2418)
!1251 = !DINamespace(name: "ac_intN", scope: null)
!1252 = !{!"-lmsvcprt"}
!1253 = !{i32 2, !"CodeView", i32 1}
!1254 = !{i32 2, !"Debug Info Version", i32 3}
!1255 = !{i32 1, !"wchar_size", i32 4}
!1256 = !{i32 7, !"PIC Level", i32 2}
!1257 = !{!"Intel(R) oneAPI DPC++ Compiler 2021.1 (YYYY.x.0.MMDD)"}
!1258 = distinct !DISubprogram(name: "`dynamic initializer for 's0'", scope: !3, file: !3, line: 40, type: !226, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!1259 = !DILocation(line: 40, column: 20, scope: !1258)
!1260 = distinct !DISubprogram(name: "`dynamic initializer for 's1'", scope: !3, file: !3, line: 40, type: !226, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!1261 = !DILocation(line: 40, column: 24, scope: !1260)
!1262 = distinct !DISubprogram(name: "`dynamic initializer for 's2'", scope: !3, file: !3, line: 40, type: !226, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!1263 = !DILocation(line: 40, column: 28, scope: !1262)
!1264 = distinct !DISubprogram(name: "adder", linkageName: "?adder@@YAXXZ", scope: !3, file: !3, line: 43, type: !226, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1265)
!1265 = !{!1266}
!1266 = !DILocalVariable(name: "tuple", scope: !1264, file: !3, line: 45, type: !36)
!1267 = !DILocation(line: 45, column: 5, scope: !1264)
!1268 = !DILocation(line: 45, column: 11, scope: !1264)
!1269 = !DILocation(line: 45, column: 22, scope: !1264)
!1270 = !DILocation(line: 47, column: 23, scope: !1264)
!1271 = !{!1272, !1273, i64 0}
!1272 = !{!"?AUTuple@@", !1273, i64 0, !1273, i64 4, !1273, i64 8}
!1273 = !{!"int", !1274, i64 0}
!1274 = !{!"omnipotent char", !1275, i64 0}
!1275 = !{!"Simple C++ TBAA"}
!1276 = !DILocation(line: 47, column: 33, scope: !1264)
!1277 = !{!1272, !1273, i64 4}
!1278 = !DILocation(line: 47, column: 25, scope: !1264)
!1279 = !DILocation(line: 47, column: 11, scope: !1264)
!1280 = !DILocation(line: 47, column: 15, scope: !1264)
!1281 = !{!1272, !1273, i64 8}
!1282 = !DILocation(line: 49, column: 8, scope: !1264)
!1283 = !DILocation(line: 50, column: 1, scope: !1264)
!1284 = distinct !DISubprogram(name: "write", linkageName: "?write@?$stream@UTuple@@$$V@ihc@@QEAAXAEBUTuple@@@Z", scope: !7, file: !8, line: 851, type: !139, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !138, retainedNodes: !1285)
!1285 = !{!1286, !1287}
!1286 = !DILocalVariable(name: "arg", arg: 2, scope: !1284, file: !8, line: 214, type: !45)
!1287 = !DILocalVariable(name: "this", arg: 1, scope: !1284, type: !1288, flags: DIFlagArtificial | DIFlagObjectPointer)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1289 = !{!1290, !1290, i64 0}
!1290 = !{!"any pointer", !1274, i64 0}
!1291 = !DILocation(line: 214, column: 24, scope: !1284)
!1292 = !DILocation(line: 0, scope: !1284)
!1293 = !DILocation(line: 852, column: 11, scope: !1284)
!1294 = !DILocation(line: 853, column: 40, scope: !1284)
!1295 = !DILocation(line: 853, column: 45, scope: !1284)
!1296 = !DILocation(line: 853, column: 3, scope: !1284)
!1297 = !DILocation(line: 857, column: 1, scope: !1284)
!1298 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 216, type: !321, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1299)
!1299 = !{!1300, !1301}
!1300 = !DILocalVariable(name: "tuple", scope: !1298, file: !3, line: 218, type: !36)
!1301 = !DILocalVariable(name: "res", scope: !1298, file: !3, line: 222, type: !36)
!1302 = !DILocation(line: 218, column: 5, scope: !1298)
!1303 = !DILocation(line: 218, column: 11, scope: !1298)
!1304 = !DILocation(line: 219, column: 11, scope: !1298)
!1305 = !DILocation(line: 219, column: 13, scope: !1298)
!1306 = !DILocation(line: 220, column: 11, scope: !1298)
!1307 = !DILocation(line: 220, column: 13, scope: !1298)
!1308 = !DILocation(line: 222, column: 5, scope: !1298)
!1309 = !DILocation(line: 222, column: 11, scope: !1298)
!1310 = !DILocation(line: 222, column: 17, scope: !1298)
!1311 = !DILocation(line: 229, column: 1, scope: !1298)
!1312 = !DILocation(line: 227, column: 5, scope: !1298)
!1313 = distinct !DISubprogram(name: "Tuple", linkageName: "??0Tuple@@QEAA@XZ", scope: !36, file: !3, line: 31, type: !1314, scopeLine: 31, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1317, retainedNodes: !1318)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1317 = !DISubprogram(name: "Tuple", scope: !36, type: !1314, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1318 = !{!1319}
!1319 = !DILocalVariable(name: "this", arg: 1, scope: !1313, type: !1320, flags: DIFlagArtificial | DIFlagObjectPointer)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1321 = !DILocation(line: 0, scope: !1313)
!1322 = !DILocation(line: 32, column: 9, scope: !1313)
!1323 = !DILocation(line: 33, column: 9, scope: !1313)
!1324 = !DILocation(line: 34, column: 9, scope: !1313)
!1325 = !DILocation(line: 31, column: 8, scope: !1313)
!1326 = distinct !DISubprogram(name: "checkIfUsesEmptyThenUsesPackets", linkageName: "?checkIfUsesEmptyThenUsesPackets@?$stream_checker@UTuple@@$0A@$0A@$0A@$0A@$0A@$0A@$00$00@ihc@@QEBAXXZ", scope: !97, file: !8, line: 98, type: !100, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !104, retainedNodes: !1327)
!1327 = !{!1328}
!1328 = !DILocalVariable(name: "this", arg: 1, scope: !1326, type: !1329, flags: DIFlagArtificial | DIFlagObjectPointer)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!1330 = !DILocation(line: 0, scope: !1326)
!1331 = !DILocation(line: 103, column: 3, scope: !1326)
!1332 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_main.cpp", scope: !3, file: !3, type: !1333, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!1333 = !DISubroutineType(types: !4)
!1334 = !DILocation(line: 0, scope: !1332)
!1335 = distinct !DISubprogram(name: "read", linkageName: "?read@?$stream@UTuple@@$$V@ihc@@QEAA?AUTuple@@_N@Z", scope: !7, file: !8, line: 840, type: !136, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !135, retainedNodes: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341}
!1337 = !DILocalVariable(name: "wait", arg: 2, scope: !1335, file: !8, line: 213, type: !32)
!1338 = !DILocalVariable(name: "this", arg: 1, scope: !1335, type: !1288, flags: DIFlagArtificial | DIFlagObjectPointer)
!1339 = !DILocalVariable(name: "sop", scope: !1335, file: !8, line: 842, type: !32)
!1340 = !DILocalVariable(name: "eop", scope: !1335, file: !8, line: 843, type: !32)
!1341 = !DILocalVariable(name: "emp", scope: !1335, file: !8, line: 844, type: !39)
!1342 = !{!1343, !1343, i64 0}
!1343 = !{!"bool", !1274, i64 0}
!1344 = !DILocation(line: 213, column: 16, scope: !1335)
!1345 = !DILocation(line: 0, scope: !1335)
!1346 = !DILocation(line: 842, column: 3, scope: !1335)
!1347 = !DILocation(line: 842, column: 8, scope: !1335)
!1348 = !DILocation(line: 843, column: 3, scope: !1335)
!1349 = !DILocation(line: 843, column: 8, scope: !1335)
!1350 = !DILocation(line: 844, column: 3, scope: !1335)
!1351 = !DILocation(line: 844, column: 7, scope: !1335)
!1352 = !{!1273, !1273, i64 0}
!1353 = !DILocation(line: 846, column: 16, scope: !1335)
!1354 = !DILocation(line: 845, column: 11, scope: !1335)
!1355 = !DILocation(line: 845, column: 10, scope: !1335)
!1356 = !{i64 0, i64 4, !1352, i64 4, i64 4, !1352, i64 8, i64 4, !1352}
!1357 = !DILocation(line: 849, column: 1, scope: !1335)
!1358 = distinct !DISubprogram(name: "streamer", linkageName: "?streamer@@YA?AUTuple@@AEAU1@@Z", scope: !3, file: !3, line: 202, type: !1359, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1362)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!36, !1361}
!1361 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !36, size: 64)
!1362 = !{!1363}
!1363 = !DILocalVariable(name: "tuple", arg: 1, scope: !1358, file: !3, line: 202, type: !1361)
!1364 = !{!"?streamer@@YA?AUTuple@@AEAU1@@Z", !4}
!1365 = !{!"pointer"}
!1366 = !{!"avalon_mm_agent"}
!1367 = !{i32 0}
!1368 = !{!"tuple"}
!1369 = !{!""}
!1370 = !{i32 1}
!1371 = !DILocation(line: 202, column: 69, scope: !1358)
!1372 = !DILocation(line: 205, column: 14, scope: !1358)
!1373 = !DILocation(line: 205, column: 8, scope: !1358)
!1374 = !DILocation(line: 207, column: 5, scope: !1358)
!1375 = !DILocation(line: 209, column: 13, scope: !1358)
!1376 = !DILocation(line: 209, column: 16, scope: !1358)
!1377 = !DILocation(line: 209, column: 5, scope: !1358)
!1378 = !DILocation(line: 209, column: 11, scope: !1358)
!1379 = !DILocation(line: 212, column: 12, scope: !1358)
!1380 = !DILocation(line: 212, column: 5, scope: !1358)
