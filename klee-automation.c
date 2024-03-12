#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <unistd.h>
#include <limits.h>
void executeCommand(const char* command) {
    system(command);
}

void waitForCommandCompletion() {
    int status;
    wait(&status);
}

int directoryExists(const char* path) {
    struct stat info;

    // Sử dụng hàm stat để kiểm tra sự tồn tại của thư mục
    return stat(path, &info) == 0 && S_ISDIR(info.st_mode);
}

void createDirectory(const char* path) {
    // Sử dụng hàm _mkdir để tạo thư mục
    if (mkdir(path, 0777) == 0) {
        printf("Thư mục '%s' đã được tạo.\n", path);
    } else {
        printf("Không thể tạo thư mục '%s'.\n", path);
    }
}

void removeDirectory(const char* path) {
    char command[PATH_MAX + 7]; // 7 là độ dài của chuỗi "rm -rf "
    snprintf(command, sizeof(command), "rm -rf %s", path);
	
    if (system(command) == 0) {
        printf("Thư mục '%s' đã bị xóa.\n", path);
    } else {
        printf("Không thể xóa thư mục '%s'.\n", path);
    }
}

int main(int argc, char* argv[]) {
    if (argc != 5) {
        printf("Usage: %s <argument function1 function2>\n", argv[0]);
        return 1;
    }

    char currentPath[PATH_MAX];
    if (getcwd(currentPath, sizeof(currentPath)) == NULL) {
        fprintf(stderr, "Lỗi khi lấy đường dẫn.\n");
        return 1;
    }

    char originalPath[PATH_MAX];
    strcpy(originalPath, currentPath);


    //Tạo ra thư mục input1
    char folderPath[PATH_MAX];
    sprintf(folderPath, "%s/%s-input", currentPath, argv[1]);

    if (directoryExists(folderPath)) {
        // Thư mục tồn tại, xóa nó
        removeDirectory(folderPath);
    }

    // Tạo thư mục mới
    createDirectory(folderPath);

    //Tạo ra thư mục input2
    sprintf(folderPath, "%s/%s-input", currentPath, argv[3]);

    if (directoryExists(folderPath)) {
        // Thư mục tồn tại, xóa nó
        removeDirectory(folderPath);
    }

    // Tạo thư mục mới
    createDirectory(folderPath);

    if (chdir(originalPath) != 0) {
        perror("Lỗi khi chuyển về thư mục làm việc ban đầu");
        return 1;
    }

    strcpy(folderPath, "");

    //Tạo ra output
    sprintf(folderPath, "%s/output", currentPath);

    if (directoryExists(folderPath)) {
        // Thư mục tồn tại, xóa nó
        removeDirectory(folderPath);
    }

    // Tạo thư mục mới
    createDirectory(folderPath);


    char analyzeFunction1[100] = "./analyze_function ";
    strcat(analyzeFunction1,argv[2]);
    strcat(analyzeFunction1," ");
    strcat(analyzeFunction1,argv[1]);

    char callFunction1[100] = "./call-function ";
    strcat(callFunction1,argv[1]);
    strcat(callFunction1, " ");
    strcat(callFunction1,argv[2]);

    char callFunctionMain1[100] = "./call-function-main ";
    strcat(callFunctionMain1,argv[1]);
    strcat(callFunctionMain1, " ");
    strcat(callFunctionMain1,argv[2]);

    char executeExe1[100] = "./ExecuteExe ";
    strcat(executeExe1, argv[1]);
    strcat(executeExe1, " 1");

    char executeExeClone1[100] = "./ExecuteExe ";
    strcat(executeExeClone1, argv[1]);
    strcat(executeExeClone1, " 2 ");
    strcat(executeExeClone1, argv[3]);

    //file2
    char analyzeFunction2[100] = "./analyze_function ";
    strcat(analyzeFunction2,argv[4]);
    strcat(analyzeFunction2," ");
    strcat(analyzeFunction2,argv[3]);

    char callFunction2[100] = "./call-function ";
    strcat(callFunction2,argv[3]);
    strcat(callFunction2, " ");
    strcat(callFunction2,argv[4]);

    char callFunctionMain2[100] = "./call-function-main ";
    strcat(callFunctionMain2,argv[3]);
    strcat(callFunctionMain2, " ");
    strcat(callFunctionMain2,argv[4]);

    char executeExe2[100] = "./ExecuteExe ";
    strcat(executeExe2, argv[3]);
    strcat(executeExe2, " 1");

    char executeExeClone2[100] = "./ExecuteExe ";
    strcat(executeExeClone2, argv[3]);
    strcat(executeExeClone2, " 2 ");
    strcat(executeExeClone2, argv[1]);

    char executeCompare1[100] = "./CompareExe ";
    char executeCompare2[100] = "./CompareExe ";
    strcat(executeCompare1, argv[1]);
    strcat(executeCompare2, argv[3]);

    char clang1[256];
    sprintf(clang1, "clang++ -emit-llvm -c %s_generated_code.c", argv[1]);

    char clang2[256];
    sprintf(clang2, "clang++ -emit-llvm -c %s_generated_code.c", argv[3]);

    char klee1[256];
    sprintf(klee1, "klee --external-calls=all %s_generated_code.bc", argv[1]);

    char klee2[256];
    sprintf(klee2, "klee --external-calls=all %s_generated_code.bc", argv[3]);

    char clangMain1[256];
    sprintf(clangMain1, "clang++ %s_generated_code_main.c -o CodeTest", argv[1]);

    char clangMain2[256];
    sprintf(clangMain2, "clang++ %s_generated_code_main.c -o CodeTest", argv[3]);

    const char* commands[] = {
        "clang -o analyze_function analyze-function.c -lclang -I/usr/lib/llvm-14/include",
        
        "clang call-function.c -o call-function",

        "clang++ -o call-function-main call-function-main.c",
        
	"clang ExecuteCode.c -o ExecuteExe",

	analyzeFunction1,
	callFunction1,
        clang1,
        klee1,

	analyzeFunction2,
	callFunction2,
        clang2,
        klee2,

        callFunctionMain1,
        clangMain1,
        executeExe1,
	executeExeClone1,

	callFunctionMain2,
        clangMain2,
        executeExe2,
        executeExeClone2,

	"clang CompareCode.c -o CompareExe",
	executeCompare1,
	executeCompare2

    };

    for (int i = 0; i < sizeof(commands) / sizeof(commands[0]); ++i) {
        executeCommand(commands[i]);
        waitForCommandCompletion();
    }

    return 0;
}
