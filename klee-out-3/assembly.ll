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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !44, metadata !DIExpression()), !dbg !45
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !48, metadata !DIExpression()), !dbg !108
  %8 = load i8*, i8** %6, align 8, !dbg !109
  %9 = call noalias %struct._IO_FILE* @fopen(i8* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !110
  store %struct._IO_FILE* %9, %struct._IO_FILE** %7, align 8, !dbg !108
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !111
  %11 = icmp ne %struct._IO_FILE* %10, null, !dbg !111
  br i1 %11, label %14, label %12, !dbg !113

12:                                               ; preds = %3
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)), !dbg !114
  br label %55, !dbg !116

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !117
  %16 = call i8* @strstr(i8* noundef %15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !119
  %17 = icmp ne i8* %16, null, !dbg !120
  br i1 %17, label %18, label %22, !dbg !121

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !122
  %20 = load i8*, i8** %4, align 8, !dbg !124
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !125
  br label %52, !dbg !126

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8, !dbg !127
  %24 = call i8* @strstr(i8* noundef %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !129
  %25 = icmp ne i8* %24, null, !dbg !130
  br i1 %25, label %30, label %26, !dbg !131

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8, !dbg !132
  %28 = call i8* @strstr(i8* noundef %27, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !133
  %29 = icmp ne i8* %28, null, !dbg !134
  br i1 %29, label %30, label %36, !dbg !135

30:                                               ; preds = %26, %22
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !136
  %32 = load i8*, i8** %4, align 8, !dbg !138
  %33 = bitcast i8* %32 to double*, !dbg !139
  %34 = load double, double* %33, align 8, !dbg !140
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double noundef %34), !dbg !141
  br label %52, !dbg !142

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8, !dbg !143
  %38 = call i8* @strstr(i8* noundef %37, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !145
  %39 = icmp ne i8* %38, null, !dbg !146
  br i1 %39, label %40, label %46, !dbg !147

40:                                               ; preds = %36
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !148
  %42 = load i8*, i8** %4, align 8, !dbg !150
  %43 = bitcast i8* %42 to i64*, !dbg !151
  %44 = load i64, i64* %43, align 8, !dbg !152
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 noundef %44), !dbg !153
  br label %52, !dbg !154

46:                                               ; preds = %36
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !155
  %48 = load i8*, i8** %4, align 8, !dbg !157
  %49 = bitcast i8* %48 to i32*, !dbg !158
  %50 = load i32, i32* %49, align 4, !dbg !159
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef %50), !dbg !160
  br label %52

52:                                               ; preds = %30, %46, %40, %18
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !161
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %53), !dbg !162
  br label %55, !dbg !163

