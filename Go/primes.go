package main

import (
	"fmt"
	"math"
	"time"
)


func isPrime(n int, primes []int) bool {
	sq := int(math.Sqrt(float64(n)))
	for _, i := range primes {
		if i > sq {
			break
		}
		if n % i == 0 {
			return false
		}
	}
	return true
}

func main() {
	start := time.Now()
	var primes []int
	for i := 2; i < 1000000; i++ {
		if isPrime(i, primes) {
			primes = append(primes, i)
		}
	}
	fmt.Printf("%d primes were found\n", len(primes))
	fmt.Printf("Process finished in %dms\n", time.Now().Sub(start).Milliseconds())
	fmt.Println(primes)
}