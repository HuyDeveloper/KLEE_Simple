#include<stdio.h>
#include<stdlib.h>
#include"./sample-code/get_sign.c"
#include<klee/klee.h>


int main() {
    int x[10];
    klee_make_symbolic(&x, sizeof(x), "x");
    int result;
    result = get_sign(x);
    FILE *output_file = fopen("input.txt", "a");

    // Error handling: Check if file opened successfully
    if (!output_file) {
        printf("Error opening output file\n");
        return 1;
    }

    // Write the result to the file, including proper formatting
    int i = 0; //Re-initialise i.
    while ( i<10 ) {
         fprintf(output_file, "%d ", x[i]);
         i++;
    }

    fprintf(output_file, "\n");

    // Close the file
    fclose(output_file);
    return 0;
}
