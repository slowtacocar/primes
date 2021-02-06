function isPrime(n, primes) {
  for (const i of primes) {
    if (n % i === 0) {
      return false;
    }
  }
  return true;
}

const start = Date.now();
const primes = [];
for (let i = 2; i < 200000; i++) {
  if (isPrime(i, primes)) {
    primes.push(i);
  }
}
console.log("Primes: ");
console.log(primes);
console.log(`${primes.length} primes were found`);
console.log(`Process finished in ${Date.now() - start}ms`);
process.exit(1);