55:                                               ; preds = %52, %12
  ret void, !dbg !163
}

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) #3

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveArrayFile(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !164 {
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !165, metadata !DIExpression()), !dbg !166
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !167, metadata !DIExpression()), !dbg !168
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !171, metadata !DIExpression()), !dbg !172
  %14 = load i8*, i8** %6, align 8, !dbg !173
  %15 = call noalias %struct._IO_FILE* @fopen(i8* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !174
  store %struct._IO_FILE* %15, %struct._IO_FILE** %7, align 8, !dbg !172
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !175
  %17 = icmp ne %struct._IO_FILE* %16, null, !dbg !175
  br i1 %17, label %20, label %18, !dbg !177

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)), !dbg !178
  br label %88, !dbg !180

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8, !dbg !181
  %22 = call i8* @strstr(i8* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !183
  %23 = icmp ne i8* %22, null, !dbg !184
  br i1 %23, label %24, label %28, !dbg !185

24:                                               ; preds = %20
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !186
  %26 = load i8*, i8** %4, align 8, !dbg !188
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %26), !dbg !189
  br label %88, !dbg !190

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8, !dbg !191
  %30 = call i8* @strstr(i8* noundef %29, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !193
  %31 = icmp ne i8* %30, null, !dbg !194
  br i1 %31, label %36, label %32, !dbg !195

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8, !dbg !196
  %34 = call i8* @strstr(i8* noundef %33, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !197
  %35 = icmp ne i8* %34, null, !dbg !198
  br i1 %35, label %36, label %52, !dbg !199

36:                                               ; preds = %32, %28
  call void @llvm.dbg.declare(metadata double** %8, metadata !200, metadata !DIExpression()), !dbg !202
  %37 = load i8*, i8** %4, align 8, !dbg !203
  %38 = bitcast i8* %37 to double*, !dbg !204
  store double* %38, double** %8, align 8, !dbg !202
  call void @llvm.dbg.declare(metadata i32* %9, metadata !205, metadata !DIExpression()), !dbg !207
  store i32 0, i32* %9, align 4, !dbg !207
  br label %39, !dbg !208

39:                                               ; preds = %42, %36
  %40 = load i32, i32* %9, align 4, !dbg !209
  %41 = icmp slt i32 %40, 100, !dbg !211
  br i1 %41, label %42, label %88, !dbg !212

42:                                               ; preds = %39
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !213
  %44 = load double*, double** %8, align 8, !dbg !215
  %45 = load i32, i32* %9, align 4, !dbg !216
  %46 = sext i32 %45 to i64, !dbg !215
  %47 = getelementptr inbounds double, double* %44, i64 %46, !dbg !215
  %48 = load double, double* %47, align 8, !dbg !215
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double noundef %48), !dbg !217
  %50 = load i32, i32* %9, align 4, !dbg !218
  %51 = add nsw i32 %50, 1, !dbg !218
  store i32 %51, i32* %9, align 4, !dbg !218
  br label %39, !dbg !219, !llvm.loop !220

52:                                               ; preds = %32
  %53 = load i8*, i8** %5, align 8, !dbg !223
  %54 = call i8* @strstr(i8* noundef %53, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !225
  %55 = icmp ne i8* %54, null, !dbg !226
  br i1 %55, label %56, label %72, !dbg !227

56:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i64** %10, metadata !228, metadata !DIExpression()), !dbg !230
  %57 = load i8*, i8** %4, align 8, !dbg !231
  %58 = bitcast i8* %57 to i64*, !dbg !232
  store i64* %58, i64** %10, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata i32* %11, metadata !233, metadata !DIExpression()), !dbg !235
  store i32 0, i32* %11, align 4, !dbg !235
  br label %59, !dbg !236

59:                                               ; preds = %62, %56
  %60 = load i32, i32* %11, align 4, !dbg !237
  %61 = icmp slt i32 %60, 5, !dbg !239
  br i1 %61, label %62, label %88, !dbg !240

62:                                               ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !241
  %64 = load i64*, i64** %10, align 8, !dbg !243
  %65 = load i32, i32* %11, align 4, !dbg !244
  %66 = sext i32 %65 to i64, !dbg !243
  %67 = getelementptr inbounds i64, i64* %64, i64 %66, !dbg !243
  %68 = load i64, i64* %67, align 8, !dbg !243
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 noundef %68), !dbg !245
  %70 = load i32, i32* %11, align 4, !dbg !246
  %71 = add nsw i32 %70, 1, !dbg !246
  store i32 %71, i32* %11, align 4, !dbg !246
  br label %59, !dbg !247, !llvm.loop !248

72:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i32** %12, metadata !250, metadata !DIExpression()), !dbg !252
  %73 = load i8*, i8** %4, align 8, !dbg !253
  %74 = bitcast i8* %73 to i32*, !dbg !254
  store i32* %74, i32** %12, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata i32* %13, metadata !255, metadata !DIExpression()), !dbg !257
  store i32 0, i32* %13, align 4, !dbg !257
  br label %75, !dbg !258

75:                                               ; preds = %78, %72
  %76 = load i32, i32* %13, align 4, !dbg !259
  %77 = icmp slt i32 %76, 5, !dbg !261
  br i1 %77, label %78, label %88, !dbg !262

