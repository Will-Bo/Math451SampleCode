#include <stdio.h>
#include <stdlib.h>

int N = 1500;

// part a
// double-precision accumulator summation
double firstSum(float nums[]){
    double sum = 0;

    for(int i = 0; i < N; i++){
        sum += nums[i];
    }

    return sum;
}

// part b
// single-precision accumulator summation
float secondSum(float nums[]){
    float sum = 0;

    for(int i = 0; i < N; i++){
        sum += nums[i];
    }

    return sum;
}

// part c
// Compensated summation algorithm (Kahan)
float thirdSum(float nums[]){
    float s = nums[0];
    float c = 0;
    for (int i = 1; i < N; i++){
        float y = nums[i] - c;
        float t = s + y;
        c = (t-s)-y;
        s = t;
    }

    return s;
}

// helper function --- sort
float* bubbleSort(float *nums){
    for(int i = 0; i < N-1; i++){
        for(int j = 0; j < N-i-1; j++){
            if (nums[j] > nums[j+1]){
                float tmp = nums[j];
                nums[j] = nums[j+1];
                nums[j+1] = tmp;
            }
        }
    }

    return nums;
}
// part d
// sum in increasing magnitude
float fourthSum(float nums[]){
    float sum = 0;

    float newNums[N];
    for (int i = 0; i < N; i++){
        newNums[i] = nums[i];
    }
    bubbleSort(newNums);

    for (int i = 0; i < N; i++){
        sum += newNums[i];
    }

    return sum;
}

// part e
// sum in decreasing magnitude
float fifthSum(float nums[]){
    float sum = 0;

    float newNums[N];
    for (int i = 0; i < N; i++){
        newNums[i] = nums[i];
    }
    bubbleSort(newNums);

    for (int i = N-1; i > -1; --i){
        sum += newNums[i];
    }

    return sum;
}



int main(){
    float nums[N];
    for (int i = 0; i < N; i++){
        nums[i] = rand() / (float)RAND_MAX;
    }

    printf("%f\n", firstSum(nums));
    printf("%f\n", secondSum(nums));
    printf("%f\n", thirdSum(nums));
    printf("%f\n", fourthSum(nums));
    printf("%f\n", fifthSum(nums));

    return 0;
}
