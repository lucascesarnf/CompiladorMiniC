
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int fat, n;
    printf("Insira um valor para o qual deseja calcular seu fatorial: \n");
    scanf("%d", &n);
    
    for(fat = 1; n > 1; n = n - 1)
        fat = fat * n;
    printf("\nFatorial calculado: %d \n", fat);
    return 0;
}