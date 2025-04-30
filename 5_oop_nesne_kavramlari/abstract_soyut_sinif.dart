void main(List<String> args) {
  // Abstract class, kendisinden nesne üretilmeyen sınıflardır. Bu sınıflar, diğer sınıflar için bir şablon görevi görür.
  // Abstract class içinde abstract methodlar tanımlanabilir. Abstract methodlar, alt sınıflarda override edilmek zorundadır.

  Veritabani fDb = FirebaseDb(); // Veritabanı sınıfından direk nesne üretilmez. Veritabanı sınıfından miras alan sınıflardan nesne üretilir.
  fDb.userSave();
  fDb.userDelete();

  print("");
  Veritabani oDb = OracleDb();
  oDb.userSave();
  oDb.userDelete();
  testDb(oDb);

  List<Veritabani> listDb = [];
  listDb.add(fDb);
  listDb.add(oDb);
}

abstract class Veritabani {
  // Abstract sınıftan üretilen tüm metodları alt sınıflar kullanmak zorundadır.
  void userSave();
  void userDelete();
  void veritabaniKontrol();
}

void testDb(Veritabani vt) {
  vt.veritabaniKontrol();
}

class FirebaseDb extends Veritabani {
  @override
  void userSave() {
    print("Firebase'e kullanıcı kaydedildi.");
  }

  @override
  void userDelete() {
    print("Firebase'den kullanıcı silindi.");
  }

  @override
  void veritabaniKontrol() {
    print("Firebase kullanıldı.");
  }
}

class OracleDb extends Veritabani {
  @override
  void userSave() {
    print("Oracle'a kullanıcı kaydedildi.");
  }

  @override
  void userDelete() {
    print("Oracle'dan kullanıcı silindi.");
  }

  @override
  void veritabaniKontrol() {
    print("Oracle kullanıldı.");
  }
}
