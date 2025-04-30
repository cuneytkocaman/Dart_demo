void main(List<String> args){
  print(sayilariTopla(5, 9)); // Opsiyonal s3 girilmedi.
  
  print(sayilariTopla(10, 21, 40));

  print(sayilariTopla2(sayi2: 18, sayi3: 21, sayi1: 25)); // Named parametrede değerler isimleri kullanılarak karışık gönderilebilir.
}

//Opsiyonel parametre
int sayilariTopla(int s1, int s2, [int s3 = 0]){ // Opsiyonel parametre []. Burada varsayılan değer 0 olarak verilir. Kullanıcı isterse girer.
  return s1 + s2 + s3;
}

//İsimlendirilmiş (named) parametre
int sayilariTopla2({int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}){ // Named parametrede varsayılan değer verilmelidir.  
  return sayi1 + sayi2 + sayi3;
}