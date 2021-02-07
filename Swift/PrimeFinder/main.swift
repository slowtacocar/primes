//
//  main.swift
//  PrimeFinder
//
//  Created by Jeff George on 2/6/21.
//

import Foundation

var values:[Int] = [2]

func checkPrime(x: Int) -> Bool {
    for value in values {
        if (x % value == 0){
            return false;
        }
    }
    return true;
}

//if let value = readLine(), let maxNum = Int(value) {
NSLog("Start")
var maxNum = 200000
    for x in 3...maxNum {
        if (checkPrime(x: x)) {
            values.append(x)
        }
        }
    print(values)
NSLog("Finish")
