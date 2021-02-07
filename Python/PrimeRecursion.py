# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.
import sys
sys.setrecursionlimit(0x100000)

def checkPrime(x):
    if x > 2:
        primes = checkPrime(x-1)
        for value in primes:
            if x % value == 0:
                return primes
        primes.append(x)
        return primes
    return([2])

print(checkPrime(30000))
