#include <klee/klee.h>
#include <stdio.h>
int get_sign2(int x) {
  if (x == 0)
    return 0;

  if (x < 0)
    return -1;
  else
    return 1;
}

int get_sign(int x) {
  if (x == 0)
    return 0;

  if (x < 0)
    return -1;
  else
    return 1;
}

int foo1(int *a) {
   a[1] = "2";
}

int foo2(int *a) {
   a[1] = "3";
}
int main(int argc, char *argv[]) {
   int x;
}
