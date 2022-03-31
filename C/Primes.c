#include <stdio.h>
#include <time.h>
#include <stdbool.h>
#include <math.h>

bool checkPrime(int x, int *primes, int index) {
    double sq = sqrt(x);
    for(int i = 0; i < index && primes[i] <= sq; ++i)  {
        if (x % primes[i] == 0){
            return false;
        }
    }
    return true;
}

int main()
{
    int maxNum = 1000000;
    struct timespec start, end;
    clock_gettime(CLOCK_MONOTONIC_RAW, &start);

    int values[maxNum / 2];
    int index = 0;
    for (int x = 2; x< maxNum; ++x) {
        if (checkPrime(x, values, index)) {
            ++index;
        }
    }
    clock_gettime(CLOCK_MONOTONIC_RAW, &end);
    printf("found %d, \n", index);
    printf("Finished in ms: %ld\n", (end.tv_sec - start.tv_sec) * 1000 + (end.tv_nsec - start.tv_nsec) / 1000000);
}
