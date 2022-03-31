//
//  main.swift
//  PrimeFinder
//
//  Created by Jeff George on 2/6/21.
//

import Foundation

var values:[Int] = []

func checkPrime(x: Int) -> Bool {
    let sq = Int(sqrt(Double(x)))
    for value in values {
        if (value > sq) {
            break
        }
        if (x % value == 0){
            return false
        }
    }
    return true
}

//if let value = readLine(), let maxNum = Int(value) {
let start = Date.timeIntervalSinceReferenceDate
let maxNum = 1000000
for x in 2...maxNum {
    if (checkPrime(x: x)) {
        values.append(x)
    }
}
print(values.count)
print("Finished in: \(Date.timeIntervalSinceReferenceDate - start)s")
