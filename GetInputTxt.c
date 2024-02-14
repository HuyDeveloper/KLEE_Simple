#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>

void processKTestFile(const char* folderPath, const char* fileName, FILE* outputFile) {
    const char* extension = strrchr(fileName, '.');
    if (extension != NULL && strcmp(extension, ".ktest") == 0) {
        char filePath[256];
        snprintf(filePath, sizeof(filePath), "%s%s", folderPath, fileName);

        // Sử dụng ktest-tool để đọc nội dung từ file .ktest
        char command[256];
        snprintf(command, sizeof(command), "ktest-tool %s", filePath);

        FILE* ktestOutput = popen(command, "r");
        if (ktestOutput == NULL) {
            perror("Không thể mở ktest-tool");
            return;
        }

        char line[256];
        while (fgets(line, sizeof(line), ktestOutput) != NULL) {
            // Tìm dòng chứa "object 0: int" và lấy giá trị int
            if (strstr(line, "object 0: int") != NULL) {
                int intValue;
                if (sscanf(line, "object 0: int : %d", &intValue) == 1) {
                    // Ghi giá trị int xuống file.txt
                    fprintf(outputFile, "%d\n", intValue);
                    break;  // Đã tìm thấy giá trị int, không cần đọc nữa
                }
            }
        }

        pclose(ktestOutput);
    }
}

void processKTestFilesInFolder(const char* folderPath, FILE* outputFile) {
    DIR* dir = opendir(folderPath);
    if (dir == NULL) {
        perror("Không thể mở thư mục");
        return;
    }

    struct dirent* entry;
    while ((entry = readdir(dir)) != NULL) {
        processKTestFile(folderPath, entry->d_name, outputFile);
    }

    closedir(dir);
}

int main() {
    const char* folderPath = "klee-last/";

    FILE* outputFile = fopen("file.txt", "w");
    if (outputFile == NULL) {
        perror("Không thể mở tệp đầu ra");
        return 1;
    }

    processKTestFilesInFolder(folderPath, outputFile);

    fclose(outputFile);

    printf("Thông tin đã được ghi vào file.txt\n");

    return 0;
}

