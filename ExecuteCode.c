#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void executeFileWithInput(const char* filePath, const char* executablePath) {
    FILE* inputFile = fopen(filePath, "r");
    if (inputFile == NULL) {
        perror("Không thể mở tệp đầu vào");
        return;
    }

    char command[256];
    char line[256];

    while (fgets(line, sizeof(line), inputFile) != NULL) {
        // Loại bỏ ký tự mới dòng '\n' nếu có
        line[strcspn(line, "\n")] = '\0';
	printf("%s", line);
        // Xây dựng lệnh với dữ liệu từ input.txt
        snprintf(command, sizeof(command), "%s %s", executablePath, line);
        printf("%s\n", command);

        // Thực thi lệnh
        system(command);
    }

    fclose(inputFile);
}

int main(int argc, char *argv[]) {

    const char* executablePath = "./CodeTestExe";

    // Determine input file path based on argument
    const char* inputFilePath;
    if (argc == 2 && strcmp(argv[1], "1") == 0) {
        inputFilePath = "input1.txt";
    } else if (argc == 2 && strcmp(argv[1], "2") == 0) {
        inputFilePath = "input2.txt";
    } else {
        fprintf(stderr, "Usage: %s <argument (1 or 2)>\n", argv[0]);
        return 1;
    }

    executeFileWithInput(inputFilePath, executablePath);

    return 0;
}
