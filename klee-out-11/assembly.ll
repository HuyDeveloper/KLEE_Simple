; ModuleID = 'generated_code.bc'
source_filename = "generated_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"input.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error opening output file\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_sign(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  %4 = load i32, i32* %3, align 4, !dbg !18
  %5 = icmp eq i32 %4, 0, !dbg !20
  br i1 %5, label %6, label %7, !dbg !21

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !22
  br label %12, !dbg !22

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !23
  %9 = icmp slt i32 %8, 0, !dbg !25
  br i1 %9, label %10, label %11, !dbg !26

10:                                               ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !27
  br label %12, !dbg !27

11:                                               ; preds = %7
  store i32 1, i32* %2, align 4, !dbg !28
  br label %12, !dbg !28

12:                                               ; preds = %11, %10, %6
  %13 = load i32, i32* %2, align 4, !dbg !29
  ret i32 %13, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i32]* %2, metadata !33, metadata !DIExpression()), !dbg !37
  %6 = bitcast [10 x i32]* %2 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 40, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %3, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !42, metadata !DIExpression()), !dbg !105
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !106
  store %struct._IO_FILE* %7, %struct._IO_FILE** %4, align 8, !dbg !105
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !107
  %9 = icmp ne %struct._IO_FILE* %8, null, !dbg !107
  br i1 %9, label %12, label %10, !dbg !109

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)), !dbg !110
  store i32 1, i32* %1, align 4, !dbg !112
  br label %28, !dbg !112

12:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %5, metadata !113, metadata !DIExpression()), !dbg !114
  store i32 0, i32* %5, align 4, !dbg !114
  br label %13, !dbg !115

13:                                               ; preds = %16, %12
  %14 = load i32, i32* %5, align 4, !dbg !116
  %15 = icmp slt i32 %14, 10, !dbg !117
  br i1 %15, label %16, label %25, !dbg !115

16:                                               ; preds = %13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !118
  %18 = load i32, i32* %5, align 4, !dbg !120
  %19 = sext i32 %18 to i64, !dbg !121
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %19, !dbg !121
  %21 = load i32, i32* %20, align 4, !dbg !121
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %21), !dbg !122
  %23 = load i32, i32* %5, align 4, !dbg !123
  %24 = add nsw i32 %23, 1, !dbg !123
  store i32 %24, i32* %5, align 4, !dbg !123
  br label %13, !dbg !115, !llvm.loop !124

25:                                               ; preds = %13
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !127
  %27 = call i32 @fclose(%struct._IO_FILE* noundef %26), !dbg !128
  store i32 0, i32* %1, align 4, !dbg !129
  br label %28, !dbg !129

