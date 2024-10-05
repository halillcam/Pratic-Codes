import 'pc.dart';

class Islemci extends Pc {

  String cpu;

  Islemci({required this.cpu, required String marka}) : super(storage: 2000,ram: 16, vram: 8,marka : marka);

  void bilgiver(){
    print("Markasi : $marka \nCPU :  $cpu");
  }
 
}

void main(){

 Islemci bilgisayar = Islemci(cpu: "Intel", marka: "Dell");
 bilgisayar.bilgiver();
 bilgisayar.Pc_ozellikleri();

}