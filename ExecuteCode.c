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

        // Xây dựng lệnh với dữ liệu từ input.txt
        snprintf(command, sizeof(command), "%s %s", executablePath, line);
        printf("%s\n", command);

        // Thực thi lệnh
        system(command);
    }

    fclose(inputFile);
}

int main() {
    // Đường dẫn đến tệp "input.txt"
    const char* inputFilePath = "file.txt";

    const char* executablePath = "./CodeTestExe";

    executeFileWithInput(inputFilePath, executablePath);

    return 0;
}

