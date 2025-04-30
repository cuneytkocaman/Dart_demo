// SET YAPISI: {} parantez ile gösterilir. Listeler [] parantez ile gösterilir. Benzersiz elemanlar tutar. Indexlerle elemanlara erişilmez.
void main(List<String> args) {
  print("\nSayılar Set yapısı ---------");
  Set<int> tekSayilar = Set();
  tekSayilar.add(1);
  tekSayilar.add(7);
  tekSayilar.add(19);
  tekSayilar.add(3);
  tekSayilar.add(5);
  tekSayilar.add(19);

  Set<int> ciftSayilar = Set();
  ciftSayilar.add(6);
  ciftSayilar.add(4);
  ciftSayilar.add(4);
  ciftSayilar.add(8);

  print("Tek sayılar: $tekSayilar");
  print("Çift sayılar: $ciftSayilar"); // Set yapısı tekrar eden elemanları almaz.

  var sayilar = <int>{}; // Set yapısı bu şekilde de oluşturulabilir.
  sayilar.addAll(tekSayilar); // tekSayilar setini sayilar setine ekle.
  sayilar.addAll(ciftSayilar); // ciftSayilar setini sayilar setine ekle.
  print("addAll metodundan sonra: $sayilar");

  print("\nMetin Set yapısı ---------");

  var meyveler = <String>{}; // Set yapısı bu şekilde de oluşturulabilir.
  meyveler.add("Kiraz");
  meyveler.add("Çilek");
  meyveler.add("Karpuz");
  meyveler.add("Muz");
  meyveler.add("Muz");
  meyveler.add("KarpuZ");
  print(meyveler);

  print("\nSpread Operator (...) ---------"); // Listeleri birleştirmek için kullanılır.
  sayilar.clear();
  sayilar = <int>{...tekSayilar, ...ciftSayilar, ...[8, 96, 11, 5, 8, 11, 67, 8]};
  print("Spread operatöründen sonra: $sayilar"); 

  print("\nfrom metodu ---------"); // Liste gibi bir veri yapısını Set'e dönüştürmek için kullanılır. Bir koleksiyondan tekrar eden değerleri temizlemek için kullanılır.
                                     // Benzersiz elemanlarla işlem yapmak için kullanılır
  var numaralar = Set.from([1 ,1, 2, 3, 4, 5, 6, 7, 8, 9, 5, 1]);
  print(numaralar); 

}
