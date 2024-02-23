#include<stdio.h>
#include<stdlib.h>
#include"./sample-code/get_sign.c"
#include"./SaveInput.cpp"
#include<klee/klee.h>


int main() {
    int x;
    klee_make_symbolic(&x, sizeof(x), "x");
    int result;
    result = get_sign(x);
    saveFile(result, "get_sign.output.txt");
    saveFile(x, "get_sign.input.txt");
    return 0;
}