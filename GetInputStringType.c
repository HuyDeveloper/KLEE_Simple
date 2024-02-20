void processKTestFile(const char* folderPath, const char* fileName, FILE* outputFile) {
    const char* extension = strrchr(fileName, '.');
    if (extension != NULL && strcmp(extension, ".ktest") == 0) {
        char filePath[256];
        snprintf(filePath, sizeof(filePath), "%s%s", folderPath, fileName);

        // Sử dụng ktest-tool �~Q�~C lấy n�~Yi dung từ file .ktest
        char command[256];
        snprintf(command, sizeof(command), "ktest-tool %s", filePath);

        FILE* ktestOutput = popen(command, "r");
        if (ktestOutput == NULL) {
            perror("Không th�~C m�~_ ktest-tool");
            return;
        }

        char line[256];

        while (fgets(line, sizeof(line), ktestOutput) != NULL) {
            // Tìm dòng chứa "object 0: text"
            if (strstr(line, "object 0: text") != NULL) {
                printf("%s\n", line);
                char textValue[256];
                if (sscanf(line, "object 0: text: %s", textValue) == 1) {
                    // Ghi giá tr�~K text xu�~Qng file.txt
                    fprintf(outputFile, "%s\n", textValue);
                    break;  // �~Pã tìm thấy giá tr�~K text, không cần duy�~Gt nữa
                }
            }
        }

        pclose(ktestOutput);
    }
}
