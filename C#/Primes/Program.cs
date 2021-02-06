using System;
using System.Collections;
using System.Diagnostics;

namespace Primes
{
    public class Program
    {
        static bool isPrime(int n, ArrayList primes)
        {
            foreach (int i in primes)
            {
                if (n % i == 0)
                {
                    return false;
                }
            }
            return true;
        }

        static void Main(string[] args)
        {
            var stopWatch = new Stopwatch();
            stopWatch.Start();
            var primes = new ArrayList();
            for (int i = 2; i < 200000; i++)
            {
                if (isPrime(i, primes))
                {
                    primes.Add(i);
                }
            }
            stopWatch.Stop();
            Console.WriteLine(primes.Count + " primes were found");
            Console.WriteLine("Process finished in " + stopWatch.ElapsedMilliseconds + "ms");
        }
    }
}
