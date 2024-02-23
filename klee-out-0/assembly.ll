; ModuleID = 'generated_code.bc'
source_filename = "generated_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Error opening output file\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"get_sign.input.txt\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"get_sign.output.txt\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_sign(i32 noundef %0) #0 !dbg !20 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !25, metadata !DIExpression()), !dbg !26
  %4 = load i32, i32* %3, align 4, !dbg !27
  %5 = icmp eq i32 %4, 0, !dbg !29
  br i1 %5, label %6, label %7, !dbg !30

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !31
  br label %12, !dbg !31

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !32
  %9 = icmp slt i32 %8, 0, !dbg !34
  br i1 %9, label %10, label %11, !dbg !35

10:                                               ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !36
  br label %12, !dbg !36

11:                                               ; preds = %7
  store i32 1, i32* %2, align 4, !dbg !37
  br label %12, !dbg !37

12:                                               ; preds = %11, %10, %6
  %13 = load i32, i32* %2, align 4, !dbg !38
  ret i32 %13, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveFile(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !39 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !49, metadata !DIExpression()), !dbg !109
  %8 = load i8*, i8** %6, align 8, !dbg !110
  %9 = call noalias %struct._IO_FILE* @fopen(i8* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !111
  store %struct._IO_FILE* %9, %struct._IO_FILE** %7, align 8, !dbg !109
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !112
  %11 = icmp ne %struct._IO_FILE* %10, null, !dbg !112
  br i1 %11, label %14, label %12, !dbg !114

12:                                               ; preds = %3
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)), !dbg !115
  br label %55, !dbg !117

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !118
  %16 = call i8* @strstr(i8* noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !120
  %17 = icmp ne i8* %16, null, !dbg !121
  br i1 %17, label %18, label %22, !dbg !122

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !123
  %20 = load i8*, i8** %4, align 8, !dbg !125
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !126
  br label %52, !dbg !127

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8, !dbg !128
  %24 = call i8* @strstr(i8* noundef %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !130
  %25 = icmp ne i8* %24, null, !dbg !131
  br i1 %25, label %30, label %26, !dbg !132

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8, !dbg !133
  %28 = call i8* @strstr(i8* noundef %27, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !134
  %29 = icmp ne i8* %28, null, !dbg !135
  br i1 %29, label %30, label %36, !dbg !136

30:                                               ; preds = %26, %22
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !137
  %32 = load i8*, i8** %4, align 8, !dbg !139
  %33 = bitcast i8* %32 to double*, !dbg !140
  %34 = load double, double* %33, align 8, !dbg !141
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double noundef %34), !dbg !142
  br label %52, !dbg !143

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8, !dbg !144
  %38 = call i8* @strstr(i8* noundef %37, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)), !dbg !146
  %39 = icmp ne i8* %38, null, !dbg !147
  br i1 %39, label %40, label %46, !dbg !148

40:                                               ; preds = %36
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !149
  %42 = load i8*, i8** %4, align 8, !dbg !151
  %43 = bitcast i8* %42 to i64*, !dbg !152
  %44 = load i64, i64* %43, align 8, !dbg !153
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 noundef %44), !dbg !154
  br label %52, !dbg !155

46:                                               ; preds = %36
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !156
  %48 = load i8*, i8** %4, align 8, !dbg !158
  %49 = bitcast i8* %48 to i32*, !dbg !159
  %50 = load i32, i32* %49, align 4, !dbg !160
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef %50), !dbg !161
  br label %52

52:                                               ; preds = %30, %46, %40, %18
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !162
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %53), !dbg !163
  br label %55, !dbg !164

55:                                               ; preds = %52, %12
  ret void, !dbg !164
}

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare i32 @printf(i8* noundef, ...) #2

