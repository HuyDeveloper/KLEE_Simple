#include <stdio.h>
#include <string.h>

char* chenChuoi(char chuoi[], char chuoiChen[]) {
    int doDaiChuoiChen = strlen(chuoiChen);
    int doDaiChuoi = strlen(chuoi);
    char final[256];
    int e = 0; // Sử dụng biến e thay vì i để tránh ghi đè biến i

    for (int i = 0; i < doDaiChuoi; i++) {
        if (chuoi[i] != '[') {
            final[e] = chuoi[i];
            e++;
        } else {
            final[e] = chuoi[i];
            e++;

            for (int j = 0; j < doDaiChuoiChen; j++) {
                final[e] = chuoiChen[j];
                e++;
            }
        }
    }

    final[e] = '\0'; // Đảm bảo chuỗi kết thúc bằng null
    return final;
}

int findArray(char mainString[]) {
    char array[] = "[]";

    char *finding = strstr(mainString, array);
    
    if(finding != NULL) {
	return 1;    
    }

    return 0;
}

int findPointer(char mainString[]) {
    char pointer[] = "*";

    char *finding = strstr(mainString, pointer);

    if(finding != NULL) {
	return 1;
    }

    return 0;
}

int main(int argc, char *argv[]) {
    
    char *fileInput = argv[1];
    char *fileImport = argv[2];

    FILE *inputFile = fopen(fileInput, "r");

    if (inputFile == NULL) {
        perror("Lỗi khi mở tệp tin");
        return 1;
    }

    char fileName[] = "generated_code.c";

    FILE *outputFile = fopen(fileName, "w");

    if (outputFile == NULL) {
        perror("Không thể mở tệp tin đầu ra");
        return 1;
    }

    fprintf(outputFile, "#include<stdio.h>\n");
    fprintf(outputFile, "#include\"%s\"\n", fileImport);
    fprintf(outputFile, "#include<stdlib.h>\n");
    fprintf(outputFile, "int main() {\n");
    fprintf(outputFile, "    int e = 1;\n");

    char functionName[256];
    char cursorInfo[256];
    char returnType[256];
    char argumentInfo[256];
    char argumentName[256][256];
    char argumentType[256][256];

    // Đọc thông tin từ tệp vào các biến
    fscanf(inputFile, "Function Name: %255[^\n]\n", functionName);
    fscanf(inputFile, "Cursor Info: %255[^\n]\n", cursorInfo);
    fscanf(inputFile, "Return Type: %255[^\n]\n", returnType);
    fscanf(inputFile, "Number of Arguments: %255[^\n]\n", argumentInfo);

    int numArguments;
    sscanf(argumentInfo, "%d", &numArguments); // Chuyển số lượng đối số từ chuỗi sang số nguyên

    printf("%s\n", functionName);
    printf("Cursor Info: %s\n", cursorInfo);
    printf("Return Type: %s\n", returnType);
    printf("Number of Arguments: %d\n", numArguments);

    // Đọc thông tin về các đối số
    for (int i = 1; i <= numArguments; i++) {
        // Đọc tên và kiểu của đối số
        fscanf(inputFile, "Argument %d Name=%255s Type: %255[^\n]\n", &i, argumentName[i - 1], argumentType[i - 1]);
        char type[10];   // Để lưu trữ kiểu dữ liệu
    	char brackets[10]; // Để lưu trữ chuỗi chứa các dấu ngoặc vuông
        if (sscanf(argumentType[i - 1], "%9[^[]%[^\n]%*c", type, brackets) == 2) {
		fprintf(outputFile, "    %s %s%s;\n", type, argumentName[i - 1], chenChuoi(brackets, "100"));
		if (strstr(argumentType[i-1], "char") == NULL) {
			fprintf(outputFile, "    for(int i = 0; i < 100;i++){\n");
			fprintf(outputFile, "        %s[i] = (%s) atof(argv[e]);\n",argumentName[i - 1], argumentType[i-1]);
			fprintf(outputFile, "    }\n");
		} else {
			fprintf(outputFile, "    %s = argv[e];\n",argumentName[i - 1]);
		}
		fprintf(outputFile, "    e++;\n");
    	} else if(findPointer(argumentType[i - 1]) == 1) {
		fprintf(outputFile, "    %s %s;\n", argumentType[i-1], argumentName[i - 1]);
		fprintf(outputFile, "    %s = (%s) malloc(100 * sizeof(%s));\n", argumentName[i-1],argumentType[i-1] , strtok(argumentType[i-1], " "));
		if (strstr(argumentType[i-1], "char") == NULL) {
                        fprintf(outputFile, "    for(int i = 0; i < 100;i++){\n");
                        fprintf(outputFile, "        %s[i] = (%s) atof(argv[e]);\n",argumentName[i - 1], argumentType[i-1]);
                        fprintf(outputFile, "    }\n");
		} else {
                        fprintf(outputFile, "    %s = argv[e];\n",argumentName[i - 1]);
                }
                fprintf(outputFile, "    e++;\n");
	} else {
		fprintf(outputFile, "    %s %s;\n", argumentType[i-1], argumentName[i - 1]);
		if (strstr(argumentType[i-1], "char") == NULL) {
			 fprintf(outputFile, "    %s = (%s) atof(argv[e]);\n",argumentName[i - 1], argumentType[i-1]);
		} else {
        		fprintf(outputFile, "    %s = argv[e];\n",argumentName[i - 1]);
		}
		fprintf(outputFile, "    e++;\n");
    	}

    }

    char *voidPosition = strstr(returnType, "void");

    if (voidPosition != NULL){
	fprintf(outputFile, "    %s(", functionName);
    } else {
	fprintf(outputFile, "    %s result;\n", returnType);
        fprintf(outputFile, "    result = %s(", functionName);
    }

    for (int i = 1; i < numArguments; i++) {
	fprintf(outputFile, "%s, ", argumentName[i-1]);
    }

    fprintf(outputFile, "%s);\n", argumentName[numArguments - 1]);

    fprintf(outputFile,"    FILE *output_file = fopen(\"output.txt\", \"a\");\n");

    // Error handling: Check if file opened successfully
    fprintf(outputFile,"    if (!output_file) {\n");
    fprintf(outputFile,"        printf(\"Error opening output file\");\n");
    fprintf(outputFile,"    return 1;\n");
    fprintf(outputFile,"}\n\n\n");

    // Write the result to the file, including proper formatting
    fprintf(outputFile,"    fprintf(output_file, \"\%\d\", result);\n");

    // Close the file
    fprintf(outputFile,"    fclose(output_file);\n");

    fprintf(outputFile, "    return 0;\n");
    fprintf(outputFile, "}");

    fclose(inputFile);

    return 0;
}

