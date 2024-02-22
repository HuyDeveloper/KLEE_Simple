; ModuleID = 'generated_code.bc'
source_filename = "generated_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"input.txt\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Error opening output file\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_sign(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  %4 = load i32, i32* %3, align 4, !dbg !18
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %4), !dbg !19
  %6 = load i32, i32* %3, align 4, !dbg !20
  %7 = icmp eq i32 %6, 0, !dbg !22
  br i1 %7, label %8, label %9, !dbg !23

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !24
  br label %14, !dbg !24

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !25
  %11 = icmp slt i32 %10, 0, !dbg !27
  br i1 %11, label %12, label %13, !dbg !28

12:                                               ; preds = %9
  store i32 -1, i32* %2, align 4, !dbg !29
  br label %14, !dbg !29

13:                                               ; preds = %9
  store i32 1, i32* %2, align 4, !dbg !30
  br label %14, !dbg !30

14:                                               ; preds = %13, %12, %8
  %15 = load i32, i32* %2, align 4, !dbg !31
  ret i32 %15, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i32]* %2, metadata !35, metadata !DIExpression()), !dbg !39
  %5 = bitcast [10 x i32]* %2 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 40, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %3, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !44, metadata !DIExpression()), !dbg !107
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !108
  store %struct._IO_FILE* %6, %struct._IO_FILE** %4, align 8, !dbg !107
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !109
  %8 = icmp ne %struct._IO_FILE* %7, null, !dbg !109
  br i1 %8, label %11, label %9, !dbg !111

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)), !dbg !112
  store i32 1, i32* %1, align 4, !dbg !114
  br label %17, !dbg !114

11:                                               ; preds = %0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !115
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0, !dbg !116
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* noundef %13), !dbg !117
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !118
  %16 = call i32 @fclose(%struct._IO_FILE* noundef %15), !dbg !119
  store i32 0, i32* %1, align 4, !dbg !120
  br label %17, !dbg !120

17:                                               ; preds = %11, %9
  %18 = load i32, i32* %1, align 4, !dbg !121
  ret i32 %18, !dbg !121
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "generated_code.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "293365677332cc161b305ac796af877d")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "get_sign", scope: !11, file: !11, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "././sample-code/get_sign.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "e8dec84928be8b4e826dd93b63815775")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !11, line: 1, type: !14)
!17 = !DILocation(line: 1, column: 18, scope: !10)
!18 = !DILocation(line: 2, column: 18, scope: !10)
!19 = !DILocation(line: 2, column: 3, scope: !10)
!20 = !DILocation(line: 3, column: 7, scope: !21)
!21 = distinct !DILexicalBlock(scope: !10, file: !11, line: 3, column: 7)
!22 = !DILocation(line: 3, column: 9, scope: !21)
!23 = !DILocation(line: 3, column: 7, scope: !10)
!24 = !DILocation(line: 4, column: 5, scope: !21)
!25 = !DILocation(line: 6, column: 7, scope: !26)
!26 = distinct !DILexicalBlock(scope: !10, file: !11, line: 6, column: 7)
!27 = !DILocation(line: 6, column: 9, scope: !26)
!28 = !DILocation(line: 6, column: 7, scope: !10)
!29 = !DILocation(line: 7, column: 5, scope: !26)
!30 = !DILocation(line: 9, column: 5, scope: !26)
!31 = !DILocation(line: 10, column: 1, scope: !10)
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !33, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!33 = !DISubroutineType(types: !34)
!34 = !{!14}
!35 = !DILocalVariable(name: "x", scope: !32, file: !1, line: 8, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 10)
!39 = !DILocation(line: 8, column: 9, scope: !32)
!40 = !DILocation(line: 9, column: 24, scope: !32)
!41 = !DILocation(line: 9, column: 5, scope: !32)
!42 = !DILocalVariable(name: "result", scope: !32, file: !1, line: 10, type: !14)
!43 = !DILocation(line: 10, column: 9, scope: !32)
!44 = !DILocalVariable(name: "output_file", scope: !32, file: !1, line: 12, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !47, line: 7, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !49, line: 49, size: 1728, elements: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!50 = !{!51, !52, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !68, !70, !71, !72, !76, !78, !80, !84, !87, !89, !92, !95, !96, !98, !102, !103}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !49, line: 51, baseType: !14, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !48, file: !49, line: 54, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !48, file: !49, line: 55, baseType: !53, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !48, file: !49, line: 56, baseType: !53, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !48, file: !49, line: 57, baseType: !53, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !48, file: !49, line: 58, baseType: !53, size: 64, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !48, file: !49, line: 59, baseType: !53, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !48, file: !49, line: 60, baseType: !53, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !48, file: !49, line: 61, baseType: !53, size: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !48, file: !49, line: 64, baseType: !53, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !48, file: !49, line: 65, baseType: !53, size: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !48, file: !49, line: 66, baseType: !53, size: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !48, file: !49, line: 68, baseType: !66, size: 64, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !49, line: 36, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !48, file: !49, line: 70, baseType: !69, size: 64, offset: 832)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !48, file: !49, line: 72, baseType: !14, size: 32, offset: 896)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !49, line: 73, baseType: !14, size: 32, offset: 928)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !48, file: !49, line: 74, baseType: !73, size: 64, offset: 960)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !74, line: 152, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!75 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !48, file: !49, line: 77, baseType: !77, size: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !48, file: !49, line: 78, baseType: !79, size: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !48, file: !49, line: 79, baseType: !81, size: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !49, line: 81, baseType: !85, size: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !49, line: 43, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !49, line: 89, baseType: !88, size: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !74, line: 153, baseType: !75)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !48, file: !49, line: 91, baseType: !90, size: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !49, line: 37, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !48, file: !49, line: 92, baseType: !93, size: 64, offset: 1280)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !49, line: 38, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !48, file: !49, line: 93, baseType: !69, size: 64, offset: 1344)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !48, file: !49, line: 94, baseType: !97, size: 64, offset: 1408)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !48, file: !49, line: 95, baseType: !99, size: 64, offset: 1472)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 46, baseType: !101)
!100 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!101 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !48, file: !49, line: 96, baseType: !14, size: 32, offset: 1536)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !48, file: !49, line: 98, baseType: !104, size: 160, offset: 1568)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 20)
!107 = !DILocation(line: 12, column: 11, scope: !32)
!108 = !DILocation(line: 12, column: 25, scope: !32)
!109 = !DILocation(line: 15, column: 10, scope: !110)
!110 = distinct !DILexicalBlock(scope: !32, file: !1, line: 15, column: 9)
!111 = !DILocation(line: 15, column: 9, scope: !32)
!112 = !DILocation(line: 16, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 15, column: 23)
!114 = !DILocation(line: 17, column: 9, scope: !113)
!115 = !DILocation(line: 21, column: 13, scope: !32)
!116 = !DILocation(line: 21, column: 34, scope: !32)
!117 = !DILocation(line: 21, column: 5, scope: !32)
!118 = !DILocation(line: 24, column: 12, scope: !32)
!119 = !DILocation(line: 24, column: 5, scope: !32)
!120 = !DILocation(line: 25, column: 5, scope: !32)
!121 = !DILocation(line: 26, column: 1, scope: !32)
