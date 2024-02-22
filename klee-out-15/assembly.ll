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
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0, !dbg !43
  %8 = call i32 @get_sign(i32* noundef %7), !dbg !44
  store i32 %8, i32* %3, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !46, metadata !DIExpression()), !dbg !109
  %9 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !110
  store %struct._IO_FILE* %9, %struct._IO_FILE** %4, align 8, !dbg !109
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !111
  %11 = icmp ne %struct._IO_FILE* %10, null, !dbg !111
  br i1 %11, label %14, label %12, !dbg !113

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)), !dbg !114
  store i32 1, i32* %1, align 4, !dbg !116
  br label %32, !dbg !116

14:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %5, metadata !117, metadata !DIExpression()), !dbg !118
  store i32 0, i32* %5, align 4, !dbg !118
  br label %15, !dbg !119

15:                                               ; preds = %18, %14
  %16 = load i32, i32* %5, align 4, !dbg !120
  %17 = icmp slt i32 %16, 10, !dbg !121
  br i1 %17, label %18, label %27, !dbg !119

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !122
  %20 = load i32, i32* %5, align 4, !dbg !124
  %21 = sext i32 %20 to i64, !dbg !125
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 %21, !dbg !125
  %23 = load i32, i32* %22, align 4, !dbg !125
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %23), !dbg !126
  %25 = load i32, i32* %5, align 4, !dbg !127
  %26 = add nsw i32 %25, 1, !dbg !127
  store i32 %26, i32* %5, align 4, !dbg !127
  br label %15, !dbg !119, !llvm.loop !128

27:                                               ; preds = %15
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !131
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !dbg !132
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !133
  %31 = call i32 @fclose(%struct._IO_FILE* noundef %30), !dbg !134
  store i32 0, i32* %1, align 4, !dbg !135
  br label %32, !dbg !135

32:                                               ; preds = %27, %12
  %33 = load i32, i32* %1, align 4, !dbg !136
  ret i32 %33, !dbg !136
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
!1 = !DIFile(filename: "generated_code.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "e3761567c74565d9638ee8ca1c7ddbc4")
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
!43 = !DILocation(line: 11, column: 23, scope: !31)
!44 = !DILocation(line: 11, column: 14, scope: !31)
!45 = !DILocation(line: 11, column: 12, scope: !31)
!46 = !DILocalVariable(name: "output_file", scope: !31, file: !1, line: 12, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !49, line: 7, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 49, size: 1728, elements: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!52 = !{!53, !54, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !70, !72, !73, !74, !78, !80, !82, !86, !89, !91, !94, !97, !98, !100, !104, !105}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !50, file: !51, line: 51, baseType: !14, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !50, file: !51, line: 54, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !50, file: !51, line: 55, baseType: !55, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !50, file: !51, line: 56, baseType: !55, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !50, file: !51, line: 57, baseType: !55, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !50, file: !51, line: 58, baseType: !55, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !50, file: !51, line: 59, baseType: !55, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !50, file: !51, line: 60, baseType: !55, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !50, file: !51, line: 61, baseType: !55, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !50, file: !51, line: 64, baseType: !55, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !50, file: !51, line: 65, baseType: !55, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !50, file: !51, line: 66, baseType: !55, size: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !50, file: !51, line: 68, baseType: !68, size: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !51, line: 36, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !50, file: !51, line: 70, baseType: !71, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !50, file: !51, line: 72, baseType: !14, size: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !50, file: !51, line: 73, baseType: !14, size: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !50, file: !51, line: 74, baseType: !75, size: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !76, line: 152, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!77 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !50, file: !51, line: 77, baseType: !79, size: 16, offset: 1024)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !50, file: !51, line: 78, baseType: !81, size: 8, offset: 1040)
!81 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !50, file: !51, line: 79, baseType: !83, size: 8, offset: 1048)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !50, file: !51, line: 81, baseType: !87, size: 64, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !51, line: 43, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !50, file: !51, line: 89, baseType: !90, size: 64, offset: 1152)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !76, line: 153, baseType: !77)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !50, file: !51, line: 91, baseType: !92, size: 64, offset: 1216)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !51, line: 37, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !50, file: !51, line: 92, baseType: !95, size: 64, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !51, line: 38, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !50, file: !51, line: 93, baseType: !71, size: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !50, file: !51, line: 94, baseType: !99, size: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !50, file: !51, line: 95, baseType: !101, size: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !103)
!102 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !50, file: !51, line: 96, baseType: !14, size: 32, offset: 1536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !50, file: !51, line: 98, baseType: !106, size: 160, offset: 1568)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 20)
!109 = !DILocation(line: 12, column: 11, scope: !31)
!110 = !DILocation(line: 12, column: 25, scope: !31)
!111 = !DILocation(line: 15, column: 10, scope: !112)
!112 = distinct !DILexicalBlock(scope: !31, file: !1, line: 15, column: 9)
!113 = !DILocation(line: 15, column: 9, scope: !31)
!114 = !DILocation(line: 16, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 15, column: 23)
!116 = !DILocation(line: 17, column: 9, scope: !115)
!117 = !DILocalVariable(name: "i", scope: !31, file: !1, line: 21, type: !14)
!118 = !DILocation(line: 21, column: 9, scope: !31)
!119 = !DILocation(line: 22, column: 5, scope: !31)
!120 = !DILocation(line: 22, column: 13, scope: !31)
!121 = !DILocation(line: 22, column: 14, scope: !31)
!122 = !DILocation(line: 23, column: 18, scope: !123)
!123 = distinct !DILexicalBlock(scope: !31, file: !1, line: 22, column: 20)
!124 = !DILocation(line: 23, column: 40, scope: !123)
!125 = !DILocation(line: 23, column: 38, scope: !123)
!126 = !DILocation(line: 23, column: 10, scope: !123)
!127 = !DILocation(line: 24, column: 11, scope: !123)
!128 = distinct !{!128, !119, !129, !130}
!129 = !DILocation(line: 25, column: 5, scope: !31)
!130 = !{!"llvm.loop.mustprogress"}
!131 = !DILocation(line: 27, column: 13, scope: !31)
!132 = !DILocation(line: 27, column: 5, scope: !31)
!133 = !DILocation(line: 30, column: 12, scope: !31)
!134 = !DILocation(line: 30, column: 5, scope: !31)
!135 = !DILocation(line: 31, column: 5, scope: !31)
!136 = !DILocation(line: 32, column: 1, scope: !31)
