import 'kategoriler.dart';

class Yonetmenler  extends Kategoriler{

  String yonetmen;

  Yonetmenler({required this.yonetmen}) : super(kategori: "Bilim Kurgu");

  void YonetmenBilgisiVer(){
    print("Yönetmen : $yonetmen");
  }
}