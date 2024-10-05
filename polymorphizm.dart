/*
Polymorphism Nedir?
Polymorphism, aynı işlevi farklı şekillerde gerçekleştiren 
birden fazla sınıfın bir arada kullanılabilmesi anlamına gelir.
 Bu, genellikle override ile gerçekleştirilir ve bir sınıfın miras aldığı sınıfın metodunu kendine özgü bir şekilde yeniden tanımlamasını sağlar.
*/

class ulasimAraci{
  String marka;

  ulasimAraci({required this.marka});

  void Move(){
    print("Arac Hareket ediyor");
  }

  void aracBilgileri(){
    print("Araba markasi = $marka");
  }
}
class Araba extends ulasimAraci{

  int kapiSayisi;
  Araba({required String marka,required this.kapiSayisi}) : super(marka: marka);

  @override
  void Move() {
    // TODO: implement Move
    super.Move();
    print("Araba yolda gidiyor");
  }
  @override
  void aracBilgileri() {
    // TODO: implement aracBilgileri
    super.aracBilgileri();
    print("Kapi Sayisi $kapiSayisi");
  }
}

class Bisiklet extends ulasimAraci{
  int vitesSayisi;

  Bisiklet({required String marka, required this.vitesSayisi}) : super(marka: marka);

  @override
  void Move() {
    // TODO: implement Move
    super.Move();
    print("Pisiklet Harket ediyor");
  } 

  @override
  void aracBilgileri() {
    // TODO: implement aracBilgileri
    super.aracBilgileri();
    print("Vites sayisi $vitesSayisi");
  }

}

class Gemi extends ulasimAraci{
  int Yolcusayisi;

  Gemi({required String marka, required this.Yolcusayisi}) : super (marka: marka);

  @override
  void Move() {
    // TODO: implement Move
    super.Move();
    print("Gemi Hareket ediyor");
  }
  @override
  void aracBilgileri() {
    // TODO: implement aracBilgileri
    super.aracBilgileri();
    print("Yolcu Sayisi : $Yolcusayisi");
  }
}
void main(List<String> args) {
  ulasimAraci arac1 = Araba(marka: "BMW", kapiSayisi: 4);
  ulasimAraci arac2 = Bisiklet(marka: "Yamaha", vitesSayisi: 12);
  ulasimAraci arac3 = Gemi(marka: "Tofas", Yolcusayisi: 3500);

  arac1.Move();
  arac2.Move();
  arac3.Move();

  arac1.aracBilgileri();
  arac2.aracBilgileri();
  arac3.aracBilgileri();
}
