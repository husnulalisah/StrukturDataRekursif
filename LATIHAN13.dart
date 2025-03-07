int fTail(int n, int f0, int f1, int f2) {
  if (n == 0) return f0;
  if (n == 1) return f1;
  if (n == 2) return f2;
  
  return fTail(n - 1, f1, f2, 2 * f0 + f1);
}

int f(int n) {
  return fTail(n, 0, 1, 1); // Inisialisasi nilai dasar
}

void main() {
  int n = 6; // Contoh nilai n
  print(f(n)); // Menampilkan hasil f(6)
}
