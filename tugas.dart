void main() {
  Map<String, String> names = {};
  names["a"] = "apel";
  names[""] = "Hakim";

  print(names);

  print(names["i"]);
  names["p"] = "Poliwangi";
  print(names);
}