#include <stdio.h>
#include <stdlib.h>

int fatorial(int n) {
     int res; 
     if (n < 1) {
         res = 1;
     } else {
          int d;
          int t;
          t = n - 1;
          d = fatorial(t);
          res = n * d;
    }
    return res;
}

 int main() {
   printint(fatorial(5));
   return 0;
 }
