/*
Mixin ile çoklu kalıtım yapabiliriz. dart da normal kalitim yaparken sadece bir sinifi kullanabiliyoruz
fakat mixin kullanarak bunu başabiliriz.

birden fazla kalitim yaparken miras alacagimiz siniflari class yerine "mixin" anahtar kelimesi ile oluştururuz.
ayriyeten Kalitim yapacağımız sinifi kalitimi tanimlarken "extends" yanina mix yaptigimiz siniflari "with" ile ekleriz
*/

class Canli {
  void solunum() {
    print("Canli nefes aliyor");
  }
}

mixin KosmaYetisi {
  void kos() {
    print("Canli kosabiliyor");
  }
}

mixin YuzmeYetisi {
  void yuzme() {
    print("Canli yuzebiliyor");
  }
}

class Hayvan extends Canli with KosmaYetisi, YuzmeYetisi {
  void davranis() {
    print("Hayvan hem kosar hem yuzer.");
  }
}

void main(List<String> args) {
  Hayvan aslan = Hayvan();
  aslan.davranis();
  aslan.kos();
  aslan.yuzme();
}

