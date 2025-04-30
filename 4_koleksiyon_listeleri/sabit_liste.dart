void main(List<String> args) {

  print("Integer Liste ---");
  // Integer liste
  List<int> sayilar = List.filled(10, 0); // filled(eleman sayısı, elamalar)
  sayilar[2] = 7;
  print(sayilar[2]);
  print(sayilar);

  print("\nString Liste ---");
  // String liste
  List<String> sehirler = List.filled(5, "boş");
  sehirler[1] = "Zonguldak";
  sehirler[4] = "Ankara";

  for (String sehir in sehirler) {
    print(sehir);
  }

  print("\nKarışık Liste ---");
  // Karışık liste
  List karisik = List.filled(7, 0);
  karisik[0] = 50;
  karisik[1] = "veli";
  karisik[3] = true;

  print(karisik);

}
