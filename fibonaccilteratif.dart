int fibonacciIteratif(int n) {
    int fibo = 0, f1 = 1, f2 = 1;
    if (n == 1 || n == 2) {
        return 1;
    }   else {
        for (int i = 3; i <= n; i++) {
            fibo = f1 + f2;
            f1 = f2;
            f2 = fibo;
        }
    }
    return fibo;
}

int fibonacciRekursif(int n) {
    if (n == 1 || n == 2) {
        return 1;
    }   else if (n < 0) {
        return -1;
    }   else {
        return fibonacciRekursif(n - 1) + fibonacci
    }
}