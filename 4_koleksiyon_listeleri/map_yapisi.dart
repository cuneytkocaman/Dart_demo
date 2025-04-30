// Map yapısı: Anahtar-değer çiftleri tutar. Anahtarlar benzersizdir. Değerler tekrar edebilir.
void main(List<String> args) {
  print("Map yapısı ---------");
  
  Map<String, int> alanKodlari = {"zonguldak":372, "ankara":312, "istanbul":212, "izmir":232, "bursa":224}; // İlke değer key, ikinci değer value'dur.

  var bilgiler = <String, dynamic>{
    "ad":"Ebrar",
    "yas": 6,
    "ogrenciMi": true
  };

  var translate = Map<String, String>();
  translate["merhaba"] = "hello";
  translate["güle güle"] = "goodbye";
  translate["lütfen"] = "please";
  translate["teşekkürler"] = "thank you";

  print("\nMap'ın tamamı: $translate");
  print("Map içinden istenen key değeri: ${bilgiler["ad"]}");

  print("\nfor döngüsü ile Map'ın istenen değerleri listelendi: ");
  for(var eleman in alanKodlari.keys){ // İlk tanımlanan değer gezilir. value gezilmek istenirse .value yazılır. 
    print(eleman);
  }

  print("\nfor döngüsü ile Map'ın tüm değerleri listelendi: ");
  for(var eleman2 in translate.entries){ // .entries ile key-value çiftleri gezilir.
    print("${eleman2.key} kelimesinin karşılığı ${eleman2.value}");
  }
}