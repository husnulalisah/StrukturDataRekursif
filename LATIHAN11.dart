import 'dart:io';

void decToBinTail(int num, String result) {
  if (num == 0) {
    print(result); // Langsung mencetak hasil setelah rekursi selesai
    return;
  }
  decToBinTail(num ~/ 2, '${num % 2}$result'); // Menyusun hasil lebih awal
}