declare i8* @strstr(i8* noundef, i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveArrayFile(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !165 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !166, metadata !DIExpression()), !dbg !167
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !168, metadata !DIExpression()), !dbg !169
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !172, metadata !DIExpression()), !dbg !173
  %14 = load i8*, i8** %6, align 8, !dbg !174
  %15 = call noalias %struct._IO_FILE* @fopen(i8* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !175
  store %struct._IO_FILE* %15, %struct._IO_FILE** %7, align 8, !dbg !173
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !176
  %17 = icmp ne %struct._IO_FILE* %16, null, !dbg !176
  br i1 %17, label %20, label %18, !dbg !178

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)), !dbg !179
  br label %91, !dbg !181

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8, !dbg !182
  %22 = call i8* @strstr(i8* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !184
  %23 = icmp ne i8* %22, null, !dbg !185
  br i1 %23, label %24, label %28, !dbg !186

24:                                               ; preds = %20
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !187
  %26 = load i8*, i8** %4, align 8, !dbg !189
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %26), !dbg !190
  br label %88, !dbg !191

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8, !dbg !192
  %30 = call i8* @strstr(i8* noundef %29, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !194
  %31 = icmp ne i8* %30, null, !dbg !195
  br i1 %31, label %36, label %32, !dbg !196

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8, !dbg !197
  %34 = call i8* @strstr(i8* noundef %33, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !198
  %35 = icmp ne i8* %34, null, !dbg !199
  br i1 %35, label %36, label %52, !dbg !200

36:                                               ; preds = %32, %28
  call void @llvm.dbg.declare(metadata double** %8, metadata !201, metadata !DIExpression()), !dbg !203
  %37 = load i8*, i8** %4, align 8, !dbg !204
  %38 = bitcast i8* %37 to double*, !dbg !205
  store double* %38, double** %8, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata i32* %9, metadata !206, metadata !DIExpression()), !dbg !208
  store i32 0, i32* %9, align 4, !dbg !208
  br label %39, !dbg !209

39:                                               ; preds = %42, %36
  %40 = load i32, i32* %9, align 4, !dbg !210
  %41 = icmp slt i32 %40, 100, !dbg !212
  br i1 %41, label %42, label %88, !dbg !213

42:                                               ; preds = %39
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !214
  %44 = load double*, double** %8, align 8, !dbg !216
  %45 = load i32, i32* %9, align 4, !dbg !217
  %46 = sext i32 %45 to i64, !dbg !216
  %47 = getelementptr inbounds double, double* %44, i64 %46, !dbg !216
  %48 = load double, double* %47, align 8, !dbg !216
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double noundef %48), !dbg !218
  %50 = load i32, i32* %9, align 4, !dbg !219
  %51 = add nsw i32 %50, 1, !dbg !219
  store i32 %51, i32* %9, align 4, !dbg !219
  br label %39, !dbg !220, !llvm.loop !221

52:                                               ; preds = %32
  %53 = load i8*, i8** %5, align 8, !dbg !224
  %54 = call i8* @strstr(i8* noundef %53, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)), !dbg !226
  %55 = icmp ne i8* %54, null, !dbg !227
  br i1 %55, label %56, label %72, !dbg !228

56:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i64** %10, metadata !229, metadata !DIExpression()), !dbg !231
  %57 = load i8*, i8** %4, align 8, !dbg !232
  %58 = bitcast i8* %57 to i64*, !dbg !233
  store i64* %58, i64** %10, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %11, metadata !234, metadata !DIExpression()), !dbg !236
  store i32 0, i32* %11, align 4, !dbg !236
  br label %59, !dbg !237

59:                                               ; preds = %62, %56
  %60 = load i32, i32* %11, align 4, !dbg !238
  %61 = icmp slt i32 %60, 5, !dbg !240
  br i1 %61, label %62, label %88, !dbg !241

