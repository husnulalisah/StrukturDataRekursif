int faktorialIteratif(int n) {
    if (n < 0) {
        return -1;
    }   else if (n > 1) {
        int faktorial = 1;
        for (int i = n; i > 0; i--) {
            faktorial = faktorial * i; // faktorialRekrusif
        }
        return faktorial;
    }   else {
        return 1;
    }
}

int faktorialRekursif(int n) {
    if (n < 0) {
        return -1;
    }   else if (n == 1) {
        return 1;
    }   else {
        return n * faktorialIteratif(n -1);
    }
}

void main() {
  print(faktorialRekursif(3));
}
