import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // soru1();
  // soru2();
  // soru3();
  // soru4();
  soru5();
}

void soru1() {
  print(
    "\n--- SORU 1: 0-100'e kadar rastgele sayı olusturup 100 elemanlı bir listede saklayın. ---",
  );

  List<int> sayilar = List.filled(100, 0);

  for (int i = 0; i < 100; i++) {
    int random = Random().nextInt(101);
    sayilar[i] = random;
  }

  print(sayilar);

  print("List eleman sayısı: ${sayilar.length} \n");

  Set<int> setSayilar = Set();
  setSayilar.addAll(sayilar);

  print(setSayilar);
  print("Set eleman sayısı: ${setSayilar.length}");
}

void soru2() {
  print(
    "\n--- SORU 2: Keyleri string, değerleri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın. ---",
  );

  Map<String, dynamic> bilgisayar = {
    "islemci_cekirdek_sayisi": 8,
    "ram_miktari": "16 GB",
    "ssd_var_mi": true,
  };

  for (var pc in bilgisayar.entries) {
    print("${pc.key} : ${pc.value}");
  }
}

void soru3() {
  print("\n ---SORU 3: Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı 0 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın. ---",);

  List<int> girilenSayilar = List.empty(growable: true);
  int sayi = -1;
  double ort = 0, toplam = 0;

  do{
    print("\nBir sayı giriniz: ");
    sayi = int.parse(stdin.readLineSync()!);

    if (sayi != 0) { // 0 girilmediği sürece listeye ekle.
      girilenSayilar.add(sayi);
    }
    
  } while (sayi != 0); // 0 girilene kadar döngü devam etsin.

  for (int i = 0; i < girilenSayilar.length; i++){ // Liste elemanlarını topla.
    toplam = toplam + girilenSayilar[i];
  }

  print("Liste elemanları: $girilenSayilar");

  ort = toplam / girilenSayilar.length; // Ortalamayı hesapla.

  print("Ortalama: $ort");

}

void soru4(){
  print("\n --- SORU 4 Adınızı, soyadınızı ve sevdiğiniz renkleri tutan bir map yapısı oluşturun. Sevdiğiniz renkler liste şeklinde olmalı. Aynı yapıda bir map daha oluşturup, bu map'te yakın arkadaşınızın bilgilerini tutun. Sonrasında bu iki yapıyı tek bir liste halinde ekrana yazdırın. ---");

  Map<String, Object> bilgiler = {
    "ad": "Ebrar",
    "soyad": "Kocaman",
    "sevdigim_renkler": ["Kırmızı", "Mor", "Yeşil"].toString(),
  };

  Map<String, Object> arkadasBilgileri = {
    "ad": "Zehra",
    "soyad": "Ak",
    "sevdigim_renkler": ["Sarı", "Pembe", "Kırmızı"].toString(),
  };

  var liste = [];
  liste.add(bilgiler);
  liste.add(arkadasBilgileri);

  print(liste);
  print("Birleştirilmiş Map yapıları: ${liste[0]['sevdigim_renkler']}"); // Farklı yazdırma şekilleri.

}

void soru5(){
  
  print("\n --- SORU 5: 0-100'e kadar rastgele 1000 tane sayı üretip bir listeye atın. Bu listeyi ekrana yazdırın. ---");

  List<int> randomNo = List.filled(100, 0);

  for(int i = 0; i < randomNo.length; i++){
    int random = Random().nextInt(21);
    randomNo[i] = random;
  }
  
  Map<int, int> sayilarMap = {}; // Map yapısı oluşturuldu.

  for(int sayi in randomNo){

    if(sayilarMap.containsKey(sayi)){ // containsKey ile sayının daha önce var olup olmadığı kontrol edildi.

      var tekrarSayisi = sayilarMap[sayi];
      tekrarSayisi = tekrarSayisi! + 1; // Eğer varsa 1 artırıldı.
      sayilarMap[sayi] = tekrarSayisi; // Map yapısına tekrar eklendi.
    
    } else{
      sayilarMap[sayi] = 1; // Eğer yoksa 1 olarak eklendi.
    }
  }

  print(sayilarMap);
}