void writeInputtoFile(void* array, size_t size, size_t elemSize, const char* dataType) {
    FILE* output_file = fopen("output.txt", "a");

    // Error handling: Check if file opened successfully
    if (!output_file) {
        printf("Error opening output file\n");
        return;
    }

    char* base = (char*)array;

    for (size_t i = 0; i < size; i++) {
        if (strcmp(dataType, "int") == 0) {
            int current = *(int*)(base + i * elemSize);
            printf("%d", current);
            fprintf(output_file, "%d ", current);
        } else if (strcmp(dataType, "float") == 0) {
            float current = *(float*)(base + i * elemSize);
            printf("%f", current);
            fprintf(output_file, "%f ", current);
        } else {
            // Handle unsupported data types or display an error
            printf("Unsupported data type\n");
            break;
        }
    }

    fprintf(output_file, "\n");
    fclose(output_file);
}
