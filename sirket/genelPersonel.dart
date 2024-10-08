class Genelpersonel {
  String personelAdi,personelGorevi;
  int personelYasi;
  static int personel = 35;

  Genelpersonel({required this.personelAdi,required this.personelGorevi, required this.personelYasi});

  void personelBilgiler(){
    print("--- Personel Bilgileri ---- ");
    print("Personel adi,yasi,ve Gorevi $personelAdi,$personelYasi,$personelGorevi");
  }

  void Muhendis(String? proje){
    print("Muhendisin projesi = $proje");

}

  void Teknisyen(String? uzmanlik){
    print("Teknisyenin uzmanlik alani = $uzmanlik");
  }
}

void main(List<String> args) {
  Genelpersonel MuhendisPersonel = Genelpersonel(personelAdi: "Halil", personelGorevi: "Programci", personelYasi: 24);
  MuhendisPersonel.Muhendis("Deprem Hakkinda proje");

  Genelpersonel teknisyenPersonel = Genelpersonel(personelAdi: "Mistafa",personelYasi: 29,personelGorevi: "Teknisyen");
  teknisyenPersonel.Teknisyen("Bilgi islem");
}