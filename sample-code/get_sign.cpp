#include <stdio.h>
using namespace std;

int get_sign(int &x) {
   if (x > 0) {
	   x = -1;
	   return 1;
   }
   else if (x < 0) return -1;
   else return -1;
}

int get_sign2(int &x) {
   if (x > 0) return 1;
   else if (x < 0) return -1;
   else return -1;
}
