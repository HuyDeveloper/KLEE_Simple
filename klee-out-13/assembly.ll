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
define dso_local i32 @get_sign(i32* noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !17, metadata !DIExpression()), !dbg !18
  %4 = load i32*, i32** %3, align 8, !dbg !19
  %5 = getelementptr inbounds i32, i32* %4, i64 0, !dbg !19
  %6 = load i32, i32* %5, align 4, !dbg !19
  %7 = icmp eq i32 %6, 0, !dbg !21
  br i1 %7, label %8, label %9, !dbg !22

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !23
  br label %16, !dbg !23

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8, !dbg !24
  %11 = getelementptr inbounds i32, i32* %10, i64 0, !dbg !24
  %12 = load i32, i32* %11, align 4, !dbg !24
  %13 = icmp slt i32 %12, 0, !dbg !26
  br i1 %13, label %14, label %15, !dbg !27

14:                                               ; preds = %9
  store i32 -1, i32* %2, align 4, !dbg !28
  br label %16, !dbg !28

15:                                               ; preds = %9
  store i32 1, i32* %2, align 4, !dbg !29
  br label %16, !dbg !29

16:                                               ; preds = %15, %14, %8
  %17 = load i32, i32* %2, align 4, !dbg !30
  ret i32 %17, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !31 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i32]* %2, metadata !34, metadata !DIExpression()), !dbg !38
  %6 = bitcast [10 x i32]* %2 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 40, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %3, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !43, metadata !DIExpression()), !dbg !106
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !107
  store %struct._IO_FILE* %7, %struct._IO_FILE** %4, align 8, !dbg !106
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !108
  %9 = icmp ne %struct._IO_FILE* %8, null, !dbg !108
  br i1 %9, label %12, label %10, !dbg !110

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)), !dbg !111
  store i32 1, i32* %1, align 4, !dbg !113
  br label %28, !dbg !113

12:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %5, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 0, i32* %5, align 4, !dbg !115
  br label %13, !dbg !116

13:                                               ; preds = %16, %12
  %14 = load i32, i32* %5, align 4, !dbg !117
  %15 = icmp slt i32 %14, 10, !dbg !118
  br i1 %15, label %16, label %25, !dbg !116

16:                                               ; preds = %13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !119
  %18 = load i32, i32* %5, align 4, !dbg !121
  %19 = sext i32 %18 to i64, !dbg !122
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %19, !dbg !122
  %21 = load i32, i32* %20, align 4, !dbg !122
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %21), !dbg !123
  %23 = load i32, i32* %5, align 4, !dbg !124
  %24 = add nsw i32 %23, 1, !dbg !124
  store i32 %24, i32* %5, align 4, !dbg !124
  br label %13, !dbg !116, !llvm.loop !125

25:                                               ; preds = %13
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !128
  %27 = call i32 @fclose(%struct._IO_FILE* noundef %26), !dbg !129
  store i32 0, i32* %1, align 4, !dbg !130
  br label %28, !dbg !130

