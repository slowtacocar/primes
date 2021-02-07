values = [2]

def checkPrime(x):
    for value in values:
        if x % value == 0:
            return False
    return True

def checkPrimeSlow(x):
    for value in range(x-1, 1, -1):
        if x % value == 0:
            return False
    return True

if __name__ == '__main__':

    maxNum = 30000  # int(input("num: "))
    for x in range(3, maxNum):
        if (checkPrime(x)):
        #if (checkPrimeSlow(x)):
            values.append(x)
    print(values)
    print(len(values))
