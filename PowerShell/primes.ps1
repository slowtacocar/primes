function isPrime {
    param ($n, $primes)

    foreach ($i in $primes) {
        if ($n % $i -eq 0) {
            return $false
        }
    }
    return $true
}

$primes = @()
foreach ($i in 2..200000) {
    if (isPrime $i $primes) {
        $primes += $i
    }
}
Write-Output "Primes: "
Write-Output $primes
Write-Output ("{0} primes were found" -f $primes.count)
