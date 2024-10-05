import 'kendi_pratiklerim/Rent_a_Car/arac.dart';

class Araba extends Arac {
  int km; 

  Araba({required String marka, required int model,required double fiyat,required int beygir,required double hiz,required this.km })
   :super(marka: marka,model: model,fiyat: fiyat,beygir: beygir,hiz: hiz);

  @override
  void kiralamaUcreti() {
    print("$marka li Arac fiyati = $fiyat");
  }

  @override
  void Arachizi() {
    print("$marka li Araba hizi = $hiz km/h\n");
  }
}

