import java.util.ArrayList;

public class Primes {
    private static boolean isPrime(int n, ArrayList<Integer> primes) {
        for (int i : primes) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        long start = System.currentTimeMillis();
        ArrayList<Integer> primes = new ArrayList<>();
        for (int i = 2; i < 200000; i++) {
            if (isPrime(i, primes)) {
                primes.add(i);
            }
        }
        System.out.println("Primes: ");
        System.out.println(primes);
        System.out.println(primes.size() + " primes were found");
        System.out.println("Process finished in " + (System.currentTimeMillis() - start) + "ms");
    }
}
