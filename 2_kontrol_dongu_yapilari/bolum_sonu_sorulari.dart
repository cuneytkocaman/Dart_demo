// Faktöriyel Hesaplama

import 'dart:io';
void main(List<String> args){

  print("Sayı girin: ");
  int sayi = int.parse(stdin.readLineSync()!);
  int sonuc = 1;

  for (int i = 1; i <= sayi; i++){
    sonuc = sonuc * i;
  }

  print("Faktöriyel: $sonuc");
}