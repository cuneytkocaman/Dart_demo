/*SORU 1: Parametre olarak bir tane int sayı ve boolean değer(isimlendirilmiş) alan fonksiyon yazınız.
  Bu fonksiyon aldığı değere kadar olan sayıların toplamını geriye döndürsün. 
  Çıkan sonuç cift mi tek mi yazsın.*/

/*SORU 2: Daire alanını hesaplayan fonksiyonu yazınız, 
  PI sayısı opsyonel olmalı. Eğer PI sayısı verilmediyse varsayılan olarak 3,14 alarak hesaplama yapın. */

void main(List<String> args) {
  soru1(6, ciftMi: true);
  print("");
  print("Dairenin Alanı: ${soru2(r: 18, pi: 3)}"); // PI sayısı verilmediği için varsayılan değer 3.14 alır.
}

//SORU 1 ÇÖZÜMÜ
void soru1(int s, {bool ciftMi = true}) {
  int toplam = 0;
  for (int i = 1; i <= s; i++) {
    toplam = toplam + i;
  }
  print("Toplam: $toplam");

  toplam % 2 == 0 ? print("Çift mi: $ciftMi") : print("Çift mi: ${ciftMi == false}");
}

//SORU 2 ÇÖZÜMÜ

double soru2({double r = 0, double pi = 3.14}) {

  return pi * r * r;
}