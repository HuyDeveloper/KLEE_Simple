#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

void executeCommand(const char* command) {
    system(command);
}

void waitForCommandCompletion() {
    int status;
    wait(&status);
    if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {
        printf("Command executed successfully.\n");
    } else {
        printf("Error waiting for command execution.\n");
    }
}

int main(int argc, char* argv[]) {
    if (argc != 5) {
        printf("Usage: %s <argument function1 function2>\n", argv[0]);
        return 1;
    }

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

    char executeExe1[100] = "./ExecuteExe 1 ";
    strcat(executeExe1, argv[1]);

    char executeExeClone1[100] = "./ExecuteExe 2 ";
    strcat(executeExeClone1, argv[3]);
    strcat(executeExeClone1, " ");
    strcat(executeExeClone1, argv[1]);

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

    char executeExe2[100] = "./ExecuteExe 1 ";
    strcat(executeExe2, argv[3]);

    char executeExeClone2[100] = "./ExecuteExe 2 ";
    strcat(executeExeClone2, argv[1]);
    strcat(executeExeClone2, " ");
    strcat(executeExeClone2, argv[3]);

    char executeCompare1[100] = "./CompareExe ";
    char executeCompare2[100] = "./CompareExe ";
    strcat(executeCompare1, argv[1]);
    strcat(executeCompare2, argv[3]);

    const char* commands[] = {
        "clang -o analyze_function analyze-function.c -lclang -I/usr/lib/llvm-14/include",
        
        "clang call-function.c -o call-function",

        "clang++ -o call-function-main call-function-main.c",
        
	"clang ExecuteCode.c -o ExecuteExe",

	analyzeFunction1,

	callFunction1,
        "clang++ -emit-llvm -c generated_code.c",
        "klee --external-calls=all generated_code.bc",

	analyzeFunction2,

	callFunction2,
        "clang++ -emit-llvm -c generated_code.c",
        "klee --external-calls=all generated_code.bc",

        callFunctionMain1,
        "clang++ generated_code_main.c -o CodeTestExe",
        executeExe1,
	executeExeClone1,

	callFunctionMain2,
        "clang++ generated_code_main.c -o CodeTestExe",
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