78:                                               ; preds = %75
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !263
  %80 = load i32*, i32** %12, align 8, !dbg !265
  %81 = load i32, i32* %13, align 4, !dbg !266
  %82 = sext i32 %81 to i64, !dbg !265
  %83 = getelementptr inbounds i32, i32* %80, i64 %82, !dbg !265
  %84 = load i32, i32* %83, align 4, !dbg !265
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %79, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef %84), !dbg !267
  %86 = load i32, i32* %13, align 4, !dbg !268
  %87 = add nsw i32 %86, 1, !dbg !268
  store i32 %87, i32* %13, align 4, !dbg !268
  br label %75, !dbg !269, !llvm.loop !270

88:                                               ; preds = %39, %75, %59, %18, %24
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !273 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !276, metadata !DIExpression()), !dbg !277
  %4 = bitcast i32* %2 to i8*, !dbg !278
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)), !dbg !279
  %5 = bitcast i32* %2 to i8*, !dbg !280
  call void @saveFile(i8* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %3, metadata !282, metadata !DIExpression()), !dbg !283
  %6 = load i32, i32* %2, align 4, !dbg !284
  %7 = call i32 @get_sign(i32 noundef %6), !dbg !285
  store i32 %7, i32* %3, align 4, !dbg !286
  %8 = load i32, i32* %3, align 4, !dbg !287
  %9 = sext i32 %8 to i64, !dbg !287
  %10 = inttoptr i64 %9 to i8*, !dbg !287
  call void @saveFile(i8* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0)), !dbg !288
  ret i32 0, !dbg !289
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "generated_code.c", directory: "/home/suyoung02/klee/KLEE_Simple", checksumkind: CSK_MD5, checksum: "4b84132fbb20864796b62a345341c64f")
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
!39 = distinct !DISubprogram(name: "saveFile", scope: !1, file: !1, line: 7, type: !40, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !3, !4, !4}
!42 = !DILocalVariable(name: "data", arg: 1, scope: !39, file: !1, line: 7, type: !3)
!43 = !DILocation(line: 7, column: 21, scope: !39)
!44 = !DILocalVariable(name: "dataType", arg: 2, scope: !39, file: !1, line: 7, type: !4)
!45 = !DILocation(line: 7, column: 32, scope: !39)
!46 = !DILocalVariable(name: "filename", arg: 3, scope: !39, file: !1, line: 7, type: !4)
!47 = !DILocation(line: 7, column: 49, scope: !39)
!48 = !DILocalVariable(name: "output_file", scope: !39, file: !1, line: 8, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !51, line: 7, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !70, !72, !73, !74, !78, !80, !82, !86, !89, !91, !94, !97, !98, !99, !103, !104}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !53, line: 51, baseType: !11, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !52, file: !53, line: 54, baseType: !4, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !52, file: !53, line: 55, baseType: !4, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !52, file: !53, line: 56, baseType: !4, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !52, file: !53, line: 57, baseType: !4, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !52, file: !53, line: 58, baseType: !4, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !52, file: !53, line: 59, baseType: !4, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !52, file: !53, line: 60, baseType: !4, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !52, file: !53, line: 61, baseType: !4, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !52, file: !53, line: 64, baseType: !4, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !52, file: !53, line: 65, baseType: !4, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !52, file: !53, line: 66, baseType: !4, size: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !52, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !53, line: 36, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !52, file: !53, line: 70, baseType: !71, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !52, file: !53, line: 72, baseType: !11, size: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !52, file: !53, line: 73, baseType: !11, size: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !52, file: !53, line: 74, baseType: !75, size: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !76, line: 152, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!77 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !52, file: !53, line: 77, baseType: !79, size: 16, offset: 1024)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !52, file: !53, line: 78, baseType: !81, size: 8, offset: 1040)
!81 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !52, file: !53, line: 79, baseType: !83, size: 8, offset: 1048)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !52, file: !53, line: 81, baseType: !87, size: 64, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !53, line: 43, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !53, line: 89, baseType: !90, size: 64, offset: 1152)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !76, line: 153, baseType: !77)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !52, file: !53, line: 91, baseType: !92, size: 64, offset: 1216)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !53, line: 37, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !52, file: !53, line: 92, baseType: !95, size: 64, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !53, line: 38, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !52, file: !53, line: 93, baseType: !71, size: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !52, file: !53, line: 94, baseType: !3, size: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 46, baseType: !102)
!101 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 96, baseType: !11, size: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DILocation(line: 8, column: 11, scope: !39)
!109 = !DILocation(line: 8, column: 31, scope: !39)
!110 = !DILocation(line: 8, column: 25, scope: !39)
!111 = !DILocation(line: 11, column: 10, scope: !112)
!112 = distinct !DILexicalBlock(scope: !39, file: !1, line: 11, column: 9)
!113 = !DILocation(line: 11, column: 9, scope: !39)
!114 = !DILocation(line: 12, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 11, column: 23)
!116 = !DILocation(line: 13, column: 9, scope: !115)
!117 = !DILocation(line: 15, column: 16, scope: !118)
!118 = distinct !DILexicalBlock(scope: !39, file: !1, line: 15, column: 9)
!119 = !DILocation(line: 15, column: 9, scope: !118)
!120 = !DILocation(line: 15, column: 34, scope: !118)
!121 = !DILocation(line: 15, column: 9, scope: !39)
!122 = !DILocation(line: 16, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 15, column: 43)
!124 = !DILocation(line: 16, column: 45, scope: !123)
!125 = !DILocation(line: 16, column: 9, scope: !123)
!126 = !DILocation(line: 17, column: 5, scope: !123)
!127 = !DILocation(line: 17, column: 24, scope: !128)
!128 = distinct !DILexicalBlock(scope: !118, file: !1, line: 17, column: 16)
!129 = !DILocation(line: 17, column: 17, scope: !128)
!130 = !DILocation(line: 17, column: 43, scope: !128)
!131 = !DILocation(line: 17, column: 52, scope: !128)
!132 = !DILocation(line: 17, column: 64, scope: !128)
!133 = !DILocation(line: 17, column: 57, scope: !128)
!134 = !DILocation(line: 17, column: 84, scope: !128)
!135 = !DILocation(line: 17, column: 16, scope: !118)
!136 = !DILocation(line: 18, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !128, file: !1, line: 17, column: 94)
!138 = !DILocation(line: 18, column: 48, scope: !137)
!139 = !DILocation(line: 18, column: 39, scope: !137)
!140 = !DILocation(line: 18, column: 38, scope: !137)
!141 = !DILocation(line: 18, column: 9, scope: !137)
!142 = !DILocation(line: 19, column: 5, scope: !137)
!143 = !DILocation(line: 19, column: 22, scope: !144)
!144 = distinct !DILexicalBlock(scope: !128, file: !1, line: 19, column: 15)
!145 = !DILocation(line: 19, column: 15, scope: !144)
!146 = !DILocation(line: 19, column: 40, scope: !144)
!147 = !DILocation(line: 19, column: 15, scope: !128)
!148 = !DILocation(line: 20, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 19, column: 49)
!150 = !DILocation(line: 20, column: 53, scope: !149)
!151 = !DILocation(line: 20, column: 41, scope: !149)
!152 = !DILocation(line: 20, column: 40, scope: !149)
!153 = !DILocation(line: 20, column: 9, scope: !149)
!154 = !DILocation(line: 21, column: 5, scope: !149)
!155 = !DILocation(line: 22, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !144, file: !1, line: 21, column: 12)
!157 = !DILocation(line: 22, column: 45, scope: !156)
!158 = !DILocation(line: 22, column: 39, scope: !156)
!159 = !DILocation(line: 22, column: 38, scope: !156)
!160 = !DILocation(line: 22, column: 9, scope: !156)
!161 = !DILocation(line: 26, column: 12, scope: !39)
!162 = !DILocation(line: 26, column: 5, scope: !39)
!163 = !DILocation(line: 27, column: 1, scope: !39)
!164 = distinct !DISubprogram(name: "saveArrayFile", scope: !1, file: !1, line: 29, type: !40, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!165 = !DILocalVariable(name: "data", arg: 1, scope: !164, file: !1, line: 29, type: !3)
!166 = !DILocation(line: 29, column: 26, scope: !164)
!167 = !DILocalVariable(name: "dataType", arg: 2, scope: !164, file: !1, line: 29, type: !4)
!168 = !DILocation(line: 29, column: 37, scope: !164)
!169 = !DILocalVariable(name: "filename", arg: 3, scope: !164, file: !1, line: 29, type: !4)
!170 = !DILocation(line: 29, column: 54, scope: !164)
!171 = !DILocalVariable(name: "output_file", scope: !164, file: !1, line: 30, type: !49)
!172 = !DILocation(line: 30, column: 11, scope: !164)
!173 = !DILocation(line: 30, column: 31, scope: !164)
!174 = !DILocation(line: 30, column: 25, scope: !164)
!175 = !DILocation(line: 33, column: 10, scope: !176)
!176 = distinct !DILexicalBlock(scope: !164, file: !1, line: 33, column: 9)
!177 = !DILocation(line: 33, column: 9, scope: !164)
!178 = !DILocation(line: 34, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !1, line: 33, column: 23)
!180 = !DILocation(line: 35, column: 9, scope: !179)
!181 = !DILocation(line: 37, column: 16, scope: !182)
!182 = distinct !DILexicalBlock(scope: !164, file: !1, line: 37, column: 9)
!183 = !DILocation(line: 37, column: 9, scope: !182)
!184 = !DILocation(line: 37, column: 34, scope: !182)
!185 = !DILocation(line: 37, column: 9, scope: !164)
!186 = !DILocation(line: 38, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !1, line: 37, column: 43)
!188 = !DILocation(line: 38, column: 45, scope: !187)
!189 = !DILocation(line: 38, column: 9, scope: !187)
!190 = !DILocation(line: 39, column: 5, scope: !187)
!191 = !DILocation(line: 39, column: 24, scope: !192)
!192 = distinct !DILexicalBlock(scope: !182, file: !1, line: 39, column: 16)
!193 = !DILocation(line: 39, column: 17, scope: !192)
!194 = !DILocation(line: 39, column: 43, scope: !192)
!195 = !DILocation(line: 39, column: 52, scope: !192)
!196 = !DILocation(line: 39, column: 64, scope: !192)
!197 = !DILocation(line: 39, column: 57, scope: !192)
!198 = !DILocation(line: 39, column: 84, scope: !192)
!199 = !DILocation(line: 39, column: 16, scope: !182)
!200 = !DILocalVariable(name: "dat", scope: !201, file: !1, line: 40, type: !6)
!201 = distinct !DILexicalBlock(scope: !192, file: !1, line: 39, column: 94)
!202 = !DILocation(line: 40, column: 17, scope: !201)
!203 = !DILocation(line: 40, column: 33, scope: !201)
!204 = !DILocation(line: 40, column: 23, scope: !201)
!205 = !DILocalVariable(name: "i", scope: !206, file: !1, line: 41, type: !11)
!206 = distinct !DILexicalBlock(scope: !201, file: !1, line: 41, column: 9)
!207 = !DILocation(line: 41, column: 17, scope: !206)
!208 = !DILocation(line: 41, column: 13, scope: !206)
!209 = !DILocation(line: 41, column: 24, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !1, line: 41, column: 9)
!211 = !DILocation(line: 41, column: 26, scope: !210)
!212 = !DILocation(line: 41, column: 9, scope: !206)
!213 = !DILocation(line: 42, column: 21, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !1, line: 41, column: 38)
!215 = !DILocation(line: 42, column: 42, scope: !214)
!216 = !DILocation(line: 42, column: 46, scope: !214)
!217 = !DILocation(line: 42, column: 13, scope: !214)
!218 = !DILocation(line: 41, column: 34, scope: !210)
!219 = !DILocation(line: 41, column: 9, scope: !210)
!220 = distinct !{!220, !212, !221, !222}
!221 = !DILocation(line: 43, column: 9, scope: !206)
!222 = !{!"llvm.loop.mustprogress"}
!223 = !DILocation(line: 44, column: 22, scope: !224)
!224 = distinct !DILexicalBlock(scope: !192, file: !1, line: 44, column: 15)
!225 = !DILocation(line: 44, column: 15, scope: !224)
!226 = !DILocation(line: 44, column: 40, scope: !224)
!227 = !DILocation(line: 44, column: 15, scope: !192)
!228 = !DILocalVariable(name: "dat", scope: !229, file: !1, line: 45, type: !8)
!229 = distinct !DILexicalBlock(scope: !224, file: !1, line: 44, column: 49)
!230 = !DILocation(line: 45, column: 20, scope: !229)
!231 = !DILocation(line: 45, column: 39, scope: !229)
!232 = !DILocation(line: 45, column: 26, scope: !229)
!233 = !DILocalVariable(name: "i", scope: !234, file: !1, line: 46, type: !11)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 46, column: 9)
!235 = !DILocation(line: 46, column: 17, scope: !234)
!236 = !DILocation(line: 46, column: 13, scope: !234)
!237 = !DILocation(line: 46, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !1, line: 46, column: 9)
!239 = !DILocation(line: 46, column: 26, scope: !238)
!240 = !DILocation(line: 46, column: 9, scope: !234)
!241 = !DILocation(line: 47, column: 21, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 46, column: 36)
!243 = !DILocation(line: 47, column: 44, scope: !242)
!244 = !DILocation(line: 47, column: 48, scope: !242)
!245 = !DILocation(line: 47, column: 13, scope: !242)
!246 = !DILocation(line: 46, column: 32, scope: !238)
!247 = !DILocation(line: 46, column: 9, scope: !238)
!248 = distinct !{!248, !240, !249, !222}
!249 = !DILocation(line: 48, column: 9, scope: !234)
!250 = !DILocalVariable(name: "dat", scope: !251, file: !1, line: 50, type: !10)
!251 = distinct !DILexicalBlock(scope: !224, file: !1, line: 49, column: 12)
!252 = !DILocation(line: 50, column: 14, scope: !251)
!253 = !DILocation(line: 50, column: 27, scope: !251)
!254 = !DILocation(line: 50, column: 20, scope: !251)
!255 = !DILocalVariable(name: "i", scope: !256, file: !1, line: 51, type: !11)
!256 = distinct !DILexicalBlock(scope: !251, file: !1, line: 51, column: 9)
!257 = !DILocation(line: 51, column: 17, scope: !256)
!258 = !DILocation(line: 51, column: 13, scope: !256)
!259 = !DILocation(line: 51, column: 24, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 51, column: 9)
!261 = !DILocation(line: 51, column: 26, scope: !260)
!262 = !DILocation(line: 51, column: 9, scope: !256)
!263 = !DILocation(line: 52, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !1, line: 51, column: 36)
!265 = !DILocation(line: 52, column: 42, scope: !264)
!266 = !DILocation(line: 52, column: 46, scope: !264)
!267 = !DILocation(line: 52, column: 13, scope: !264)
!268 = !DILocation(line: 51, column: 32, scope: !260)
!269 = !DILocation(line: 51, column: 9, scope: !260)
!270 = distinct !{!270, !262, !271, !222}
!271 = !DILocation(line: 53, column: 9, scope: !256)
!272 = !DILocation(line: 55, column: 1, scope: !164)
!273 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 57, type: !274, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!274 = !DISubroutineType(types: !275)
!275 = !{!11}
!276 = !DILocalVariable(name: "x", scope: !273, file: !1, line: 58, type: !11)
!277 = !DILocation(line: 58, column: 9, scope: !273)
!278 = !DILocation(line: 59, column: 24, scope: !273)
!279 = !DILocation(line: 59, column: 5, scope: !273)
!280 = !DILocation(line: 60, column: 14, scope: !273)
!281 = !DILocation(line: 60, column: 5, scope: !273)
!282 = !DILocalVariable(name: "result", scope: !273, file: !1, line: 61, type: !11)
!283 = !DILocation(line: 61, column: 9, scope: !273)
!284 = !DILocation(line: 62, column: 23, scope: !273)
!285 = !DILocation(line: 62, column: 14, scope: !273)
!286 = !DILocation(line: 62, column: 12, scope: !273)
!287 = !DILocation(line: 63, column: 14, scope: !273)
!288 = !DILocation(line: 63, column: 5, scope: !273)
!289 = !DILocation(line: 64, column: 5, scope: !273)
