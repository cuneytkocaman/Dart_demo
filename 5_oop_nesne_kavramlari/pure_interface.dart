void main(List<String> args){ 
  Ucabilenler hayvan1 = Leylek(); // Leylek sınıfı Ucabilenler interface'ini implement ettiği için Ucabilenler tipinde bir değişkene atanabilir.
  hayvan1.uc();

  Hayvan hayvan2 = Kedi();
  hayvan2.
}

abstract interface class Ucabilenler{
  void uc();
}

abstract interface class Kosabilenler{
  void kos();
}

abstract interface class Yuzebilenler{
  void yuz();
}

abstract class Hayvan{

}

class Leylek extends Hayvan implements Ucabilenler{
  @override
  void uc() {
    print("Leylek uçabilir.");
  }

}

class Kedi extends Hayvan implements Kosabilenler, Yuzebilenler{
  @override
  void kos() {
    // TODO: implement kos
  }

  @override
  void yuz() {
    // TODO: implement yuz
  }
}