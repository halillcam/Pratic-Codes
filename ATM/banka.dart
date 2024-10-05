
class ParaCekme{
  double _bakiye = 0;

  void paraYatirma(double miktar){
    if(miktar > 0){
      _bakiye += miktar;

      print("Yatirilan miktar $miktar, Guncel Bakiye: $_bakiye");
    }
    else{
      print("gecersiz islem Lutfen tekrar deneyiniz");
    }
  }

  void paraCekme(double miktar){
    if(miktar >0 && miktar <= _bakiye){
      _bakiye -= miktar;
      print("$miktar kadar para Cekildi. Guncel bakiye: $_bakiye");
    }
    else if(miktar > _bakiye){
      print("bakiyenizde yeterli Miktarda para bulunmamaktadir");
    }
    else{
      print("gecersiz islem Lutfen tekrar deneyiniz");
    }
  }

  double getBakiye(){
    return _bakiye;
  }

}
void main(){
 ParaCekme atmislemi = ParaCekme();
 atmislemi.paraYatirma(5000);
 atmislemi.paraCekme(2000);
 atmislemi.getBakiye();

}