28:                                               ; preds = %25, %10
  %29 = load i32, i32* %1, align 4, !dbg !131
  ret i32 %29, !dbg !131
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
!10 = distinct !DISubprogram(name: "get_sign", scope: !11, file: !11, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!11 = !DIFile(filename: "././sample-code/get_sign.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "b97ad37bc42db923326dc5c8a111f386")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!16 = !{}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !11, line: 1, type: !15)
!18 = !DILocation(line: 1, column: 18, scope: !10)
!19 = !DILocation(line: 2, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !11, line: 2, column: 7)
!21 = !DILocation(line: 2, column: 12, scope: !20)
!22 = !DILocation(line: 2, column: 7, scope: !10)
!23 = !DILocation(line: 3, column: 5, scope: !20)
!24 = !DILocation(line: 5, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !10, file: !11, line: 5, column: 7)
!26 = !DILocation(line: 5, column: 12, scope: !25)
!27 = !DILocation(line: 5, column: 7, scope: !10)
!28 = !DILocation(line: 6, column: 5, scope: !25)
!29 = !DILocation(line: 8, column: 5, scope: !25)
!30 = !DILocation(line: 9, column: 1, scope: !10)
!31 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !32, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!32 = !DISubroutineType(types: !33)
!33 = !{!14}
!34 = !DILocalVariable(name: "x", scope: !31, file: !1, line: 8, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 10)
!38 = !DILocation(line: 8, column: 9, scope: !31)
!39 = !DILocation(line: 9, column: 24, scope: !31)
!40 = !DILocation(line: 9, column: 5, scope: !31)
!41 = !DILocalVariable(name: "result", scope: !31, file: !1, line: 10, type: !14)
!42 = !DILocation(line: 10, column: 9, scope: !31)
!43 = !DILocalVariable(name: "output_file", scope: !31, file: !1, line: 12, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 7, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!49 = !{!50, !51, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !69, !70, !71, !75, !77, !79, !83, !86, !88, !91, !94, !95, !97, !101, !102}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 51, baseType: !14, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 54, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 55, baseType: !52, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 56, baseType: !52, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 57, baseType: !52, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 58, baseType: !52, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 59, baseType: !52, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 60, baseType: !52, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 61, baseType: !52, size: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 64, baseType: !52, size: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 65, baseType: !52, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 66, baseType: !52, size: 64, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 68, baseType: !65, size: 64, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 36, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 70, baseType: !68, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 72, baseType: !14, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 73, baseType: !14, size: 32, offset: 928)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 74, baseType: !72, size: 64, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !73, line: 152, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!74 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 77, baseType: !76, size: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 78, baseType: !78, size: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 79, baseType: !80, size: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 81, baseType: !84, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 43, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 89, baseType: !87, size: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 153, baseType: !74)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !47, file: !48, line: 91, baseType: !89, size: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !48, line: 37, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !47, file: !48, line: 92, baseType: !92, size: 64, offset: 1280)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !48, line: 38, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !47, file: !48, line: 93, baseType: !68, size: 64, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !47, file: !48, line: 94, baseType: !96, size: 64, offset: 1408)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 95, baseType: !98, size: 64, offset: 1472)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 46, baseType: !100)
!99 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!100 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 96, baseType: !14, size: 32, offset: 1536)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 98, baseType: !103, size: 160, offset: 1568)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 20)
!106 = !DILocation(line: 12, column: 11, scope: !31)
!107 = !DILocation(line: 12, column: 25, scope: !31)
!108 = !DILocation(line: 15, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !31, file: !1, line: 15, column: 9)
!110 = !DILocation(line: 15, column: 9, scope: !31)
!111 = !DILocation(line: 16, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 15, column: 23)
!113 = !DILocation(line: 17, column: 9, scope: !112)
!114 = !DILocalVariable(name: "i", scope: !31, file: !1, line: 21, type: !14)
!115 = !DILocation(line: 21, column: 9, scope: !31)
!116 = !DILocation(line: 22, column: 5, scope: !31)
!117 = !DILocation(line: 22, column: 13, scope: !31)
!118 = !DILocation(line: 22, column: 14, scope: !31)
!119 = !DILocation(line: 23, column: 18, scope: !120)
!120 = distinct !DILexicalBlock(scope: !31, file: !1, line: 22, column: 20)
!121 = !DILocation(line: 23, column: 40, scope: !120)
!122 = !DILocation(line: 23, column: 38, scope: !120)
!123 = !DILocation(line: 23, column: 10, scope: !120)
!124 = !DILocation(line: 24, column: 11, scope: !120)
!125 = distinct !{!125, !116, !126, !127}
!126 = !DILocation(line: 25, column: 5, scope: !31)
!127 = !{!"llvm.loop.mustprogress"}
!128 = !DILocation(line: 28, column: 12, scope: !31)
!129 = !DILocation(line: 28, column: 5, scope: !31)
!130 = !DILocation(line: 29, column: 5, scope: !31)
!131 = !DILocation(line: 30, column: 1, scope: !31)