62:                                               ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !242
  %64 = load i64*, i64** %10, align 8, !dbg !244
  %65 = load i32, i32* %11, align 4, !dbg !245
  %66 = sext i32 %65 to i64, !dbg !244
  %67 = getelementptr inbounds i64, i64* %64, i64 %66, !dbg !244
  %68 = load i64, i64* %67, align 8, !dbg !244
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 noundef %68), !dbg !246
  %70 = load i32, i32* %11, align 4, !dbg !247
  %71 = add nsw i32 %70, 1, !dbg !247
  store i32 %71, i32* %11, align 4, !dbg !247
  br label %59, !dbg !248, !llvm.loop !249

72:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i32** %12, metadata !251, metadata !DIExpression()), !dbg !253
  %73 = load i8*, i8** %4, align 8, !dbg !254
  %74 = bitcast i8* %73 to i32*, !dbg !255
  store i32* %74, i32** %12, align 8, !dbg !253
  call void @llvm.dbg.declare(metadata i32* %13, metadata !256, metadata !DIExpression()), !dbg !258
  store i32 0, i32* %13, align 4, !dbg !258
  br label %75, !dbg !259

75:                                               ; preds = %78, %72
  %76 = load i32, i32* %13, align 4, !dbg !260
  %77 = icmp slt i32 %76, 5, !dbg !262
  br i1 %77, label %78, label %88, !dbg !263

78:                                               ; preds = %75
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !264
  %80 = load i32*, i32** %12, align 8, !dbg !266
  %81 = load i32, i32* %13, align 4, !dbg !267
  %82 = sext i32 %81 to i64, !dbg !266
  %83 = getelementptr inbounds i32, i32* %80, i64 %82, !dbg !266
  %84 = load i32, i32* %83, align 4, !dbg !266
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %79, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef %84), !dbg !268
  %86 = load i32, i32* %13, align 4, !dbg !269
  %87 = add nsw i32 %86, 1, !dbg !269
  store i32 %87, i32* %13, align 4, !dbg !269
  br label %75, !dbg !270, !llvm.loop !271

88:                                               ; preds = %39, %75, %59, %24
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !273
  %90 = call i32 @fclose(%struct._IO_FILE* noundef %89), !dbg !274
  br label %91, !dbg !275

