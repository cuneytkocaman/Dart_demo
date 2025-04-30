void main(List<String> args){
  print("Verilen sayının karesi: ${kareHesapla(19)}");
  print("Verilen sayının karesi (kısa metot): ${kareHesapla2(60)}");
  print("Max sayı: ${maxOlaniBul(7, 13)}");
}

int kareHesapla(int sayi){
  return sayi * sayi;
}

int kareHesapla2 (int sayi) => sayi * sayi; // Metot tek satırda, bu şekilde yazılabilir.

int maxOlaniBul (int a, int b) => (a > b) ? a : b; // Ternary operator ile max olanı bulma işlemi.