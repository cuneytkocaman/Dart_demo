void main(List<String> args){
  int sayi = 5;
  
  Ogrenci ogrenci = Ogrenci();
  ogrenci.ad = "Ali";
  ogrenci.ogrenciNo = 12345;
  ogrenci.mezunMu = false;
  ogrenci.dersCalis();

  var ogrenci2 = Ogrenci();
  ogrenci2.ad = "Ayşe";
  ogrenci2.ogrenciNo = 67890;

print("\n${ogrenci2.ad}");

}

class Ogrenci{
  int? ogrenciNo;
  String? ad;
  bool? mezunMu;

  void dersCalis(){
    print("$ad ders çalışıyor.");
  }
}