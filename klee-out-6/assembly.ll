; ModuleID = 'generated_code.bc'
source_filename = "generated_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1

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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !35, metadata !DIExpression()), !dbg !36
  %4 = bitcast i32* %2 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %3, metadata !39, metadata !DIExpression()), !dbg !40
  %5 = load i32, i32* %2, align 4, !dbg !41
  %6 = call i32 @get_sign(i32 noundef %5), !dbg !42
  store i32 %6, i32* %3, align 4, !dbg !43
  ret i32 0, !dbg !44
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "generated_code.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "95fc4bc5af0db66683bde2ce5cbb297a")
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
!35 = !DILocalVariable(name: "x", scope: !32, file: !1, line: 8, type: !14)
!36 = !DILocation(line: 8, column: 9, scope: !32)
!37 = !DILocation(line: 9, column: 24, scope: !32)
!38 = !DILocation(line: 9, column: 5, scope: !32)
!39 = !DILocalVariable(name: "result", scope: !32, file: !1, line: 10, type: !14)
!40 = !DILocation(line: 10, column: 9, scope: !32)
!41 = !DILocation(line: 11, column: 23, scope: !32)
!42 = !DILocation(line: 11, column: 14, scope: !32)
!43 = !DILocation(line: 11, column: 12, scope: !32)
!44 = !DILocation(line: 12, column: 5, scope: !32)
