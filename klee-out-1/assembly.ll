; ModuleID = 'generated_code.bc'
source_filename = "generated_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_sign(i64 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %4 = load i64, i64* %3, align 8, !dbg !19
  %5 = icmp eq i64 %4, 0, !dbg !21
  br i1 %5, label %6, label %7, !dbg !22

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !23
  br label %12, !dbg !23

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8, !dbg !24
  %9 = icmp slt i64 %8, 0, !dbg !26
  br i1 %9, label %10, label %11, !dbg !27

10:                                               ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !28
  br label %12, !dbg !28

11:                                               ; preds = %7
  store i32 1, i32* %2, align 4, !dbg !29
  br label %12, !dbg !29

12:                                               ; preds = %11, %10, %6
  %13 = load i32, i32* %2, align 4, !dbg !30
  ret i32 %13, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !31 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i64* %2, metadata !34, metadata !DIExpression()), !dbg !35
  %4 = bitcast i64* %2 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %3, metadata !38, metadata !DIExpression()), !dbg !39
  %5 = load i64, i64* %2, align 8, !dbg !40
  %6 = call i32 @get_sign(i64 noundef %5), !dbg !41
  store i32 %6, i32* %3, align 4, !dbg !42
  ret i32 0, !dbg !43
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "generated_code.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "c6f6f0fd90ec3af9d7dce8b30430d0c6")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "get_sign", scope: !11, file: !11, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!11 = !DIFile(filename: "././sample-code/get_sign.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "29ee030399129369ddaddde52003d76c")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !11, line: 1, type: !15)
!18 = !DILocation(line: 1, column: 19, scope: !10)
!19 = !DILocation(line: 2, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !11, line: 2, column: 7)
!21 = !DILocation(line: 2, column: 9, scope: !20)
!22 = !DILocation(line: 2, column: 7, scope: !10)
!23 = !DILocation(line: 3, column: 5, scope: !20)
!24 = !DILocation(line: 5, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !10, file: !11, line: 5, column: 7)
!26 = !DILocation(line: 5, column: 9, scope: !25)
!27 = !DILocation(line: 5, column: 7, scope: !10)
!28 = !DILocation(line: 6, column: 5, scope: !25)
!29 = !DILocation(line: 8, column: 5, scope: !25)
!30 = !DILocation(line: 9, column: 1, scope: !10)
!31 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !32, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!32 = !DISubroutineType(types: !33)
!33 = !{!14}
!34 = !DILocalVariable(name: "x", scope: !31, file: !1, line: 8, type: !15)
!35 = !DILocation(line: 8, column: 10, scope: !31)
!36 = !DILocation(line: 9, column: 24, scope: !31)
!37 = !DILocation(line: 9, column: 5, scope: !31)
!38 = !DILocalVariable(name: "result", scope: !31, file: !1, line: 10, type: !14)
!39 = !DILocation(line: 10, column: 9, scope: !31)
!40 = !DILocation(line: 11, column: 23, scope: !31)
!41 = !DILocation(line: 11, column: 14, scope: !31)
!42 = !DILocation(line: 11, column: 12, scope: !31)
!43 = !DILocation(line: 12, column: 5, scope: !31)
