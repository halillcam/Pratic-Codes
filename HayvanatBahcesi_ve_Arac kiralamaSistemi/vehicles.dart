import 'dart:ffi';

abstract class Vehicles {

int model,hiz;

Vehicles({required this.hiz,required this.model});

void kara();
void hava();
void deniz();
}
mixin havaAraci{
  void havadaGidenArac() => print("Bu arac havada gidebiliyor");
}
mixin karaHavaci{
  void karadaGidenArac() => print("Bu arac karada gidebiliyor");
}
mixin denizAraci{
  void denizdeGidenArac() => print("Bu arac denizde gidebiliyor");
}

class vehicle extends Vehicles with havaAraci,karaHavaci,denizAraci{

  vehicle({required int model,required int hiz}) : super(model: model,hiz: hiz);

  @override
  void kara() {
    karadaGidenArac();
  }
  @override
  void hava() {
    havadaGidenArac();
  }

  @override
  void deniz() {
    denizdeGidenArac();
  }
}

void main(List<String> args) {
  vehicle tank = vehicle(model:2024 , hiz: 50);
  tank.kara();
  tank.deniz();
  
}