28:                                               ; preds = %25, %10
  %29 = load i32, i32* %1, align 4, !dbg !130
  ret i32 %29, !dbg !130
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare i32 @printf(i8* noundef, ...) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "generated_code.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "12ee81667f0200ba3fd3e88e08bd5324")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "get_sign", scope: !11, file: !11, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "././sample-code/get_sign.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "5451c5d0adcb46322bfc036b841a5b14")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !11, line: 1, type: !14)
!17 = !DILocation(line: 1, column: 18, scope: !10)
!18 = !DILocation(line: 2, column: 7, scope: !19)
!19 = distinct !DILexicalBlock(scope: !10, file: !11, line: 2, column: 7)
!20 = !DILocation(line: 2, column: 9, scope: !19)
!21 = !DILocation(line: 2, column: 7, scope: !10)
!22 = !DILocation(line: 3, column: 5, scope: !19)
!23 = !DILocation(line: 5, column: 7, scope: !24)
!24 = distinct !DILexicalBlock(scope: !10, file: !11, line: 5, column: 7)
!25 = !DILocation(line: 5, column: 9, scope: !24)
!26 = !DILocation(line: 5, column: 7, scope: !10)
!27 = !DILocation(line: 6, column: 5, scope: !24)
!28 = !DILocation(line: 8, column: 5, scope: !24)
!29 = !DILocation(line: 9, column: 1, scope: !10)
!30 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !31, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!31 = !DISubroutineType(types: !32)
!32 = !{!14}
!33 = !DILocalVariable(name: "x", scope: !30, file: !1, line: 8, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 10)
!37 = !DILocation(line: 8, column: 9, scope: !30)
!38 = !DILocation(line: 9, column: 24, scope: !30)
!39 = !DILocation(line: 9, column: 5, scope: !30)
!40 = !DILocalVariable(name: "result", scope: !30, file: !1, line: 10, type: !14)
!41 = !DILocation(line: 10, column: 9, scope: !30)
!42 = !DILocalVariable(name: "output_file", scope: !30, file: !1, line: 12, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !45, line: 7, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!48 = !{!49, !50, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !66, !68, !69, !70, !74, !76, !78, !82, !85, !87, !90, !93, !94, !96, !100, !101}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 51, baseType: !14, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 54, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 55, baseType: !51, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 56, baseType: !51, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 57, baseType: !51, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 58, baseType: !51, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 59, baseType: !51, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 60, baseType: !51, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 61, baseType: !51, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 64, baseType: !51, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 65, baseType: !51, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 66, baseType: !51, size: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !46, file: !47, line: 68, baseType: !64, size: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !47, line: 36, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !46, file: !47, line: 70, baseType: !67, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !46, file: !47, line: 72, baseType: !14, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !47, line: 73, baseType: !14, size: 32, offset: 928)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !46, file: !47, line: 74, baseType: !71, size: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !72, line: 152, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!73 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !46, file: !47, line: 77, baseType: !75, size: 16, offset: 1024)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !46, file: !47, line: 78, baseType: !77, size: 8, offset: 1040)
!77 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !46, file: !47, line: 79, baseType: !79, size: 8, offset: 1048)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !47, line: 81, baseType: !83, size: 64, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !47, line: 43, baseType: null)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !47, line: 89, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !72, line: 153, baseType: !73)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !46, file: !47, line: 91, baseType: !88, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !47, line: 37, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !46, file: !47, line: 92, baseType: !91, size: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !47, line: 38, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !46, file: !47, line: 93, baseType: !67, size: 64, offset: 1344)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !46, file: !47, line: 94, baseType: !95, size: 64, offset: 1408)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !46, file: !47, line: 95, baseType: !97, size: 64, offset: 1472)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !46, file: !47, line: 96, baseType: !14, size: 32, offset: 1536)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !46, file: !47, line: 98, baseType: !102, size: 160, offset: 1568)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 20)
!105 = !DILocation(line: 12, column: 11, scope: !30)
!106 = !DILocation(line: 12, column: 25, scope: !30)
!107 = !DILocation(line: 15, column: 10, scope: !108)
!108 = distinct !DILexicalBlock(scope: !30, file: !1, line: 15, column: 9)
!109 = !DILocation(line: 15, column: 9, scope: !30)
!110 = !DILocation(line: 16, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 15, column: 23)
!112 = !DILocation(line: 17, column: 9, scope: !111)
!113 = !DILocalVariable(name: "i", scope: !30, file: !1, line: 21, type: !14)
!114 = !DILocation(line: 21, column: 9, scope: !30)
!115 = !DILocation(line: 22, column: 5, scope: !30)
!116 = !DILocation(line: 22, column: 13, scope: !30)
!117 = !DILocation(line: 22, column: 14, scope: !30)
!118 = !DILocation(line: 23, column: 18, scope: !119)
!119 = distinct !DILexicalBlock(scope: !30, file: !1, line: 22, column: 20)
!120 = !DILocation(line: 23, column: 40, scope: !119)
!121 = !DILocation(line: 23, column: 38, scope: !119)
!122 = !DILocation(line: 23, column: 10, scope: !119)
!123 = !DILocation(line: 24, column: 11, scope: !119)
!124 = distinct !{!124, !115, !125, !126}
!125 = !DILocation(line: 25, column: 5, scope: !30)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !DILocation(line: 28, column: 12, scope: !30)
!128 = !DILocation(line: 28, column: 5, scope: !30)
!129 = !DILocation(line: 29, column: 5, scope: !30)
!130 = !DILocation(line: 30, column: 1, scope: !30)
