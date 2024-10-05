import 'kategoriler.dart';
import 'yonetmenler.dart';

class Film {

 String film_adi;
  int film_id;
  int film_yil;

  // Yonetmen ve Kategori için eklemeler yapıldı.
  Film({
    required this.film_adi,
    required this.film_id,
    required this.film_yil,
    required this.yonetmen,
    required this.kategori
  });

  Yonetmenler yonetmen;
  Kategoriler kategori;
  

}