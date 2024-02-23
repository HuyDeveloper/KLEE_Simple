; ModuleID = 'generated_code.bc'
source_filename = "generated_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type <{ %struct._IO_FILE*, i8, [7 x i8] }>
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base.base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base.base" = type { %"class.std::locale::facet.base" }
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

$_Z8saveFileIiEvT_Pc = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"get_sign.output.txt\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"get_sign.input.txt\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_generated_code.c, i8* null }]
@__dso_handle = hidden global i8* null, align 8, !dbg !7

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z8get_signi(i32 noundef %0) #0 !dbg !916 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !919, metadata !DIExpression()), !dbg !920
  %4 = load i32, i32* %3, align 4, !dbg !921
  %5 = icmp eq i32 %4, 0, !dbg !923
  br i1 %5, label %6, label %7, !dbg !924

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !925
  br label %12, !dbg !925

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !926
  %9 = icmp slt i32 %8, 0, !dbg !928
  br i1 %9, label %10, label %11, !dbg !929

10:                                               ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !930
  br label %12, !dbg !930

11:                                               ; preds = %7
  store i32 1, i32* %2, align 4, !dbg !931
  br label %12, !dbg !931

12:                                               ; preds = %11, %10, %6
  %13 = load i32, i32* %2, align 4, !dbg !932
  ret i32 %13, !dbg !932
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #2 section ".text.startup" !dbg !933 {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !934
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* bitcast (i8** @__dso_handle to i8*)) #5, !dbg !936
  ret void, !dbg !934
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #5

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #6 !dbg !937 {
  call void @klee.ctor_stub()
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !938, metadata !DIExpression()), !dbg !939
  %4 = bitcast i32* %2 to i8*, !dbg !940
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %3, metadata !942, metadata !DIExpression()), !dbg !943
  %5 = load i32, i32* %2, align 4, !dbg !944
  %6 = call noundef i32 @_Z8get_signi(i32 noundef %5), !dbg !945
  store i32 %6, i32* %3, align 4, !dbg !946
  %7 = load i32, i32* %3, align 4, !dbg !947
  call void @_Z8saveFileIiEvT_Pc(i32 noundef %7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)), !dbg !948
  %8 = load i32, i32* %2, align 4, !dbg !949
  call void @_Z8saveFileIiEvT_Pc(i32 noundef %8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)), !dbg !950
  ret i32 0, !dbg !951
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_Z8saveFileIiEvT_Pc(i32 noundef %0, i8* noundef %1) #7 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !952 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %"class.std::basic_ofstream", align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !957, metadata !DIExpression()), !dbg !958
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !959, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.declare(metadata %"class.std::basic_ofstream"* %5, metadata !961, metadata !DIExpression()), !dbg !966
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %5), !dbg !966
  %8 = load i8*, i8** %4, align 8, !dbg !967
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %5, i8* noundef %8, i32 noundef 1)
          to label %9 unwind label %17, !dbg !968

9:                                                ; preds = %2
  %10 = bitcast %"class.std::basic_ofstream"* %5 to %"class.std::basic_ostream"*, !dbg !969
  %11 = load i32, i32* %3, align 4, !dbg !970
  %12 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %11)
          to label %13 unwind label %17, !dbg !971

13:                                               ; preds = %9
  %14 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
          to label %15 unwind label %17, !dbg !972

15:                                               ; preds = %13
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %5)
          to label %16 unwind label %17, !dbg !973

16:                                               ; preds = %15
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %5) #5, !dbg !974
  ret void, !dbg !974

17:                                               ; preds = %15, %13, %9, %2
  %18 = landingpad { i8*, i32 }
          cleanup, !dbg !974
  %19 = extractvalue { i8*, i32 } %18, 0, !dbg !974
  store i8* %19, i8** %6, align 8, !dbg !974
  %20 = extractvalue { i8*, i32 } %18, 1, !dbg !974
  store i32 %20, i32* %7, align 4, !dbg !974
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %5) #5, !dbg !974
  %21 = load i8*, i8** %6, align 8, !dbg !974
  %22 = load i32, i32* %7, align 4, !dbg !974
  %23 = insertvalue { i8*, i32 } undef, i8* %21, 0, !dbg !974
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1, !dbg !974
  resume { i8*, i32 } %24, !dbg !974
}

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248)) unnamed_addr #3

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248), i8* noundef, i32 noundef) #3

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #3

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248)) #3

; Function Attrs: nounwind
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248)) unnamed_addr #4

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_generated_code.c() #2 section ".text.startup" !dbg !975 {
  call void @__cxx_global_var_init(), !dbg !977
  ret void
}

