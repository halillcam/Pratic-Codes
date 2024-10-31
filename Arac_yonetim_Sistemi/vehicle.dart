


class Vehicle {
  String marka,model;
  int uretimYili,km;
  
  Vehicle({required this.marka,required this.model,required this.uretimYili,required this.km});
   

void AracBilgileri(){
    print("Marka : $marka, Model : $model, Uretim yili : $uretimYili, km : $km");
  }

  void kmGuncelle(int yeniKm){
    if(yeniKm > km){
      km = yeniKm;
      print("Km güncellendi yeni km = $km");
    }
    else{
      print("Yeni km degeri eski km degerinden kucuk olamaz");
    }
  }

  //Truck Yük siniri

  void YukKapasitesi(int YukSiniri){}
}
class car extends Vehicle{
  String koltukSayisi;

  car({required String marka, required String model, required int uretimYili, required int km, required this.koltukSayisi})
  : super (marka: marka,model: model,uretimYili: uretimYili,km: km);

  @override
  void AracBilgileri() {
    // TODO: implement AracBilgileri
    super.AracBilgileri();
    print("Koltuk Sayisi : $koltukSayisi");
  }

}

class Truck extends Vehicle{
  int kapasite;

  Truck({required String marka, required String model, required int uretimYili, required int km, required this.kapasite})
  : super (marka: marka,model: model,uretimYili: uretimYili,km: km);

  @override
  void YukKapasitesi(int YukSiniri) {
    // TODO: implement YukSiniri
    if(kapasite >= YukSiniri){
      print("Fazla Yükleme yapmissiniz $kapasite kg bunun için Cezai islem Uygulanacaktir");
    }
    else{
      print("Kapasiteniz $kapasite kg gayet iyi durumda iyi yolculuklar");
    }
  }
}



void main(List<String> args) {
  car bmw = car(marka: "BMW", model: "2019", uretimYili: 2020, km: 20000, koltukSayisi: "4");
  bmw.AracBilgileri();

  bmw.kmGuncelle(27000);
  bmw.kmGuncelle(25000);

  Truck Scania = Truck(marka: "Scania", model: "2024", uretimYili: 2025, km: 26000, kapasite: 36000);
  Scania.AracBilgileri();
  Scania.YukKapasitesi(39000);
}