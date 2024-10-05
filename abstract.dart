/*
  Abstraction (Soyutlama)
Tanım: Abstraction, bir nesnenin yalnızca önemli özelliklerini 
(davranışlarını ve niteliklerini) belirterek detayları gizlemek anlamına gelir. 
Kullanıcı, nesnenin karmaşıklığı ile ilgilenmek zorunda kalmadan yalnızca gerekli olan özelliklerle etkileşimde bulunur.

Kullanım: Abstraction, bir nesnenin dış dünyaya sunduğu arayüzü tanımlar.
Örneğin, bir arabayı düşün. Kullanıcı, arabayı sürerken yalnızca direksiyon, gaz ve fren ile ilgilenir;
motorun nasıl çalıştığı, iç mekanizmanın nasıl yapıldığı gibi detaylar önemli değildir.
*/


// ------------- Soyut Sınıf ---------------------

/*
  Soyut Sınıfların Kullanım Amacı
Soyut sınıflar, ortak bir yapı oluşturmak ve bu yapının alt sınıflar tarafından nasıl uygulanacağını belirlemek için kullanılır.
Şu şekilde düşünülebilir:
Bir temel sınıf oluşturuyorsun, ancak bu sınıfta bazı methodların nasıl çalıştığını şimdilik belirlemek istemiyorsun.
Soyut methodlar, "bu methodu kesinlikle kullan ama nasıl çalışacağını sen belirle" diyen bir şablon sunar.
*/

abstract class Hayvan {
  void sesCikar(); // Soyut method, her hayvanın sesi farklı olabilir
  void hareketEt() {
    print("Hayvan hareket ediyor.");
  }
}

/*
bir sınıf oluşturuyoruz bu sınıf iskelet orda bir method belirliyoruz.
fakat bu methodun içine herhangi birşey yazmak zorunda değiliz.
sonra bu methodu başka bir sınıfta override edip istediğimiz gibi kullanabiliyoruz
*/

// Ornek:
abstract class Araba{
 void hiz();

}
class Kamyon extends Araba{
  @override
  void hiz() {
    // TODO: implement hiz
    print("hiz 50km");
  }
}


