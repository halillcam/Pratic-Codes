
import 'markalar.dart';

class Fiyatlar extends Markalar {
  
  int fiyat;

  Fiyatlar(this.fiyat) : super(marka: "doblo");

 void bilgi(){
  print("Aracin fiyati = $fiyat");
 }

  
}