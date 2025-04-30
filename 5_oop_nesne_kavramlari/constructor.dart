void main(List<String> args) {
  Araba araba = Araba("Mitsubishi", 2005);
  araba.arabaBilgileri();

  Araba araba2 = Araba("Honda", 1999);
  araba2.arabaBilgileri();

  Araba araba3 = Araba.sadeceMarkaAdi("Toyota"); // İsimlendirilmiş constructor.

  var araba4 = Araba.factoryConstructor("Subaru", 2011); // Factory constructor.
  araba4.arabaBilgileri(); 
}

class Araba {
  int? modelYili; 
  String? marka;

  Araba(String marka, int modelYili) {
    // Constructor
    this.marka = marka;
    this.modelYili = modelYili;
  }

  factory Araba.factoryConstructor(String? marka, int? modelYili) { // Factory constructor.  
    print("\nFactory constructor çalıştı.");
    if (marka == null){
      return Araba.sadeceMarkaAdi(marka);
    } 

    if (modelYili == null){
      return Araba.sadeceModelYili(modelYili);
    }

    return Araba(marka, modelYili);
  }

  Araba.sadeceMarkaAdi(this.marka) { // İsimlendirilmiş constructor. Java'daki gibi farklı sayıdaki parametreler ile aynı isimde consructor üretilemez. Bu şekilde üretilebilir.
    print("\nİsimlendirilmiş constructor çalıştı.");
    print("Marka: $marka");

    if(marka == "Toyota"){
      print(true);
    }
  }

  Araba.sadeceModelYili(this.modelYili) { // İsimlendirilmiş constructor. Java'daki gibi farklı sayıdaki parametreler ile aynı isimde consructor üretilemez. Bu şekilde üretilebilir.
    print("Model yılı (isimlendirilmiş constructor) : $modelYili");
  }

  void arabaBilgileri() {
    print("Model Yılı: $modelYili, Marka: $marka");
  }
}


