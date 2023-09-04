#include<stdio.h>

int main(){
    float r = 0.05;
    int a = 100;
    int n[] = {1, 4, 12, 365, 100000};

    for (int i = 0; i < 5 ; i++){
        float tmp = 1;
        for (int j = 0; j < n[i]; j++){
            tmp *= (1 + r/n[i]);
        }
        float sol = a * tmp;

        printf("%d, %f\n", n[i], sol);
    }
}
