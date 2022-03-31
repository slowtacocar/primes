import math
import time

primes = []


def is_prime(i):
    sq = math.sqrt(i)
    for j in primes:
        if j > sq:
            break
        if i % j == 0:
            return False
    return True


def main():
    start = time.time()
    for i in range(2, 1000000):
        if is_prime(i):
            primes.append(i)
    print(f"{len(primes)} primes were found")
    print(f"Finished in {int((time.time() - start) * 1000)} ms")


if __name__ == "__main__":
    main()
