package main

import (
	"fmt"
	"time"
)


func isPrime(n int, primes []int) bool {
	for _, i := range primes {
		if n % i == 0 {
			return false
		}
	}
	return true
}

func main() {
	start := time.Now()
	var primes []int
	for i := 2; i < 200000; i++ {
		if isPrime(i, primes) {
			primes = append(primes, i)
		}
	}
	fmt.Println("Primes: ")
	fmt.Println(primes)
	fmt.Printf("%d primes were found\n", len(primes))
	fmt.Printf("Process finished in %dms\n", time.Now().Sub(start).Milliseconds())
}