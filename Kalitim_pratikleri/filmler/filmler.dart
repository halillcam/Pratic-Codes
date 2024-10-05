import 'imbd_puanlari.dart';

void main(List<String> args) {
  
  ImbdPuanlari filmlerim = ImbdPuanlari(puan: 9.5);

  filmlerim.KategoriBilgisi();
  filmlerim.YonetmenBilgisiVer();
  filmlerim.PuanGoster();
}