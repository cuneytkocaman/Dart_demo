void main(List<String> args) {
  
  // Sayısal veri tipleri
  int sayi1 = 10; // Tam sayı
  double sayi2 = 10.5; // Ondalık sayı
  num sayi3 = 30; // Tam sayı veya ondalık sayı alabilir
  num sayi4 = 30.5; // Tam sayı veya ondalık sayı alabilir
  
  print(sayi1); // Konsola yazdırma işlemi
  print(sayi2); // Konsola yazdırma işlemi
  print(sayi3); // Konsola yazdırma işlemi
  print(sayi4); // Konsola yazdırma işlemi

  var sayi5 = 1987; // Tam sayı, var ile tanımlandığında türü otomatik belirlenir
  print(sayi5);
  sayi5 = 211.5.toInt();
  print(sayi5); // Konsola yazdırma işlemi
  
}