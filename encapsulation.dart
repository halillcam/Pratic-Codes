class BankaHesabi {
  // Private (gizli) özellik
  double _bakiye = 0;

  // Public method (dış dünyadan erişilebilen)
  void paraYatir(double miktar) {
    if (miktar > 0) {
      _bakiye += miktar;
      print("$miktar TL yatirildi. Güncel bakiye: $_bakiye TL");
    } else {
      print("Geçersiz miktar");
    }
  }

  void paraCek(double miktar) {
    if (miktar > 0 && miktar <= _bakiye) {
      _bakiye -= miktar;
      print("$miktar TL çekildi. Güncel bakiye: $_bakiye TL");
    } else {
      print("Yetersiz bakiye veya geçersiz miktar.");
    }
  }

  // Private veriyi kontrolle gösteren metod
  double getBakiye() {
    return _bakiye;
  }
}

void main() {
  BankaHesabi hesap = BankaHesabi();
  hesap.paraYatir(1000);
  hesap.paraCek(300);
  print("Son bakiye: ${hesap.getBakiye()} TL");
}