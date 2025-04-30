void main(List<String> args){
  
  List<int> sayilar = List.filled(4, 0, growable: true); // growable: true, liste boyutu değişebilir.
  List<int> sayilar2 = List.empty(growable: true); // Boş liste oluşturma. Liste boyutu değişebilir.
  List<int> sayilar3 = []; // Boş liste oluşturma. Liste boyutu değişebilir.

  sayilar.add(99);
  sayilar.add(21);
  sayilar.add(5632);

  sayilar3.add(863);

  print(sayilar.length); // liste boyutunu verir

  var metin = List<String>.empty(growable: true); // var ile liste oluşturulursa, listenin türü diğer tarafta verilebilir.
  metin.add("Mehmet");
}