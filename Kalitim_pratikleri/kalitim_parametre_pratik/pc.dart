class Pc {

  int ram;
  int vram;
  int storage;
  String marka;

  Pc({required this.ram, required this.vram, required this.storage, required this.marka});

  void Pc_ozellikleri(){
    print("Ram : $ram, Vram : $vram, Stroge : $storage");
  }

}