91:                                               ; preds = %88, %18
  ret void, !dbg !275
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !276 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !279, metadata !DIExpression()), !dbg !280
  %4 = bitcast i32* %2 to i8*, !dbg !281
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)), !dbg !282
  %5 = bitcast i32* %2 to i8*, !dbg !283
  call void @saveFile(i8* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %3, metadata !285, metadata !DIExpression()), !dbg !286
  %6 = load i32, i32* %2, align 4, !dbg !287
  %7 = call i32 @get_sign(i32 noundef %6), !dbg !288
  store i32 %7, i32* %3, align 4, !dbg !289
  %8 = load i32, i32* %3, align 4, !dbg !290
  %9 = sext i32 %8 to i64, !dbg !290
  %10 = inttoptr i64 %9 to i8*, !dbg !290
  call void @saveFile(i8* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0)), !dbg !291
  ret i32 0, !dbg !292
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "generated_code.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "6f1cde6bdef58b2b3c3ff51f329a2d8d")
!2 = !{!3, !4, !6, !8, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!20 = distinct !DISubprogram(name: "get_sign", scope: !21, file: !21, line: 1, type: !22, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!21 = !DIFile(filename: "././sample-code/get_sign.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "5451c5d0adcb46322bfc036b841a5b14")
!22 = !DISubroutineType(types: !23)
!23 = !{!11, !11}
!24 = !{}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !20, file: !21, line: 1, type: !11)
!26 = !DILocation(line: 1, column: 18, scope: !20)
!27 = !DILocation(line: 2, column: 7, scope: !28)
!28 = distinct !DILexicalBlock(scope: !20, file: !21, line: 2, column: 7)
!29 = !DILocation(line: 2, column: 9, scope: !28)
!30 = !DILocation(line: 2, column: 7, scope: !20)
!31 = !DILocation(line: 3, column: 5, scope: !28)
!32 = !DILocation(line: 5, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !20, file: !21, line: 5, column: 7)
!34 = !DILocation(line: 5, column: 9, scope: !33)
!35 = !DILocation(line: 5, column: 7, scope: !20)
!36 = !DILocation(line: 6, column: 5, scope: !33)
!37 = !DILocation(line: 8, column: 5, scope: !33)
!38 = !DILocation(line: 9, column: 1, scope: !20)
!39 = distinct !DISubprogram(name: "saveFile", scope: !40, file: !40, line: 1, type: !41, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!40 = !DIFile(filename: "././WriteArrayTtoFile.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "855c61aa3aba440a0abd8aa9600d77bc")
!41 = !DISubroutineType(types: !42)
!42 = !{null, !3, !4, !4}
!43 = !DILocalVariable(name: "data", arg: 1, scope: !39, file: !40, line: 1, type: !3)
!44 = !DILocation(line: 1, column: 21, scope: !39)
!45 = !DILocalVariable(name: "dataType", arg: 2, scope: !39, file: !40, line: 1, type: !4)
!46 = !DILocation(line: 1, column: 32, scope: !39)
!47 = !DILocalVariable(name: "filename", arg: 3, scope: !39, file: !40, line: 1, type: !4)
!48 = !DILocation(line: 1, column: 49, scope: !39)
!49 = !DILocalVariable(name: "output_file", scope: !39, file: !40, line: 2, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !52, line: 7, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !71, !73, !74, !75, !79, !81, !83, !87, !90, !92, !95, !98, !99, !100, !104, !105}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 51, baseType: !11, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 54, baseType: !4, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !53, file: !54, line: 55, baseType: !4, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !53, file: !54, line: 56, baseType: !4, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !53, file: !54, line: 57, baseType: !4, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !53, file: !54, line: 58, baseType: !4, size: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !53, file: !54, line: 59, baseType: !4, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !53, file: !54, line: 60, baseType: !4, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !53, file: !54, line: 61, baseType: !4, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !53, file: !54, line: 64, baseType: !4, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !53, file: !54, line: 65, baseType: !4, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !53, file: !54, line: 66, baseType: !4, size: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !53, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !54, line: 36, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !53, file: !54, line: 70, baseType: !72, size: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !53, file: !54, line: 72, baseType: !11, size: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !53, file: !54, line: 73, baseType: !11, size: 32, offset: 928)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !53, file: !54, line: 74, baseType: !76, size: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !77, line: 152, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!78 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 77, baseType: !80, size: 16, offset: 1024)
!80 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 78, baseType: !82, size: 8, offset: 1040)
!82 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 79, baseType: !84, size: 8, offset: 1048)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 81, baseType: !88, size: 64, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 43, baseType: null)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 89, baseType: !91, size: 64, offset: 1152)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !77, line: 153, baseType: !78)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !53, file: !54, line: 91, baseType: !93, size: 64, offset: 1216)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !54, line: 37, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !53, file: !54, line: 92, baseType: !96, size: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !54, line: 38, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !53, file: !54, line: 93, baseType: !72, size: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !53, file: !54, line: 94, baseType: !3, size: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !103)
!102 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!103 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 96, baseType: !11, size: 32, offset: 1536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 98, baseType: !106, size: 160, offset: 1568)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 20)
!109 = !DILocation(line: 2, column: 11, scope: !39)
!110 = !DILocation(line: 2, column: 31, scope: !39)
!111 = !DILocation(line: 2, column: 25, scope: !39)
!112 = !DILocation(line: 5, column: 10, scope: !113)
!113 = distinct !DILexicalBlock(scope: !39, file: !40, line: 5, column: 9)
!114 = !DILocation(line: 5, column: 9, scope: !39)
!115 = !DILocation(line: 6, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !40, line: 5, column: 23)
!117 = !DILocation(line: 7, column: 9, scope: !116)
!118 = !DILocation(line: 9, column: 16, scope: !119)
!119 = distinct !DILexicalBlock(scope: !39, file: !40, line: 9, column: 9)
!120 = !DILocation(line: 9, column: 9, scope: !119)
!121 = !DILocation(line: 9, column: 34, scope: !119)
!122 = !DILocation(line: 9, column: 9, scope: !39)
!123 = !DILocation(line: 10, column: 17, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !40, line: 9, column: 43)
!125 = !DILocation(line: 10, column: 45, scope: !124)
!126 = !DILocation(line: 10, column: 9, scope: !124)
!127 = !DILocation(line: 11, column: 5, scope: !124)
!128 = !DILocation(line: 11, column: 24, scope: !129)
!129 = distinct !DILexicalBlock(scope: !119, file: !40, line: 11, column: 16)
!130 = !DILocation(line: 11, column: 17, scope: !129)
!131 = !DILocation(line: 11, column: 43, scope: !129)
!132 = !DILocation(line: 11, column: 52, scope: !129)
!133 = !DILocation(line: 11, column: 64, scope: !129)
!134 = !DILocation(line: 11, column: 57, scope: !129)
!135 = !DILocation(line: 11, column: 84, scope: !129)
!136 = !DILocation(line: 11, column: 16, scope: !119)
!137 = !DILocation(line: 12, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !129, file: !40, line: 11, column: 94)
!139 = !DILocation(line: 12, column: 48, scope: !138)
!140 = !DILocation(line: 12, column: 39, scope: !138)
!141 = !DILocation(line: 12, column: 38, scope: !138)
!142 = !DILocation(line: 12, column: 9, scope: !138)
!143 = !DILocation(line: 13, column: 5, scope: !138)
!144 = !DILocation(line: 13, column: 22, scope: !145)
!145 = distinct !DILexicalBlock(scope: !129, file: !40, line: 13, column: 15)
!146 = !DILocation(line: 13, column: 15, scope: !145)
!147 = !DILocation(line: 13, column: 40, scope: !145)
!148 = !DILocation(line: 13, column: 15, scope: !129)
!149 = !DILocation(line: 14, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !40, line: 13, column: 49)
!151 = !DILocation(line: 14, column: 53, scope: !150)
!152 = !DILocation(line: 14, column: 41, scope: !150)
!153 = !DILocation(line: 14, column: 40, scope: !150)
!154 = !DILocation(line: 14, column: 9, scope: !150)
!155 = !DILocation(line: 15, column: 5, scope: !150)
!156 = !DILocation(line: 16, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !40, line: 15, column: 12)
!158 = !DILocation(line: 16, column: 45, scope: !157)
!159 = !DILocation(line: 16, column: 39, scope: !157)
!160 = !DILocation(line: 16, column: 38, scope: !157)
!161 = !DILocation(line: 16, column: 9, scope: !157)
!162 = !DILocation(line: 20, column: 12, scope: !39)
!163 = !DILocation(line: 20, column: 5, scope: !39)
!164 = !DILocation(line: 21, column: 1, scope: !39)
!165 = distinct !DISubprogram(name: "saveArrayFile", scope: !40, file: !40, line: 23, type: !41, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!166 = !DILocalVariable(name: "data", arg: 1, scope: !165, file: !40, line: 23, type: !3)
!167 = !DILocation(line: 23, column: 26, scope: !165)
!168 = !DILocalVariable(name: "dataType", arg: 2, scope: !165, file: !40, line: 23, type: !4)
!169 = !DILocation(line: 23, column: 37, scope: !165)
!170 = !DILocalVariable(name: "filename", arg: 3, scope: !165, file: !40, line: 23, type: !4)
!171 = !DILocation(line: 23, column: 54, scope: !165)
!172 = !DILocalVariable(name: "output_file", scope: !165, file: !40, line: 24, type: !50)
!173 = !DILocation(line: 24, column: 11, scope: !165)
!174 = !DILocation(line: 24, column: 31, scope: !165)
!175 = !DILocation(line: 24, column: 25, scope: !165)
!176 = !DILocation(line: 27, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !165, file: !40, line: 27, column: 9)
!178 = !DILocation(line: 27, column: 9, scope: !165)
!179 = !DILocation(line: 28, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !40, line: 27, column: 23)
!181 = !DILocation(line: 29, column: 9, scope: !180)
!182 = !DILocation(line: 31, column: 16, scope: !183)
!183 = distinct !DILexicalBlock(scope: !165, file: !40, line: 31, column: 9)
!184 = !DILocation(line: 31, column: 9, scope: !183)
!185 = !DILocation(line: 31, column: 34, scope: !183)
!186 = !DILocation(line: 31, column: 9, scope: !165)
!187 = !DILocation(line: 32, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !40, line: 31, column: 43)
!189 = !DILocation(line: 32, column: 45, scope: !188)
!190 = !DILocation(line: 32, column: 9, scope: !188)
!191 = !DILocation(line: 33, column: 5, scope: !188)
!192 = !DILocation(line: 33, column: 24, scope: !193)
!193 = distinct !DILexicalBlock(scope: !183, file: !40, line: 33, column: 16)
!194 = !DILocation(line: 33, column: 17, scope: !193)
!195 = !DILocation(line: 33, column: 43, scope: !193)
!196 = !DILocation(line: 33, column: 52, scope: !193)
!197 = !DILocation(line: 33, column: 64, scope: !193)
!198 = !DILocation(line: 33, column: 57, scope: !193)
!199 = !DILocation(line: 33, column: 84, scope: !193)
!200 = !DILocation(line: 33, column: 16, scope: !183)
!201 = !DILocalVariable(name: "dat", scope: !202, file: !40, line: 34, type: !6)
!202 = distinct !DILexicalBlock(scope: !193, file: !40, line: 33, column: 94)
!203 = !DILocation(line: 34, column: 17, scope: !202)
!204 = !DILocation(line: 34, column: 33, scope: !202)
!205 = !DILocation(line: 34, column: 23, scope: !202)
!206 = !DILocalVariable(name: "i", scope: !207, file: !40, line: 35, type: !11)
!207 = distinct !DILexicalBlock(scope: !202, file: !40, line: 35, column: 9)
!208 = !DILocation(line: 35, column: 17, scope: !207)
!209 = !DILocation(line: 35, column: 13, scope: !207)
!210 = !DILocation(line: 35, column: 24, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !40, line: 35, column: 9)
!212 = !DILocation(line: 35, column: 26, scope: !211)
!213 = !DILocation(line: 35, column: 9, scope: !207)
!214 = !DILocation(line: 36, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !40, line: 35, column: 38)
!216 = !DILocation(line: 36, column: 42, scope: !215)
!217 = !DILocation(line: 36, column: 46, scope: !215)
!218 = !DILocation(line: 36, column: 13, scope: !215)
!219 = !DILocation(line: 35, column: 34, scope: !211)
!220 = !DILocation(line: 35, column: 9, scope: !211)
!221 = distinct !{!221, !213, !222, !223}
!222 = !DILocation(line: 37, column: 9, scope: !207)
!223 = !{!"llvm.loop.mustprogress"}
!224 = !DILocation(line: 38, column: 22, scope: !225)
!225 = distinct !DILexicalBlock(scope: !193, file: !40, line: 38, column: 15)
!226 = !DILocation(line: 38, column: 15, scope: !225)
!227 = !DILocation(line: 38, column: 40, scope: !225)
!228 = !DILocation(line: 38, column: 15, scope: !193)
!229 = !DILocalVariable(name: "dat", scope: !230, file: !40, line: 39, type: !8)
!230 = distinct !DILexicalBlock(scope: !225, file: !40, line: 38, column: 49)
!231 = !DILocation(line: 39, column: 20, scope: !230)
!232 = !DILocation(line: 39, column: 39, scope: !230)
!233 = !DILocation(line: 39, column: 26, scope: !230)
!234 = !DILocalVariable(name: "i", scope: !235, file: !40, line: 40, type: !11)
!235 = distinct !DILexicalBlock(scope: !230, file: !40, line: 40, column: 9)
!236 = !DILocation(line: 40, column: 17, scope: !235)
!237 = !DILocation(line: 40, column: 13, scope: !235)
!238 = !DILocation(line: 40, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !40, line: 40, column: 9)
!240 = !DILocation(line: 40, column: 26, scope: !239)
!241 = !DILocation(line: 40, column: 9, scope: !235)
!242 = !DILocation(line: 41, column: 21, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !40, line: 40, column: 36)
!244 = !DILocation(line: 41, column: 44, scope: !243)
!245 = !DILocation(line: 41, column: 48, scope: !243)
!246 = !DILocation(line: 41, column: 13, scope: !243)
!247 = !DILocation(line: 40, column: 32, scope: !239)
!248 = !DILocation(line: 40, column: 9, scope: !239)
!249 = distinct !{!249, !241, !250, !223}
!250 = !DILocation(line: 42, column: 9, scope: !235)
!251 = !DILocalVariable(name: "dat", scope: !252, file: !40, line: 44, type: !10)
!252 = distinct !DILexicalBlock(scope: !225, file: !40, line: 43, column: 12)
!253 = !DILocation(line: 44, column: 14, scope: !252)
!254 = !DILocation(line: 44, column: 27, scope: !252)
!255 = !DILocation(line: 44, column: 20, scope: !252)
!256 = !DILocalVariable(name: "i", scope: !257, file: !40, line: 45, type: !11)
!257 = distinct !DILexicalBlock(scope: !252, file: !40, line: 45, column: 9)
!258 = !DILocation(line: 45, column: 17, scope: !257)
!259 = !DILocation(line: 45, column: 13, scope: !257)
!260 = !DILocation(line: 45, column: 24, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !40, line: 45, column: 9)
!262 = !DILocation(line: 45, column: 26, scope: !261)
!263 = !DILocation(line: 45, column: 9, scope: !257)
!264 = !DILocation(line: 46, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !40, line: 45, column: 36)
!266 = !DILocation(line: 46, column: 42, scope: !265)
!267 = !DILocation(line: 46, column: 46, scope: !265)
!268 = !DILocation(line: 46, column: 13, scope: !265)
!269 = !DILocation(line: 45, column: 32, scope: !261)
!270 = !DILocation(line: 45, column: 9, scope: !261)
!271 = distinct !{!271, !263, !272, !223}
!272 = !DILocation(line: 47, column: 9, scope: !257)
!273 = !DILocation(line: 51, column: 12, scope: !165)
!274 = !DILocation(line: 51, column: 5, scope: !165)
!275 = !DILocation(line: 52, column: 1, scope: !165)
!276 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !277, scopeLine: 8, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!277 = !DISubroutineType(types: !278)
!278 = !{!11}
!279 = !DILocalVariable(name: "x", scope: !276, file: !1, line: 9, type: !11)
!280 = !DILocation(line: 9, column: 9, scope: !276)
!281 = !DILocation(line: 10, column: 24, scope: !276)
!282 = !DILocation(line: 10, column: 5, scope: !276)
!283 = !DILocation(line: 11, column: 14, scope: !276)
!284 = !DILocation(line: 11, column: 5, scope: !276)
!285 = !DILocalVariable(name: "result", scope: !276, file: !1, line: 12, type: !11)
!286 = !DILocation(line: 12, column: 9, scope: !276)
!287 = !DILocation(line: 13, column: 23, scope: !276)
!288 = !DILocation(line: 13, column: 14, scope: !276)
!289 = !DILocation(line: 13, column: 12, scope: !276)
!290 = !DILocation(line: 14, column: 14, scope: !276)
!291 = !DILocation(line: 14, column: 5, scope: !276)
!292 = !DILocation(line: 15, column: 5, scope: !276)
