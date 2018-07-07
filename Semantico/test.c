#include <stdio.h>

int fatorial(int n){
    int aux;
    if(n <= 0){
        return 1.0;
    }else{
        return n * fatorial(n-1);
    }
}

int main(){
    int numero,fat;
    
    puts("Digite um numero: ");
    gets(numero);
    fat = fatorial(numero);
    
    puts("O fatorial eh");
    puts(fat);
}
