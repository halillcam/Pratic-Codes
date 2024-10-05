import 'film.dart';
import 'kategoriler.dart';
import 'yonetmenler.dart';

void main(){

  var k1 = Kategoriler(kategori_adi: "Bilim kurgu", kategori_id: 1);
  var k2 = Kategoriler(kategori_adi: "Komedi", kategori_id: 2);


  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_adi: "Nolan");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_adi: "Cem yilmaz");


  var f1 = Film(film_adi: "Interstellar", film_id: 1, film_yil: 2014, yonetmen: y1, kategori: k1);
}