void main(List<String> args){

  disDongu : for (int i = 0; i <= 10; i++){ // Döngülere etiket verilebilir.
    icDongu : for (int j =0; j <= 10; j++){
      
      if(i == 4){
        break disDongu;
      }
      print("$i x $j = ${i * j}");
    }
  }
}