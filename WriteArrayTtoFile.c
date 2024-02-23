void saveFile(void* data, char dataType[], char filename[]) {
    FILE* output_file = fopen(filename, "a");

    // Error handling: Check if file opened successfully
    if (!output_file) {
        printf("Error opening output file\n");
        return;
    }
    if (strstr(dataType, "char") != NULL) {
        fprintf(output_file, "%s\n", (char*)data);
    } else if ((strstr(dataType, "float") != NULL) ||  (strstr(dataType, "double") != NULL)) {
        fprintf(output_file, "%f\n", *(double*)data);
    } else if(strstr(dataType, "long") != NULL) {
        fprintf(output_file, "%lld\n", *(long long*)data);
    } else {
        fprintf(output_file, "%d\n", *(int*)data);
    }

    // Close the file
    fclose(output_file);
}

void saveArrayFile(void* data, char dataType[], char filename[]) {
    FILE* output_file = fopen(filename, "a");

    // Error handling: Check if file opened successfully
    if (!output_file) {
        printf("Error opening output file\n");
        return;
    }
    if (strstr(dataType, "char") != NULL) {
        fprintf(output_file, "%s\n", (char*)data);
    } else if ((strstr(dataType, "float") != NULL) ||  (strstr(dataType, "double") != NULL)) {
        double *dat = (double*) data;
        for(int i = 0; i < 100; i++) {
            fprintf(output_file, "%f\n", dat[i]);
        }
    } else if(strstr(dataType, "long") != NULL) {
        long long *dat = (long long*) data;
        for(int i = 0; i < 5; i++) {
            fprintf(output_file, "%lld\n", dat[i]);
        }
    } else {
        int *dat = (int*) data;
        for(int i = 0; i < 5; i++) {
            fprintf(output_file, "%d\n", dat[i]);
        }
    }

    // Close the file
    fclose(output_file);
}
