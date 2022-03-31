import java.util.ArrayList;

public class Primes {
    private static boolean isPrime(int n, ArrayList<Integer> primes) {
        double sq = Math.sqrt(n);
        for (int i : primes) {
            if (i > sq) break;
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        long start = System.currentTimeMillis();
        ArrayList<Integer> primes = new ArrayList<>(500000);
        for (int i = 2; i < 1000000; i++) {
            if (isPrime(i, primes)) {
                primes.add(i);
            }
        }
        System.out.println(primes.size() + " primes were found");
        System.out.println("Process finished in " + (System.currentTimeMillis() - start) + "ms");
    }
}
