#include <stdio.h>
#include <time.h>

int checkPrime(int x, int *primes, int index) {

    for(int i = 0; i < index; i++)  {
        if (x % primes[i] == 0){
            return 0;
        }
    }
    return 1;
}

int main()
{
    time_t now;
    time(&now);
    printf("Today is : %s", ctime(&now));

    int maxNum = 1000000;
    printf("Started at: %s", ctime(&now));

	int aSize = (int)(maxNum / 2);
    int values[aSize];
    int index = 1;
    int found = 0;
    values[0] = 2;
    for (int x = 2; x< maxNum; x++) {
        if (checkPrime(x, values, index) == 1) {
            values[index++] = x;
            found++;
            printf("%d, ", x);
        }
    }
    printf("\nfound %d, ", found);

    time(&now);
    printf("\nFinished at: %s", ctime(&now));

}
