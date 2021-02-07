#include <iostream>
#include <vector>
#include <sys/resource.h>

std::vector<int> checkPrime(int x) {
if (x > 2) {
        std::vector<int> primes = checkPrime(x-1);
        for (int value:primes) {
            if(x % value == 0)
                return primes;
        }
        primes.push_back(x);
        return primes;
    }
    std::vector<int> temp (1,2);
    return(temp);
}


int main() {
    
    for (int value:checkPrime(60000)) {
        printf("%d, ", value);
    }
    return 0;
}
