import 'dart:io';

void main(List<String> args) {

  print("Adınızı girin: ");
  var data =stdin.readLineSync(); // Kullanıcıdan veri almak için kullanılır. Bu satır, kullanıcıdan veri almak için bir satır okuma işlemi başlatır.

  print("Yaşınız: ");
  var yas = int.parse(stdin.readLineSync()!); // Ünlem işareti (!) null değer dönebilir. Bu nedenle, bu değeri kullanmadan önce kontrol etmemiz gerekir. 
                                              // Bu durumda, kullanıcıdan alınan verinin bir tamsayıya dönüştürülmesi gerektiği için int.parse() fonksiyonu kullanılır. 
                                              // Bu fonksiyon, bir String'i tamsayıya dönüştürür. Eğer dönüşüm başarısız olursa, bir hata fırlatır.

  print("Adınız: $data, yaşınız: ${yas + 5}");

}
