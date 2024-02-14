#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int get_sign(int x) {
    if (x == 0) {
        return 0;
    } else if (x < 0) {
        return -1;
    } else {
        return 1;
    }
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <number>\n", argv[0]);
        return 1;
    }

    // Check if the first character is a digit or sign
    if (!isdigit(argv[1][0]) && argv[1][0] != '-' && argv[1][0] != '+') {
        printf("Invalid input: not a number\n");
        return 1;
    }

    // Convert the entire string to an integer
    int num = atoi(argv[1]);

    int result = get_sign(num);

    // Open output file in append mode ("a") to avoid overwriting
    FILE *output_file = fopen("output.txt", "a");

    // Error handling: Check if file opened successfully
    if (!output_file) {
        printf("Error opening output file\n");
        return 1;
    }

    // Write the result to the file, including proper formatting
    fprintf(output_file, "%d\n", result);

    // Close the file
    fclose(output_file);

    // Print the result to the console (optional)
    printf("Sign of %d is: %d\n", num, result);

    return 0;
}
