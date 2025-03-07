import 'dart:io';

void DisplayAwal() {
  print("GEROBAK FRIEND CHICKEN");
  print("------------------------------------------------");
  print("kode\t\tJenis\t\tHarga");
  print("------------------------------------------------");
  print("D\t\tDada\t\tRp. 2.500,00");
  print("P\t\tPaha\t\tRp. 2.000,00");
  print("S\t\tSayap\t\tRp.1.500,00");
  print("------------------------------------------------");
}

void main() {
  Map<String, Map<String, dynamic>> menu = {
    'D': {'Jenis': "Dada", 'harga': 2500.00},
    'P': {'Jenis': "Paha", 'harga': 2000.00},
    'S': {'Jenis': "Sayap",'harga': 1500.00},
  };


  Map<int, Map<String, dynamic>> hasilBelanja = {};
  double total = 0;

  double pajak = 0.1;
  


  DisplayAwal();

  stdout.write("Masukan Jumlah Jenis Belanjaan : ");
  int JumlahJenis = int.parse(stdin.readLineSync() ?? '' );

  for (int noBelanja = 1; noBelanja <= JumlahJenis; noBelanja++) {
    print("\nJenis belanja ke - $noBelanja");
    stdout.write("Pili Jenis = berdasarkan kode: " );
    var inputJenis = stdin.readLineSync() ?? "";

    if (!menu.keys.contains(inputJenis)) {
      print("mohon masukan data yang bener!!");
    } else {
      try {
        stdout.write("berapa potong yang ingin dibeli :");
        int inputPotong = int.parse(stdin.readLineSync() ?? '' );

        var JenisPesanan = menu[inputJenis]!['Jenis'];
        var hargaSatuan = menu[inputJenis]!['harga'];
        var JumlahHarga = hargaSatuan * inputPotong;

        hasilBelanja[noBelanja] = {
          'Jenis' :JenisPesanan,
          'harga' :hargaSatuan,
          'banyak':inputPotong,
          'Jumlah':JumlahHarga,
        };
      } catch (e) {
        print("Harap masukan input yang benar!");
      }
    }
  }

  print("\nTOTAL PEMBELIAN GEROBAK FRIEND CHIKEN");
  print("-----------------------------------------------------------------------------------------------------");
  print("Nomer\t\tJenis\t\tHarga\t\tbanyak\t\tjumlah uang");
  print("-----------------------------------------------------------------------------------------------------");
  hasilBelanja.forEach((kode, item) {
  print("$kode\t\t${item['Jenis']}\t\tRp.${item['harga']. toStringAsFixed(2)}\t\t${item['banyak'].toStringAsFixed(2)}\t\tRp.${item['Jumlah'].toStringAsFixed(2)}");
  total += item['Jumlah'];
  });
  print("-----------------------------------------------------------------------------------------------------");

  double pajakTotal = total * pajak;
  double totalDenganPajakTotal = total + pajakTotal;

 print("Jumlah total : \t\t\t\t\t\t\t\t Rp.${(total.toStringAsFixed(2))}");
 print("Pajak 10% : \t\t\t\t\t\t\t\t Rp.${(pajakTotal.toStringAsFixed(2))}");
 print("Jumlah total + pajak : \t\t\t\t\t\t\t\t Rp.${(totalDenganPajakTotal.toStringAsFixed(2))}");
}