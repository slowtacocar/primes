//
//  main.swift
//  PrimeFinder
//
//  Created by Jeff George on 2/6/21.
//

import Foundation

func checkPrime(x: Int, primes: [Int]) -> Bool {
    for value in primes {
        if (x % value == 0){
            return false;
        }
    }
    return true;
}

var values = [2]


//if let value = readLine(), let maxNum = Int(value) {

var maxNum = 100000
    for x in 3...maxNum {
        if (checkPrime(x: x, primes: values)) {
            values.append(x)
        }
        }
    print(values)