define internal void @klee.ctor_stub() {
entry:
  call void @_GLOBAL__sub_I_generated_code.c()
  ret void
}

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!14, !9}
!llvm.module.flags = !{!908, !909, !910, !911, !912, !913, !914}
!llvm.ident = !{!915, !915}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__dso_handle", scope: !9, file: !12, line: 1, type: !13, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C89, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !11, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/suyoung02/klee/klee/runtime/Intrinsic/dso_handle.c", directory: "/home/suyoung02/klee/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "799d926119609be391e96d9eea15b872")
!11 = !{!7}
!12 = !DIFile(filename: "runtime/Intrinsic/dso_handle.c", directory: "/home/suyoung02/klee/klee", checksumkind: CSK_MD5, checksum: "799d926119609be391e96d9eea15b872")
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !15, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !29, globals: !30, imports: !31, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "generated_code.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "ca5ff61311d4d3e052838ac000ed3344")
!16 = !{!17}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Ios_Openmode", scope: !2, file: !5, line: 111, baseType: !18, size: 32, elements: !19, identifier: "_ZTSSt13_Ios_Openmode")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28}
!20 = !DIEnumerator(name: "_S_app", value: 1)
!21 = !DIEnumerator(name: "_S_ate", value: 2)
!22 = !DIEnumerator(name: "_S_bin", value: 4)
!23 = !DIEnumerator(name: "_S_in", value: 8)
!24 = !DIEnumerator(name: "_S_out", value: 16)
!25 = !DIEnumerator(name: "_S_trunc", value: 32)
!26 = !DIEnumerator(name: "_S_ios_openmode_end", value: 65536)
!27 = !DIEnumerator(name: "_S_ios_openmode_max", value: 2147483647)
!28 = !DIEnumerator(name: "_S_ios_openmode_min", value: -2147483648)
!29 = !{!6}
!30 = !{!0}
!31 = !{!32, !38, !42, !49, !53, !58, !60, !68, !72, !76, !89, !93, !97, !101, !105, !110, !114, !118, !122, !126, !134, !138, !142, !144, !148, !152, !157, !163, !167, !171, !173, !181, !185, !193, !195, !199, !203, !207, !211, !216, !221, !226, !227, !228, !229, !231, !232, !233, !234, !235, !236, !237, !239, !240, !241, !242, !243, !244, !245, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !291, !294, !299, !308, !313, !317, !321, !325, !329, !331, !333, !337, !343, !347, !353, !359, !361, !365, !369, !373, !377, !389, !391, !395, !399, !403, !405, !409, !413, !417, !419, !421, !425, !433, !437, !441, !445, !447, !453, !455, !461, !465, !469, !473, !477, !481, !485, !487, !489, !493, !497, !501, !503, !507, !511, !513, !515, !519, !523, !527, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !545, !549, !553, !560, !564, !567, !570, !573, !575, !577, !579, !582, !585, !588, !591, !594, !596, !601, !605, !608, !611, !613, !615, !617, !619, !622, !625, !628, !631, !634, !636, !640, !644, !649, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !683, !689, !694, !698, !700, !702, !704, !706, !713, !717, !721, !725, !729, !733, !738, !742, !744, !748, !754, !758, !763, !765, !767, !771, !775, !777, !779, !781, !783, !787, !789, !791, !795, !799, !803, !807, !811, !815, !817, !821, !825, !829, !833, !835, !837, !841, !845, !846, !847, !848, !849, !850, !856, !859, !860, !862, !864, !866, !868, !872, !874, !876, !878, !880, !882, !884, !886, !888, !892, !896, !898, !902, !906}
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !33, file: !37, line: 52)
!33 = !DISubprogram(name: "abs", scope: !34, file: !34, line: 848, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!34 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!35 = !DISubroutineType(types: !36)
!36 = !{!18, !18}
!37 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !39, file: !41, line: 127)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !34, line: 63, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!41 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !43, file: !41, line: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !34, line: 71, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !45, identifier: "_ZTS6ldiv_t")
!45 = !{!46, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !44, file: !34, line: 69, baseType: !47, size: 64)
!47 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !44, file: !34, line: 70, baseType: !47, size: 64, offset: 64)
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !50, file: !41, line: 130)
!50 = !DISubprogram(name: "abort", scope: !34, file: !34, line: 598, type: !51, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!51 = !DISubroutineType(types: !52)
!52 = !{null}
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !54, file: !41, line: 134)
!54 = !DISubprogram(name: "atexit", scope: !34, file: !34, line: 602, type: !55, flags: DIFlagPrototyped, spFlags: 0)
!55 = !DISubroutineType(types: !56)
!56 = !{!18, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !59, file: !41, line: 137)
!59 = !DISubprogram(name: "at_quick_exit", scope: !34, file: !34, line: 607, type: !55, flags: DIFlagPrototyped, spFlags: 0)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !61, file: !41, line: 140)
!61 = !DISubprogram(name: "atof", scope: !34, file: !34, line: 102, type: !62, flags: DIFlagPrototyped, spFlags: 0)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !65}
!64 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !69, file: !41, line: 141)
!69 = !DISubprogram(name: "atoi", scope: !34, file: !34, line: 105, type: !70, flags: DIFlagPrototyped, spFlags: 0)
!70 = !DISubroutineType(types: !71)
!71 = !{!18, !65}
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !73, file: !41, line: 142)
!73 = !DISubprogram(name: "atol", scope: !34, file: !34, line: 108, type: !74, flags: DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{!47, !65}
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !77, file: !41, line: 143)
!77 = !DISubprogram(name: "bsearch", scope: !34, file: !34, line: 828, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DISubroutineType(types: !79)
!79 = !{!13, !80, !80, !82, !82, !85}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 46, baseType: !84)
!83 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !34, line: 816, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!18, !80, !80}
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !90, file: !41, line: 144)
!90 = !DISubprogram(name: "calloc", scope: !34, file: !34, line: 543, type: !91, flags: DIFlagPrototyped, spFlags: 0)
!91 = !DISubroutineType(types: !92)
!92 = !{!13, !82, !82}
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !94, file: !41, line: 145)
!94 = !DISubprogram(name: "div", scope: !34, file: !34, line: 860, type: !95, flags: DIFlagPrototyped, spFlags: 0)
!95 = !DISubroutineType(types: !96)
!96 = !{!39, !18, !18}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !98, file: !41, line: 146)
!98 = !DISubprogram(name: "exit", scope: !34, file: !34, line: 624, type: !99, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !18}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !102, file: !41, line: 147)
!102 = !DISubprogram(name: "free", scope: !34, file: !34, line: 555, type: !103, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !13}
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !106, file: !41, line: 148)
!106 = !DISubprogram(name: "getenv", scope: !34, file: !34, line: 641, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !65}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !111, file: !41, line: 149)
!111 = !DISubprogram(name: "labs", scope: !34, file: !34, line: 849, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!112 = !DISubroutineType(types: !113)
!113 = !{!47, !47}
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !115, file: !41, line: 150)
!115 = !DISubprogram(name: "ldiv", scope: !34, file: !34, line: 862, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!43, !47, !47}
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !119, file: !41, line: 151)
!119 = !DISubprogram(name: "malloc", scope: !34, file: !34, line: 540, type: !120, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!13, !82}
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !123, file: !41, line: 153)
!123 = !DISubprogram(name: "mblen", scope: !34, file: !34, line: 930, type: !124, flags: DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{!18, !65, !82}
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !127, file: !41, line: 154)
!127 = !DISubprogram(name: "mbstowcs", scope: !34, file: !34, line: 941, type: !128, flags: DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{!82, !130, !133, !82}
!130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!133 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !135, file: !41, line: 155)
!135 = !DISubprogram(name: "mbtowc", scope: !34, file: !34, line: 933, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{!18, !130, !133, !82}
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !139, file: !41, line: 157)
!139 = !DISubprogram(name: "qsort", scope: !34, file: !34, line: 838, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !13, !82, !82, !85}
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !143, file: !41, line: 160)
!143 = !DISubprogram(name: "quick_exit", scope: !34, file: !34, line: 630, type: !99, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !145, file: !41, line: 163)
!145 = !DISubprogram(name: "rand", scope: !34, file: !34, line: 454, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!18}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !149, file: !41, line: 164)
!149 = !DISubprogram(name: "realloc", scope: !34, file: !34, line: 551, type: !150, flags: DIFlagPrototyped, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{!13, !13, !82}
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !153, file: !41, line: 165)
!153 = !DISubprogram(name: "srand", scope: !34, file: !34, line: 456, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !156}
!156 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !158, file: !41, line: 166)
!158 = !DISubprogram(name: "strtod", scope: !34, file: !34, line: 118, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!64, !133, !161}
!161 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !164, file: !41, line: 167)
!164 = !DISubprogram(name: "strtol", scope: !34, file: !34, line: 177, type: !165, flags: DIFlagPrototyped, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!47, !133, !161, !18}
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !168, file: !41, line: 168)
!168 = !DISubprogram(name: "strtoul", scope: !34, file: !34, line: 181, type: !169, flags: DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{!84, !133, !161, !18}
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !172, file: !41, line: 169)
!172 = !DISubprogram(name: "system", scope: !34, file: !34, line: 791, type: !70, flags: DIFlagPrototyped, spFlags: 0)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !174, file: !41, line: 171)
!174 = !DISubprogram(name: "wcstombs", scope: !34, file: !34, line: 945, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!82, !177, !178, !82}
!177 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!178 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !182, file: !41, line: 172)
!182 = !DISubprogram(name: "wctomb", scope: !34, file: !34, line: 937, type: !183, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!18, !109, !132}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !187, file: !41, line: 200)
!186 = !DINamespace(name: "__gnu_cxx", scope: null)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !34, line: 81, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !189, identifier: "_ZTS7lldiv_t")
!189 = !{!190, !192}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !188, file: !34, line: 79, baseType: !191, size: 64)
!191 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !188, file: !34, line: 80, baseType: !191, size: 64, offset: 64)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !194, file: !41, line: 206)
!194 = !DISubprogram(name: "_Exit", scope: !34, file: !34, line: 636, type: !99, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !196, file: !41, line: 210)
!196 = !DISubprogram(name: "llabs", scope: !34, file: !34, line: 852, type: !197, flags: DIFlagPrototyped, spFlags: 0)
!197 = !DISubroutineType(types: !198)
!198 = !{!191, !191}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !200, file: !41, line: 216)
!200 = !DISubprogram(name: "lldiv", scope: !34, file: !34, line: 866, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!187, !191, !191}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !204, file: !41, line: 227)
!204 = !DISubprogram(name: "atoll", scope: !34, file: !34, line: 113, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{!191, !65}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !208, file: !41, line: 228)
!208 = !DISubprogram(name: "strtoll", scope: !34, file: !34, line: 201, type: !209, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{!191, !133, !161, !18}
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !212, file: !41, line: 229)
!212 = !DISubprogram(name: "strtoull", scope: !34, file: !34, line: 206, type: !213, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{!215, !133, !161, !18}
!215 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !217, file: !41, line: 231)
!217 = !DISubprogram(name: "strtof", scope: !34, file: !34, line: 124, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !133, !161}
!220 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !222, file: !41, line: 232)
!222 = !DISubprogram(name: "strtold", scope: !34, file: !34, line: 127, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !133, !161}
!225 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !187, file: !41, line: 240)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !194, file: !41, line: 242)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !196, file: !41, line: 244)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !230, file: !41, line: 245)
!230 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !186, file: !41, line: 213, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !200, file: !41, line: 246)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !204, file: !41, line: 248)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !217, file: !41, line: 249)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !208, file: !41, line: 250)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !212, file: !41, line: 251)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !222, file: !41, line: 252)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !50, file: !238, line: 38)
!238 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !54, file: !238, line: 39)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !98, file: !238, line: 40)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !59, file: !238, line: 43)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !143, file: !238, line: 46)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !39, file: !238, line: 51)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !43, file: !238, line: 52)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !246, file: !238, line: 54)
!246 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !2, file: !37, line: 103, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !249}
!249 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !61, file: !238, line: 55)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !69, file: !238, line: 56)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !73, file: !238, line: 57)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !77, file: !238, line: 58)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !90, file: !238, line: 59)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !230, file: !238, line: 60)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !102, file: !238, line: 61)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !106, file: !238, line: 62)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !111, file: !238, line: 63)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !115, file: !238, line: 64)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !119, file: !238, line: 65)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !123, file: !238, line: 67)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !127, file: !238, line: 68)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !135, file: !238, line: 69)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !139, file: !238, line: 71)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !145, file: !238, line: 72)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !149, file: !238, line: 73)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !153, file: !238, line: 74)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !158, file: !238, line: 75)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !164, file: !238, line: 76)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !168, file: !238, line: 77)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !172, file: !238, line: 78)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !174, file: !238, line: 80)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !182, file: !238, line: 81)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !275, file: !290, line: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !276, line: 6, baseType: !277)
!276 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !278, line: 21, baseType: !279)
!278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !278, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !280, identifier: "_ZTS11__mbstate_t")
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !279, file: !278, line: 15, baseType: !18, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !279, file: !278, line: 20, baseType: !283, size: 32, offset: 32)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !279, file: !278, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !284, identifier: "_ZTSN11__mbstate_tUt_E")
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !283, file: !278, line: 18, baseType: !156, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !283, file: !278, line: 19, baseType: !287, size: 32)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 32, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 4)
!290 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !292, file: !290, line: 141)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !293, line: 20, baseType: !156)
!293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !295, file: !290, line: 143)
!295 = !DISubprogram(name: "btowc", scope: !296, file: !296, line: 285, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!297 = !DISubroutineType(types: !298)
!298 = !{!292, !18}
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !300, file: !290, line: 144)
!300 = !DISubprogram(name: "fgetwc", scope: !296, file: !296, line: 744, type: !301, flags: DIFlagPrototyped, spFlags: 0)
!301 = !DISubroutineType(types: !302)
!302 = !{!292, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !305, line: 5, baseType: !306)
!305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !307, line: 49, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!307 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !309, file: !290, line: 145)
!309 = !DISubprogram(name: "fgetws", scope: !296, file: !296, line: 773, type: !310, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{!131, !130, !18, !312}
!312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !303)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !314, file: !290, line: 146)
!314 = !DISubprogram(name: "fputwc", scope: !296, file: !296, line: 758, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!292, !132, !303}
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !318, file: !290, line: 147)
!318 = !DISubprogram(name: "fputws", scope: !296, file: !296, line: 780, type: !319, flags: DIFlagPrototyped, spFlags: 0)
!319 = !DISubroutineType(types: !320)
!320 = !{!18, !178, !312}
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !322, file: !290, line: 148)
!322 = !DISubprogram(name: "fwide", scope: !296, file: !296, line: 588, type: !323, flags: DIFlagPrototyped, spFlags: 0)
!323 = !DISubroutineType(types: !324)
!324 = !{!18, !303, !18}
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !326, file: !290, line: 149)
!326 = !DISubprogram(name: "fwprintf", scope: !296, file: !296, line: 595, type: !327, flags: DIFlagPrototyped, spFlags: 0)
!327 = !DISubroutineType(types: !328)
!328 = !{!18, !312, !178, null}
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !330, file: !290, line: 150)
!330 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !296, file: !296, line: 657, type: !327, flags: DIFlagPrototyped, spFlags: 0)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !332, file: !290, line: 151)
!332 = !DISubprogram(name: "getwc", scope: !296, file: !296, line: 745, type: !301, flags: DIFlagPrototyped, spFlags: 0)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !334, file: !290, line: 152)
!334 = !DISubprogram(name: "getwchar", scope: !296, file: !296, line: 751, type: !335, flags: DIFlagPrototyped, spFlags: 0)
!335 = !DISubroutineType(types: !336)
!336 = !{!292}
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !338, file: !290, line: 153)
!338 = !DISubprogram(name: "mbrlen", scope: !296, file: !296, line: 308, type: !339, flags: DIFlagPrototyped, spFlags: 0)
!339 = !DISubroutineType(types: !340)
!340 = !{!82, !133, !82, !341}
!341 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !344, file: !290, line: 154)
!344 = !DISubprogram(name: "mbrtowc", scope: !296, file: !296, line: 297, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!345 = !DISubroutineType(types: !346)
!346 = !{!82, !130, !133, !82, !341}
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !348, file: !290, line: 155)
!348 = !DISubprogram(name: "mbsinit", scope: !296, file: !296, line: 293, type: !349, flags: DIFlagPrototyped, spFlags: 0)
!349 = !DISubroutineType(types: !350)
!350 = !{!18, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !354, file: !290, line: 156)
!354 = !DISubprogram(name: "mbsrtowcs", scope: !296, file: !296, line: 338, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!355 = !DISubroutineType(types: !356)
!356 = !{!82, !130, !357, !82, !341}
!357 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !360, file: !290, line: 157)
!360 = !DISubprogram(name: "putwc", scope: !296, file: !296, line: 759, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !362, file: !290, line: 158)
!362 = !DISubprogram(name: "putwchar", scope: !296, file: !296, line: 765, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DISubroutineType(types: !364)
!364 = !{!292, !132}
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !366, file: !290, line: 160)
!366 = !DISubprogram(name: "swprintf", scope: !296, file: !296, line: 605, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!18, !130, !82, !178, null}
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !370, file: !290, line: 162)
!370 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !296, file: !296, line: 664, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DISubroutineType(types: !372)
!372 = !{!18, !178, !178, null}
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !374, file: !290, line: 163)
!374 = !DISubprogram(name: "ungetwc", scope: !296, file: !296, line: 788, type: !375, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DISubroutineType(types: !376)
!376 = !{!292, !292, !303}
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !378, file: !290, line: 164)
!378 = !DISubprogram(name: "vfwprintf", scope: !296, file: !296, line: 613, type: !379, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{!18, !312, !178, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !383, identifier: "_ZTS13__va_list_tag")
!383 = !{!384, !386, !387, !388}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !382, file: !385, line: 9, baseType: !156, size: 32)
!385 = !DIFile(filename: "generated_code.c", directory: "/home/suyoung02/klee/KLEE_Simple")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !382, file: !385, line: 9, baseType: !156, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !382, file: !385, line: 9, baseType: !13, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !382, file: !385, line: 9, baseType: !13, size: 64, offset: 128)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !390, file: !290, line: 166)
!390 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !296, file: !296, line: 711, type: !379, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !392, file: !290, line: 169)
!392 = !DISubprogram(name: "vswprintf", scope: !296, file: !296, line: 626, type: !393, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DISubroutineType(types: !394)
!394 = !{!18, !130, !82, !178, !381}
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !396, file: !290, line: 172)
!396 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !296, file: !296, line: 718, type: !397, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DISubroutineType(types: !398)
!398 = !{!18, !178, !178, !381}
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !400, file: !290, line: 174)
!400 = !DISubprogram(name: "vwprintf", scope: !296, file: !296, line: 621, type: !401, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{!18, !178, !381}
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !404, file: !290, line: 176)
!404 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !296, file: !296, line: 715, type: !401, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !406, file: !290, line: 178)
!406 = !DISubprogram(name: "wcrtomb", scope: !296, file: !296, line: 302, type: !407, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!82, !177, !132, !341}
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !410, file: !290, line: 179)
!410 = !DISubprogram(name: "wcscat", scope: !296, file: !296, line: 97, type: !411, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!131, !130, !178}
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !414, file: !290, line: 180)
!414 = !DISubprogram(name: "wcscmp", scope: !296, file: !296, line: 106, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{!18, !179, !179}
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !418, file: !290, line: 181)
!418 = !DISubprogram(name: "wcscoll", scope: !296, file: !296, line: 131, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !420, file: !290, line: 182)
!420 = !DISubprogram(name: "wcscpy", scope: !296, file: !296, line: 87, type: !411, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !422, file: !290, line: 183)
!422 = !DISubprogram(name: "wcscspn", scope: !296, file: !296, line: 188, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DISubroutineType(types: !424)
!424 = !{!82, !179, !179}
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !426, file: !290, line: 184)
!426 = !DISubprogram(name: "wcsftime", scope: !296, file: !296, line: 852, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!82, !130, !82, !178, !429}
!429 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !296, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !434, file: !290, line: 185)
!434 = !DISubprogram(name: "wcslen", scope: !296, file: !296, line: 223, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!82, !179}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !438, file: !290, line: 186)
!438 = !DISubprogram(name: "wcsncat", scope: !296, file: !296, line: 101, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{!131, !130, !178, !82}
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !442, file: !290, line: 187)
!442 = !DISubprogram(name: "wcsncmp", scope: !296, file: !296, line: 109, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!18, !179, !179, !82}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !446, file: !290, line: 188)
!446 = !DISubprogram(name: "wcsncpy", scope: !296, file: !296, line: 92, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !448, file: !290, line: 189)
!448 = !DISubprogram(name: "wcsrtombs", scope: !296, file: !296, line: 344, type: !449, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{!82, !177, !451, !82, !341}
!451 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !454, file: !290, line: 190)
!454 = !DISubprogram(name: "wcsspn", scope: !296, file: !296, line: 192, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !456, file: !290, line: 191)
!456 = !DISubprogram(name: "wcstod", scope: !296, file: !296, line: 378, type: !457, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DISubroutineType(types: !458)
!458 = !{!64, !178, !459}
!459 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !462, file: !290, line: 193)
!462 = !DISubprogram(name: "wcstof", scope: !296, file: !296, line: 383, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!220, !178, !459}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !466, file: !290, line: 195)
!466 = !DISubprogram(name: "wcstok", scope: !296, file: !296, line: 218, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{!131, !130, !178, !459}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !470, file: !290, line: 196)
!470 = !DISubprogram(name: "wcstol", scope: !296, file: !296, line: 429, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{!47, !178, !459, !18}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !290, line: 197)
!474 = !DISubprogram(name: "wcstoul", scope: !296, file: !296, line: 434, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!84, !178, !459, !18}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !478, file: !290, line: 198)
!478 = !DISubprogram(name: "wcsxfrm", scope: !296, file: !296, line: 135, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!82, !130, !178, !82}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !482, file: !290, line: 199)
!482 = !DISubprogram(name: "wctob", scope: !296, file: !296, line: 289, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DISubroutineType(types: !484)
!484 = !{!18, !292}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !486, file: !290, line: 200)
!486 = !DISubprogram(name: "wmemcmp", scope: !296, file: !296, line: 259, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !488, file: !290, line: 201)
!488 = !DISubprogram(name: "wmemcpy", scope: !296, file: !296, line: 263, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !490, file: !290, line: 202)
!490 = !DISubprogram(name: "wmemmove", scope: !296, file: !296, line: 268, type: !491, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{!131, !131, !179, !82}
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !494, file: !290, line: 203)
!494 = !DISubprogram(name: "wmemset", scope: !296, file: !296, line: 272, type: !495, flags: DIFlagPrototyped, spFlags: 0)
!495 = !DISubroutineType(types: !496)
!496 = !{!131, !131, !132, !82}
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !498, file: !290, line: 204)
!498 = !DISubprogram(name: "wprintf", scope: !296, file: !296, line: 602, type: !499, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DISubroutineType(types: !500)
!500 = !{!18, !178, null}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !502, file: !290, line: 205)
!502 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !296, file: !296, line: 661, type: !499, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !504, file: !290, line: 206)
!504 = !DISubprogram(name: "wcschr", scope: !296, file: !296, line: 165, type: !505, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{!131, !179, !132}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !508, file: !290, line: 207)
!508 = !DISubprogram(name: "wcspbrk", scope: !296, file: !296, line: 202, type: !509, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!131, !179, !179}
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !512, file: !290, line: 208)
!512 = !DISubprogram(name: "wcsrchr", scope: !296, file: !296, line: 175, type: !505, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !514, file: !290, line: 209)
!514 = !DISubprogram(name: "wcsstr", scope: !296, file: !296, line: 213, type: !509, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !516, file: !290, line: 210)
!516 = !DISubprogram(name: "wmemchr", scope: !296, file: !296, line: 254, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!131, !179, !132, !82}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !520, file: !290, line: 251)
!520 = !DISubprogram(name: "wcstold", scope: !296, file: !296, line: 385, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!225, !178, !459}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !524, file: !290, line: 260)
!524 = !DISubprogram(name: "wcstoll", scope: !296, file: !296, line: 442, type: !525, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DISubroutineType(types: !526)
!526 = !{!191, !178, !459, !18}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !528, file: !290, line: 261)
!528 = !DISubprogram(name: "wcstoull", scope: !296, file: !296, line: 449, type: !529, flags: DIFlagPrototyped, spFlags: 0)
!529 = !DISubroutineType(types: !530)
!530 = !{!215, !178, !459, !18}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !520, file: !290, line: 267)
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !524, file: !290, line: 268)
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !528, file: !290, line: 269)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !462, file: !290, line: 283)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !390, file: !290, line: 286)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !396, file: !290, line: 289)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !404, file: !290, line: 292)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !520, file: !290, line: 296)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !524, file: !290, line: 297)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !528, file: !290, line: 298)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !542, file: !543, line: 68)
!542 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !544, file: !543, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!543 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!544 = !DINamespace(name: "__exception_ptr", scope: !2)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !544, entity: !546, file: !543, line: 84)
!546 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !543, line: 80, type: !547, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !542}
!549 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !550, entity: !551, file: !552, line: 58)
!550 = !DINamespace(name: "__gnu_debug", scope: null)
!551 = !DINamespace(name: "__debug", scope: !2)
!552 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !554, file: !559, line: 47)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !555, line: 24, baseType: !556)
!555 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !557, line: 37, baseType: !558)
!557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!558 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!559 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !561, file: !559, line: 48)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !555, line: 25, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !557, line: 39, baseType: !563)
!563 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !565, file: !559, line: 49)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !555, line: 26, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !557, line: 41, baseType: !18)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !568, file: !559, line: 50)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !555, line: 27, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !557, line: 44, baseType: !47)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !571, file: !559, line: 52)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !572, line: 58, baseType: !558)
!572 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !574, file: !559, line: 53)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !572, line: 60, baseType: !47)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !576, file: !559, line: 54)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !572, line: 61, baseType: !47)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !578, file: !559, line: 55)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !572, line: 62, baseType: !47)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !580, file: !559, line: 57)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !572, line: 43, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !557, line: 52, baseType: !556)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !583, file: !559, line: 58)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !572, line: 44, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !557, line: 54, baseType: !562)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !586, file: !559, line: 59)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !572, line: 45, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !557, line: 56, baseType: !566)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !589, file: !559, line: 60)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !572, line: 46, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !557, line: 58, baseType: !569)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !592, file: !559, line: 62)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !572, line: 101, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !557, line: 72, baseType: !47)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !595, file: !559, line: 63)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !572, line: 87, baseType: !47)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !597, file: !559, line: 65)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !598, line: 24, baseType: !599)
!598 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !557, line: 38, baseType: !600)
!600 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !602, file: !559, line: 66)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !598, line: 25, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !557, line: 40, baseType: !604)
!604 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !606, file: !559, line: 67)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !598, line: 26, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !557, line: 42, baseType: !156)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !609, file: !559, line: 68)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !598, line: 27, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !557, line: 45, baseType: !84)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !612, file: !559, line: 70)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !572, line: 71, baseType: !600)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !614, file: !559, line: 71)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !572, line: 73, baseType: !84)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !616, file: !559, line: 72)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !572, line: 74, baseType: !84)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !618, file: !559, line: 73)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !572, line: 75, baseType: !84)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !620, file: !559, line: 75)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !572, line: 49, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !557, line: 53, baseType: !599)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !623, file: !559, line: 76)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !572, line: 50, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !557, line: 55, baseType: !603)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !626, file: !559, line: 77)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !572, line: 51, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !557, line: 57, baseType: !607)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !629, file: !559, line: 78)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !572, line: 52, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !557, line: 59, baseType: !610)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !632, file: !559, line: 80)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !572, line: 102, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !557, line: 73, baseType: !84)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !635, file: !559, line: 81)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !572, line: 90, baseType: !84)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !637, file: !639, line: 53)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !638, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!638 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!639 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !641, file: !639, line: 54)
!641 = !DISubprogram(name: "setlocale", scope: !638, file: !638, line: 122, type: !642, flags: DIFlagPrototyped, spFlags: 0)
!642 = !DISubroutineType(types: !643)
!643 = !{!109, !18, !65}
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !645, file: !639, line: 55)
!645 = !DISubprogram(name: "localeconv", scope: !638, file: !638, line: 125, type: !646, flags: DIFlagPrototyped, spFlags: 0)
!646 = !DISubroutineType(types: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !650, file: !652, line: 64)
!650 = !DISubprogram(name: "isalnum", scope: !651, file: !651, line: 108, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!652 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !654, file: !652, line: 65)
!654 = !DISubprogram(name: "isalpha", scope: !651, file: !651, line: 109, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !656, file: !652, line: 66)
!656 = !DISubprogram(name: "iscntrl", scope: !651, file: !651, line: 110, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !658, file: !652, line: 67)
!658 = !DISubprogram(name: "isdigit", scope: !651, file: !651, line: 111, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !660, file: !652, line: 68)
!660 = !DISubprogram(name: "isgraph", scope: !651, file: !651, line: 113, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !662, file: !652, line: 69)
!662 = !DISubprogram(name: "islower", scope: !651, file: !651, line: 112, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !664, file: !652, line: 70)
!664 = !DISubprogram(name: "isprint", scope: !651, file: !651, line: 114, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !666, file: !652, line: 71)
!666 = !DISubprogram(name: "ispunct", scope: !651, file: !651, line: 115, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !668, file: !652, line: 72)
!668 = !DISubprogram(name: "isspace", scope: !651, file: !651, line: 116, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !670, file: !652, line: 73)
!670 = !DISubprogram(name: "isupper", scope: !651, file: !651, line: 117, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !672, file: !652, line: 74)
!672 = !DISubprogram(name: "isxdigit", scope: !651, file: !651, line: 118, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !674, file: !652, line: 75)
!674 = !DISubprogram(name: "tolower", scope: !651, file: !651, line: 122, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !676, file: !652, line: 76)
!676 = !DISubprogram(name: "toupper", scope: !651, file: !651, line: 125, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !678, file: !652, line: 87)
!678 = !DISubprogram(name: "isblank", scope: !651, file: !651, line: 130, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !680, file: !682, line: 98)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !681, line: 7, baseType: !306)
!681 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!682 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !684, file: !682, line: 99)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !685, line: 84, baseType: !686)
!685 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !687, line: 14, baseType: !688)
!687 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !687, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !690, file: !682, line: 101)
!690 = !DISubprogram(name: "clearerr", scope: !685, file: !685, line: 786, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !695, file: !682, line: 102)
!695 = !DISubprogram(name: "fclose", scope: !685, file: !685, line: 178, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!696 = !DISubroutineType(types: !697)
!697 = !{!18, !693}
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !699, file: !682, line: 103)
!699 = !DISubprogram(name: "feof", scope: !685, file: !685, line: 788, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !701, file: !682, line: 104)
!701 = !DISubprogram(name: "ferror", scope: !685, file: !685, line: 790, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !703, file: !682, line: 105)
!703 = !DISubprogram(name: "fflush", scope: !685, file: !685, line: 230, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !705, file: !682, line: 106)
!705 = !DISubprogram(name: "fgetc", scope: !685, file: !685, line: 513, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !707, file: !682, line: 107)
!707 = !DISubprogram(name: "fgetpos", scope: !685, file: !685, line: 760, type: !708, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!18, !710, !711}
!710 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !693)
!711 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !714, file: !682, line: 108)
!714 = !DISubprogram(name: "fgets", scope: !685, file: !685, line: 592, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!109, !177, !18, !710}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !718, file: !682, line: 109)
!718 = !DISubprogram(name: "fopen", scope: !685, file: !685, line: 258, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!693, !133, !133}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !722, file: !682, line: 110)
!722 = !DISubprogram(name: "fprintf", scope: !685, file: !685, line: 350, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!18, !710, !133, null}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !726, file: !682, line: 111)
!726 = !DISubprogram(name: "fputc", scope: !685, file: !685, line: 549, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!18, !18, !693}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !730, file: !682, line: 112)
!730 = !DISubprogram(name: "fputs", scope: !685, file: !685, line: 655, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!18, !133, !710}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !734, file: !682, line: 113)
!734 = !DISubprogram(name: "fread", scope: !685, file: !685, line: 675, type: !735, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{!82, !737, !82, !82, !710}
!737 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !739, file: !682, line: 114)
!739 = !DISubprogram(name: "freopen", scope: !685, file: !685, line: 265, type: !740, flags: DIFlagPrototyped, spFlags: 0)
!740 = !DISubroutineType(types: !741)
!741 = !{!693, !133, !133, !710}
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !743, file: !682, line: 115)
!743 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !685, file: !685, line: 434, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !745, file: !682, line: 116)
!745 = !DISubprogram(name: "fseek", scope: !685, file: !685, line: 713, type: !746, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DISubroutineType(types: !747)
!747 = !{!18, !693, !47, !18}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !749, file: !682, line: 117)
!749 = !DISubprogram(name: "fsetpos", scope: !685, file: !685, line: 765, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DISubroutineType(types: !751)
!751 = !{!18, !693, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !755, file: !682, line: 118)
!755 = !DISubprogram(name: "ftell", scope: !685, file: !685, line: 718, type: !756, flags: DIFlagPrototyped, spFlags: 0)
!756 = !DISubroutineType(types: !757)
!757 = !{!47, !693}
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !759, file: !682, line: 119)
!759 = !DISubprogram(name: "fwrite", scope: !685, file: !685, line: 681, type: !760, flags: DIFlagPrototyped, spFlags: 0)
!760 = !DISubroutineType(types: !761)
!761 = !{!82, !762, !82, !82, !710}
!762 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !764, file: !682, line: 120)
!764 = !DISubprogram(name: "getc", scope: !685, file: !685, line: 514, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !766, file: !682, line: 121)
!766 = !DISubprogram(name: "getchar", scope: !685, file: !685, line: 520, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !768, file: !682, line: 126)
!768 = !DISubprogram(name: "perror", scope: !685, file: !685, line: 804, type: !769, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !65}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !772, file: !682, line: 127)
!772 = !DISubprogram(name: "printf", scope: !685, file: !685, line: 356, type: !773, flags: DIFlagPrototyped, spFlags: 0)
!773 = !DISubroutineType(types: !774)
!774 = !{!18, !133, null}
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !776, file: !682, line: 128)
!776 = !DISubprogram(name: "putc", scope: !685, file: !685, line: 550, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !778, file: !682, line: 129)
!778 = !DISubprogram(name: "putchar", scope: !685, file: !685, line: 556, type: !35, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !780, file: !682, line: 130)
!780 = !DISubprogram(name: "puts", scope: !685, file: !685, line: 661, type: !70, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !782, file: !682, line: 131)
!782 = !DISubprogram(name: "remove", scope: !685, file: !685, line: 152, type: !70, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !784, file: !682, line: 132)
!784 = !DISubprogram(name: "rename", scope: !685, file: !685, line: 154, type: !785, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DISubroutineType(types: !786)
!786 = !{!18, !65, !65}
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !788, file: !682, line: 133)
!788 = !DISubprogram(name: "rewind", scope: !685, file: !685, line: 723, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !790, file: !682, line: 134)
!790 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !685, file: !685, line: 437, type: !773, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !792, file: !682, line: 135)
!792 = !DISubprogram(name: "setbuf", scope: !685, file: !685, line: 328, type: !793, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !710, !177}
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !796, file: !682, line: 136)
!796 = !DISubprogram(name: "setvbuf", scope: !685, file: !685, line: 332, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!18, !710, !177, !18, !82}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !800, file: !682, line: 137)
!800 = !DISubprogram(name: "sprintf", scope: !685, file: !685, line: 358, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!18, !177, !133, null}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !804, file: !682, line: 138)
!804 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !685, file: !685, line: 439, type: !805, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{!18, !133, !133, null}
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !808, file: !682, line: 139)
!808 = !DISubprogram(name: "tmpfile", scope: !685, file: !685, line: 188, type: !809, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubroutineType(types: !810)
!810 = !{!693}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !812, file: !682, line: 141)
!812 = !DISubprogram(name: "tmpnam", scope: !685, file: !685, line: 205, type: !813, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DISubroutineType(types: !814)
!814 = !{!109, !109}
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !816, file: !682, line: 143)
!816 = !DISubprogram(name: "ungetc", scope: !685, file: !685, line: 668, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !818, file: !682, line: 144)
!818 = !DISubprogram(name: "vfprintf", scope: !685, file: !685, line: 365, type: !819, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DISubroutineType(types: !820)
!820 = !{!18, !710, !133, !381}
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !822, file: !682, line: 145)
!822 = !DISubprogram(name: "vprintf", scope: !685, file: !685, line: 371, type: !823, flags: DIFlagPrototyped, spFlags: 0)
!823 = !DISubroutineType(types: !824)
!824 = !{!18, !133, !381}
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !826, file: !682, line: 146)
!826 = !DISubprogram(name: "vsprintf", scope: !685, file: !685, line: 373, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!827 = !DISubroutineType(types: !828)
!828 = !{!18, !177, !133, !381}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !830, file: !682, line: 175)
!830 = !DISubprogram(name: "snprintf", scope: !685, file: !685, line: 378, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DISubroutineType(types: !832)
!832 = !{!18, !177, !82, !133, null}
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !834, file: !682, line: 176)
!834 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !685, file: !685, line: 479, type: !819, flags: DIFlagPrototyped, spFlags: 0)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !836, file: !682, line: 177)
!836 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !685, file: !685, line: 484, type: !823, flags: DIFlagPrototyped, spFlags: 0)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !838, file: !682, line: 178)
!838 = !DISubprogram(name: "vsnprintf", scope: !685, file: !685, line: 382, type: !839, flags: DIFlagPrototyped, spFlags: 0)
!839 = !DISubroutineType(types: !840)
!840 = !{!18, !177, !82, !133, !381}
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !186, entity: !842, file: !682, line: 179)
!842 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !685, file: !685, line: 487, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!843 = !DISubroutineType(types: !844)
!844 = !{!18, !133, !133, !381}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !830, file: !682, line: 185)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !834, file: !682, line: 186)
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !836, file: !682, line: 187)
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !838, file: !682, line: 188)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !842, file: !682, line: 189)
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !851, file: !855, line: 82)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !852, line: 48, baseType: !853)
!852 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!855 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !857, file: !855, line: 83)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !858, line: 38, baseType: !84)
!858 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !292, file: !855, line: 84)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !861, file: !855, line: 86)
!861 = !DISubprogram(name: "iswalnum", scope: !858, file: !858, line: 95, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !863, file: !855, line: 87)
!863 = !DISubprogram(name: "iswalpha", scope: !858, file: !858, line: 101, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !865, file: !855, line: 89)
!865 = !DISubprogram(name: "iswblank", scope: !858, file: !858, line: 146, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !867, file: !855, line: 91)
!867 = !DISubprogram(name: "iswcntrl", scope: !858, file: !858, line: 104, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !869, file: !855, line: 92)
!869 = !DISubprogram(name: "iswctype", scope: !858, file: !858, line: 159, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!870 = !DISubroutineType(types: !871)
!871 = !{!18, !292, !857}
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !873, file: !855, line: 93)
!873 = !DISubprogram(name: "iswdigit", scope: !858, file: !858, line: 108, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !875, file: !855, line: 94)
!875 = !DISubprogram(name: "iswgraph", scope: !858, file: !858, line: 112, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !855, line: 95)
!877 = !DISubprogram(name: "iswlower", scope: !858, file: !858, line: 117, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !879, file: !855, line: 96)
!879 = !DISubprogram(name: "iswprint", scope: !858, file: !858, line: 120, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !855, line: 97)
!881 = !DISubprogram(name: "iswpunct", scope: !858, file: !858, line: 125, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !883, file: !855, line: 98)
!883 = !DISubprogram(name: "iswspace", scope: !858, file: !858, line: 130, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !885, file: !855, line: 99)
!885 = !DISubprogram(name: "iswupper", scope: !858, file: !858, line: 135, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !887, file: !855, line: 100)
!887 = !DISubprogram(name: "iswxdigit", scope: !858, file: !858, line: 140, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !889, file: !855, line: 101)
!889 = !DISubprogram(name: "towctrans", scope: !852, file: !852, line: 55, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!890 = !DISubroutineType(types: !891)
!891 = !{!292, !292, !851}
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !893, file: !855, line: 102)
!893 = !DISubprogram(name: "towlower", scope: !858, file: !858, line: 166, type: !894, flags: DIFlagPrototyped, spFlags: 0)
!894 = !DISubroutineType(types: !895)
!895 = !{!292, !292}
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !897, file: !855, line: 103)
!897 = !DISubprogram(name: "towupper", scope: !858, file: !858, line: 169, type: !894, flags: DIFlagPrototyped, spFlags: 0)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !899, file: !855, line: 104)
!899 = !DISubprogram(name: "wctrans", scope: !852, file: !852, line: 52, type: !900, flags: DIFlagPrototyped, spFlags: 0)
!900 = !DISubroutineType(types: !901)
!901 = !{!851, !65}
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !903, file: !855, line: 105)
!903 = !DISubprogram(name: "wctype", scope: !858, file: !858, line: 155, type: !904, flags: DIFlagPrototyped, spFlags: 0)
!904 = !DISubroutineType(types: !905)
!905 = !{!857, !65}
!906 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !14, entity: !2, file: !907, line: 4)
!907 = !DIFile(filename: "././SaveInput.cpp", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "5dce5563e3826a0252f0b59d1213f3aa")
!908 = !{i32 7, !"Dwarf Version", i32 5}
!909 = !{i32 2, !"Debug Info Version", i32 3}
!910 = !{i32 1, !"wchar_size", i32 4}
!911 = !{i32 7, !"PIC Level", i32 2}
!912 = !{i32 7, !"PIE Level", i32 2}
!913 = !{i32 7, !"uwtable", i32 1}
!914 = !{i32 7, !"frame-pointer", i32 2}
!915 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!916 = distinct !DISubprogram(name: "get_sign", linkageName: "_Z8get_signi", scope: !917, file: !917, line: 1, type: !35, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !918)
!917 = !DIFile(filename: "././sample-code/get_sign.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "5451c5d0adcb46322bfc036b841a5b14")
!918 = !{}
!919 = !DILocalVariable(name: "x", arg: 1, scope: !916, file: !917, line: 1, type: !18)
!920 = !DILocation(line: 1, column: 18, scope: !916)
!921 = !DILocation(line: 2, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !916, file: !917, line: 2, column: 7)
!923 = !DILocation(line: 2, column: 9, scope: !922)
!924 = !DILocation(line: 2, column: 7, scope: !916)
!925 = !DILocation(line: 3, column: 5, scope: !922)
!926 = !DILocation(line: 5, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !916, file: !917, line: 5, column: 7)
!928 = !DILocation(line: 5, column: 9, scope: !927)
!929 = !DILocation(line: 5, column: 7, scope: !916)
!930 = !DILocation(line: 6, column: 5, scope: !927)
!931 = !DILocation(line: 8, column: 5, scope: !927)
!932 = !DILocation(line: 9, column: 1, scope: !916)
!933 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !385, file: !385, type: !51, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !918)
!934 = !DILocation(line: 74, column: 25, scope: !935)
!935 = !DILexicalBlockFile(scope: !933, file: !3, discriminator: 0)
!936 = !DILocation(line: 0, scope: !933)
!937 = distinct !DISubprogram(name: "main", scope: !15, file: !15, line: 8, type: !146, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !918)
!938 = !DILocalVariable(name: "x", scope: !937, file: !15, line: 9, type: !18)
!939 = !DILocation(line: 9, column: 9, scope: !937)
!940 = !DILocation(line: 10, column: 24, scope: !937)
!941 = !DILocation(line: 10, column: 5, scope: !937)
!942 = !DILocalVariable(name: "result", scope: !937, file: !15, line: 11, type: !18)
!943 = !DILocation(line: 11, column: 9, scope: !937)
!944 = !DILocation(line: 12, column: 23, scope: !937)
!945 = !DILocation(line: 12, column: 14, scope: !937)
!946 = !DILocation(line: 12, column: 12, scope: !937)
!947 = !DILocation(line: 13, column: 14, scope: !937)
!948 = !DILocation(line: 13, column: 5, scope: !937)
!949 = !DILocation(line: 14, column: 14, scope: !937)
!950 = !DILocation(line: 14, column: 5, scope: !937)
!951 = !DILocation(line: 15, column: 5, scope: !937)
!952 = distinct !DISubprogram(name: "saveFile<int>", linkageName: "_Z8saveFileIiEvT_Pc", scope: !907, file: !907, line: 8, type: !953, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !955, retainedNodes: !918)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !18, !109}
!955 = !{!956}
!956 = !DITemplateTypeParameter(name: "T", type: !18)
!957 = !DILocalVariable(name: "data", arg: 1, scope: !952, file: !907, line: 8, type: !18)
!958 = !DILocation(line: 8, column: 17, scope: !952)
!959 = !DILocalVariable(name: "filename", arg: 2, scope: !952, file: !907, line: 8, type: !109)
!960 = !DILocation(line: 8, column: 28, scope: !952)
!961 = !DILocalVariable(name: "file", scope: !952, file: !907, line: 9, type: !962)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "ofstream", scope: !2, file: !963, line: 165, baseType: !964)
!963 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iosfwd", directory: "")
!964 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ofstream<char, std::char_traits<char> >", scope: !2, file: !965, line: 1088, size: 4096, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!965 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/fstream.tcc", directory: "")
!966 = !DILocation(line: 9, column: 14, scope: !952)
!967 = !DILocation(line: 10, column: 16, scope: !952)
!968 = !DILocation(line: 10, column: 10, scope: !952)
!969 = !DILocation(line: 11, column: 5, scope: !952)
!970 = !DILocation(line: 11, column: 13, scope: !952)
!971 = !DILocation(line: 11, column: 10, scope: !952)
!972 = !DILocation(line: 11, column: 18, scope: !952)
!973 = !DILocation(line: 12, column: 10, scope: !952)
!974 = !DILocation(line: 13, column: 1, scope: !952)
!975 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_generated_code.c", scope: !385, file: !385, type: !976, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !918)
!976 = !DISubroutineType(types: !918)
!977 = !DILocation(line: 0, scope: !975)
