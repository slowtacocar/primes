#include <iostream>
#include <chrono>
#include <vector>
#include <cmath>

bool isPrime(int n, std::vector<int> &primes)
{
    double sq = sqrt(n);
    for (int i : primes)
    {
        if (i > sq) break;
        if (n % i == 0)
        {
            return false;
        }
    }
    return true;
}

int main()
{
    std::chrono::high_resolution_clock::time_point start = std::chrono::high_resolution_clock::now();
    std::vector<int> primes;
    primes.reserve(500000);
    for (int i = 2; i < 1000000; i++)
    {
        if (isPrime(i, primes))
        {
            primes.push_back(i);
        }
    }
    std::cout << primes.size() << " primes were found" << std::endl;
    std::cout << "Process finished in " << std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::high_resolution_clock::now() - start).count() << "ms" << std::endl;
}