#include <stdio.h>

int fatorial(int n){
    int aux;
    if(n <= 0){
        return 1;
    }else{
        return n * fatorial(n-1);
    }
}

int main(){
    int numero,fat;
    
    print("Digite um numero: ");
    gets(numero);
    fat = fatorial(numero);
    //fat = 1;
    print("O fatorial eh");
    print(fat);
}
