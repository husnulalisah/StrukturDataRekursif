void main() {
  Set<int> number = {};
  number.add(10);
  number.add(20);
  number.add(40);
  print("Set Data: ${number}");
  
  number.remove(20); 
  print(number);
  number.add(50);
  print(number);

  var mahasiswa = {"husnul", "nisa", "intan", "vina", true, 1, 0.5};
  mahasiswa.remove("vina");
  print(mahasiswa);

  mahasiswa.add("nisa");
  print(mahasiswa);
}