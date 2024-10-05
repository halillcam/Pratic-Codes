import 'yonetmenler.dart';

class ImbdPuanlari extends Yonetmenler {

  double puan;

  ImbdPuanlari({required this.puan}) : super(yonetmen: "Nolan");

  void PuanGoster(){
    print("Film in imbd puani : $puan");
  }
}