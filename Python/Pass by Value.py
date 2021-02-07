def checkPrime(x, primes):
    for value in primes:
        if x % value == 0:
            return False
    return True

def checkPrimeSlow(x):
    for value in range(x-1, 1, -1):
        if x % value == 0:
            return False
    return True


values = [2]
maxNum = 100000  # int(input("num: "))
for x in range(3, maxNum):
    if (checkPrime(x, values)):
    #if (checkPrimeSlow(x)):
        values.append(x)
print(values)
print(len(values))
