function isPrime(n, primes) {
  const sq = Math.sqrt(n);
  for (const i of primes) {
    if (i > sq) break;
    if (n % i === 0) {
      return false;
    }
  }
  return true;
}

const start = Date.now();
const primes = [];
for (let i = 2; i < 1000000; i++) {
  if (isPrime(i, primes)) {
    primes.push(i);
  }
}
console.log(`${primes.length} primes were found`);
console.log(`Process finished in ${Date.now() - start}ms`);
