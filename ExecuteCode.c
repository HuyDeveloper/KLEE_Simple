#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char *function_name;
    char *cursor_info;
    char *return_type;
    char *number_of_arguments;
    char **argument_names;
    char **argument_types;
} FunctionInfo;

void free_function_info(FunctionInfo *info) {
    free(info->function_name);
    free(info->cursor_info);
    free(info->return_type);
    free(info->number_of_arguments);

    for (int i = 0; i < atoi(info->number_of_arguments); ++i) {
        free(info->argument_names[i]);
        free(info->argument_types[i]);
    }

    free(info->argument_names);
    free(info->argument_types);
}

void generate_input_paths(FunctionInfo *info, char ***inputFilePath, const char *outputPath) {
    int numArguments = atoi(info->number_of_arguments);

    // Cấp phát bộ nhớ cho mảng con trỏ đường dẫn
    *inputFilePath = (char **)malloc(numArguments * sizeof(char *));

    // Lặp qua từng đối số và cấp phát bộ nhớ cho đường dẫn
    for (int i = 0; i < numArguments; ++i) {
        (*inputFilePath)[i] = (char *)malloc(256);

        // Tạo đường dẫn và sao chép vào mảng
        sprintf((*inputFilePath)[i], "%s-input/%s.%s.input.txt",outputPath, info->argument_names[i], outputPath);
    }
}

void get_sign(const char *filename, FunctionInfo *info) {


    FILE *file = fopen(filename, "r");

    if (file == NULL) {
        perror("Error opening file");
        exit(EXIT_FAILURE);
    }

    char functionName[256];
    char cursorInfo[256];
    char returnType[256];
    char argumentInfo[256];
    fscanf(file, "Function Name: %255[^\n]\n", functionName);
    fscanf(file, "Cursor Info: %255[^\n]\n", cursorInfo);
    fscanf(file, "Return Type: %255[^\n]\n", returnType);
    fscanf(file, "Number of Arguments: %255[^\n]\n", argumentInfo);

    info->function_name = strdup(functionName);
    info->cursor_info = strdup(cursorInfo);
    info->return_type = strdup(returnType);
    info->number_of_arguments = strdup(argumentInfo);

    int numArguments = atoi(info->number_of_arguments);

    // Cấp phát bộ nhớ cho mảng các chuỗi
    info->argument_names = (char **)malloc(numArguments * sizeof(char *));
    info->argument_types = (char **)malloc(numArguments * sizeof(char *));

    for (int i = 0; i < numArguments; ++i) {
        info->argument_names[i] = (char *)malloc(256);
        info->argument_types[i] = (char *)malloc(256);

        fscanf(file, "Argument %*d Name=%255s Type: %255[^\n]\n", info->argument_names[i], info->argument_types[i]);
    }

    fclose(file);
}

int countLines(const char *filename) {
    FILE *file = fopen(filename, "r");

    if (file == NULL) {
        perror("Error opening file");
        return -1;  // Trả về -1 nếu không thể mở tệp
    }

    int count = 0;
    int ch;

    while ((ch = fgetc(file)) != EOF) {
        if (ch == '\n') {
            count++;
        }
    }

    fclose(file);
    return count;
}

char* readLineAtIndex(const char *filename, int index) {
    FILE *file = fopen(filename, "r");

    if (file == NULL) {
        perror("Error opening file");
        return NULL;
    }

    char *line = NULL;
    size_t len = 0;
    ssize_t read;

    int currentLine = 0;
    while ((read = getline(&line, &len, file)) != -1) {
        if (currentLine == index) {
            // Tìm thấy dòng cần đọc
            break;
        }
        currentLine++;
    }

    fclose(file);

    if (currentLine == index) {
        // Trả về dòng cần đọc, nhưng hãy nhớ giữ nguyên con trỏ dòng
        return line;
    } else {
        // Trả về NULL nếu không thể đọc dòng thứ i
        free(line);
        return NULL;
    }
}

void executeFileWithInput(const char** filePath, const char* executablePath, int numFiles) {
    int lineInFiles = countLines(filePath[0]);

    for (int i = 0; i < lineInFiles; i++) {
        char arg[numFiles][100];
        char command[500];

        // Reset command string cho mỗi vòng lặp
        strcpy(command, executablePath);

        for (int j = 0; j < numFiles; j++) {
            char *line = readLineAtIndex(filePath[j], i);
            if (line == NULL) {
                fprintf(stderr, "Error reading line from file %s\n", filePath[j]);
                exit(EXIT_FAILURE);
            }

            // Loại bỏ kí tự xuống dòng từ line
            line[strcspn(line, "\n")] = '\0';

            // Sao chép giá trị từ line vào arg[j]
            strncpy(arg[j], line, sizeof(arg[j]) - 1);
            arg[j][sizeof(arg[j]) - 1] = '\0';

            // Giải phóng bộ nhớ đã cấp phát cho line
            free(line);

            // Nối giá trị vào command
            strcat(command, " ");
            strcat(command, arg[j]);
        }

        // In và thực hiện command
        printf("%s\n", command);
        system(command);
    }
}

int main(int argc, char *argv[]) {
    if (argc != 4) {
        fprintf(stderr, "Usage: %s <name_function>\n", argv[0]);
        return EXIT_FAILURE;
    }

    char filename[256];
    char fileinput[256];
    printf("%s", argv[1]);
    char extensions[100];
    if (argv[2][0] == '1') {
        strcpy(extensions, ".output.txt");
	strcpy(filename, argv[1]);
    } else if (argv[2][0] == '2') {
        strcpy(extensions, ".output.clone.txt");
	strcpy(filename, argv[3]);
    } else {
        printf("Invalid extension code\n");
        return 1;
    }

    char executablePath[200];  // Increased size to accommodate longer paths
    // ./CodeTestExe
    sprintf(executablePath, "./CodeTest %s-output/%s%s", argv[1], argv[1], extensions);

    printf("Executable Path: %s\n", executablePath);
    FunctionInfo info = {NULL, NULL, NULL, NULL, NULL, NULL};
    char **inputFilePath = NULL;

    get_sign(filename, &info);
    // In ra thông tin
    // printf("Function Name: %s\n", info.function_name);
    // printf("Cursor Info: %s\n", info.cursor_info);
    // printf("Return Type: %s\n", info.return_type);
    // printf("Number of Arguments: %s\n", info.number_of_arguments);

    int numArguments = atoi(info.number_of_arguments);
    // for (int i = 0; i < numArguments; ++i) {
    //     printf("Argument %d Name: %s, Type: %s\n", i + 1, info.argument_names[i], info.argument_types[i]);
    // }

    // Tạo đường dẫn và in ra
    generate_input_paths(&info, &inputFilePath, filename);
    for (int i = 0; i < numArguments; ++i) {
        printf("Input File Path %d: %s\n", i + 1, inputFilePath[i]);
    }

    //Truyền inputFilePath, numArguments vô cái executeFileWithInput
    executeFileWithInput(inputFilePath, executablePath, numArguments);


    // Giải phóng bộ nhớ đã cấp phát
    free_function_info(&info);

    // Giải phóng bộ nhớ cho đường dẫn
    for (int i = 0; i < numArguments; ++i) {
        free(inputFilePath[i]);
    }
    free(inputFilePath);

    return 0;
}


