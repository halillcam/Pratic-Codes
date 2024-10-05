/*

List yapıları, sıralı bir şekilde birden fazla değeri depolayabileceğimiz veri yapılandırmalarıdır. 
Aynı veri tipinde birden fazla eleman depolamak için kullanılırlar.
*/

void main(List<String> args) {
  List <String> isimler = ["Halil","Mustafa","Cantug"];

 for(var i in isimler){
  print(i);

  if(i == isimler[1]){
    break;
  }
  print(i);
 }
  // While dongusu ile kullanimi

  int i = 0;
  while(i<=isimler.length){
    print(isimler);
    i++;
  }
}