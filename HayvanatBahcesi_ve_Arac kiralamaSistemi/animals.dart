abstract class Animals {
  void solunum();
  void hareket();
}
mixin kosma{
  void kosmaYetisi() => print("Bu hayvan kosabiliyor");
    
}

mixin yuzme{
  void YuzmeYetisi() => print("Bu hayvan yuzebiliyor");
  
}
mixin ucma{
  void ucmaYetisi() => print("Bu hayvan ucabiliyor");
    
}

class Memeli extends Animals with kosma,yuzme,ucma{

  void kontrol() => print("bu bir hayvan");
  @override
  void solunum() {
    // TODO: implement solunum
    print("bu hayvan nefes alabiliyor");
  }
  @override
  void hareket() {
    print("Bu hayvan hareket edebiliyor");
  }
}
void main(List<String> args) {
  Memeli aslan = Memeli();
  aslan.kontrol();
  aslan.hareket();
  aslan.YuzmeYetisi();
  aslan.solunum();
}