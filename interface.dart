/*
  interface(arayuzler)

interface siniflarinda ki methodlar boştur sadece isteğe göre parametreleri olabilir
onu başka sınıfa import ettiğimizde zorunlu olarak kullanmamız için tasarlanmıştır
import ederken kalıtım yoluyla değil "implements" anahtar kelimesi ile kullanırız
"implements" anahtar kelimesi sadece arayüz(interface) ler için geçerlidir.  

    chatgpt özeti:

    Interface sınıflarında methodlar boştur, sadece isteğe göre parametreleri olabilir.
    Interface'i başka sınıfa dahil ederken "implements" anahtar kelimesi kullanılır.
    "Implements" anahtar kelimesi, bir sınıfa birden fazla arayüz (interface) kazandırmak için kullanılır
 ve bu methodları kullanmak zorunludur
*/

abstract class Muze{

  void yil();
  void donem();
}
class Fil implements Muze{

  @override
  void yil() {
    // TODO: implement yil
    print("12500 yillik fil");
  }
  @override
  void donem() {
    // TODO: implement donem
    print("Tas devri");
  }
}
void main(List<String> args) {
  Fil muzedekiFil = Fil();
  muzedekiFil.yil();
  muzedekiFil.donem();
}