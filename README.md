GetInput truyền 1 để tạo input1.txt, 2 để tạo input2.txt(status: ok)

ExecuteCode truyền thêm input file để thực hiện(status: ok) -> với 1 thực hiện lấy input1.txt thực thi CodeTest

CodeTest nhận input file giống trên kia để tạo output (status: pendding)(truyền thông qua ExecuteCode, sẽ có codetest1.exe truyền input1 tạo ra ouput11, truyền input1 vào codetest2.exe ra output12) => đem so sánh 2 output

CompareCode truyền 1 hoặc 2 để so sánh output 11 12 hoặc 21 22(ok)

Bước 1: Phân tích các thông tin của function
> ```clang -o analyze_function analyze-function.c -lclang -I/usr/lib/llvm-14/include```

và chạy file exe analyze-function

> ```./analyze_function path-to-file-source name-of-the-function```

Một file chứa các thông tin của hàm sẽ được tạo ra theo tên hàm.

Bước 2: Tạo file source template theo KLEE
> ```clang call-function.c -o call-function```

Và chạy file exe
> ```./call-function  file-contains-information path-to-the-file-source```

Một file generated_code.c sẽ được tạo ra.

Bước 3: Tạo file source không có KLEE
> ```clang call-function-main.c -o call-function```

Và chạy file exe
> ```./call-function-main  file-contains-information path-to-the-file-source```

Một file generated_code_main.c sẽ được tạo ra.

Bước 2:
Compile  CreateTest.c(caller func1) sang bc.
> ```clang -emit-llvm -c  CreateTest.c```

> ```klee CreateTest.bc```
 
Compile GetInputTxt.c sang exe.
> ```clang GetInputTxt.c -o GetInputExe```

> ```./GetInputExe %d%(Với d là 1 hoặc 2)```

Compile CodeTest.c(caller function 2) sang exe.
> ```clang  CodeTest.c -o CodeTestExe```

Compile ExecuteCode.c sang exe.
> ```clang ExecuteCode.c -o ExecuteExe```

> ```./ExecuteExe %d% #(d là 1 hoặc 2 để chọn file input)```

Compile CompareCode.c sang exe.
> ```clang CompareCode.c -o CompareExe```
