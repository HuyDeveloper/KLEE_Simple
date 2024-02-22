enum DataType {
    INT,
    FLOAT,
    STRING
};

// Hàm generic để ghi kết quả vào file
void writeResultToFile(void* data, enum DataType dataType) {
    FILE* output_file = fopen("output.txt", "a");

    // Error handling: Check if file opened successfully
    if (!output_file) {
        printf("Error opening output file\n");
        return;
    }

    // Write the result to the file, including proper formatting based on the data type
    switch (dataType) {
        case INT:
            fprintf(output_file, "%d\n", *(int*)data);
            break;
        case FLOAT:
            fprintf(output_file, "%f\n", *(float*)data);
            break;
        case STRING:
            fprintf(output_file, "%s\n", (char*)data);
            break;
        default:
            printf("Unsupported data type\n");
            break;
    }

    // Close the file
    fclose(output_file);
}
