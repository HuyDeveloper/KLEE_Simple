#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void executeFileWithInput(const char* filePath, const char* options, const char* executablePath) {
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
        snprintf(command, sizeof(command), "%s %s %s" ,executablePath, options, line);

        // Thực thi lệnh
        system(command);
    }

    fclose(inputFile);
}

int main(int argc, char *argv[]) {

    const char* executablePath = "./CodeTestExe";

    // Determine input file path based on argument
    const char* inputFilePath;
    char inputFile[100];
    char *finding = strstr(argv[1], "1");
    if (finding != NULL){
    	sprintf(inputFilePath, "%s.input.txt", argv[2]);

    	sprintf(inputFile, "%s.output.txt", argv[2]);

    	executeFileWithInput(inputFilePath, inputFile, executablePath);
    } else {
	sprintf(inputFilePath, "%s.input.txt", argv[2]);

        sprintf(inputFile, "%s.output.clone.txt", argv[3]);

    	executeFileWithInput(inputFilePath, inputFile, executablePath);
    }
    return 0;
}
