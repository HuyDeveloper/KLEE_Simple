GetInput truyền 1 để tạo input1.txt, 2 để tạo input2.txt(status: ok)

ExecuteCode truyền thêm input file để thực hiện(status: ok) -> với 1 thực hiện lấy input1.txt thực thi CodeTest

CodeTest nhận input file giống trên kia để tạo output (status: pendding)(truyền thông qua ExecuteCode, sẽ có codetest1.exe truyền input1 tạo ra ouput11, truyền input1 vào codetest2.exe ra output12) => đem so sánh 2 output

CompareCode truyền 1 hoặc 2 để so sánh output 11 12 hoặc 21 22(ok)


Compile  CreateTest.c(caller func1) sang bc.
> ```clang -emit-llvm -c  CreateTest.c```

> ```klee CreateTest.bc```
> 
Compile GetInputTxt.c sang exe.
> ```clang GetInputTxt.c -o GetInputExe```

> ```./GetInputExe %d%(Với d là 1 hoặc 2)```
Compile CodeTest.c(caller function 2) sang exe
```clang  CodeTest.c -o CodeTestExe```
Compile ExecuteCode.c sang exe
```clang ExecuteCode.c -o ExecuteExe```
```./ExecuteExe %d% #(d là 1 hoặc 2 để chọn file input)```
Compile CompareCode.c sang exe
```clang CompareCode.c -o CompareExe```
