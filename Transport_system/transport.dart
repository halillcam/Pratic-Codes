//repeat working with polymorphism, abstract and interface in this project

abstract class Transport {
  String brand;
  int speed;
  int passengerCapacity;

  Transport({required this.brand,required this.passengerCapacity,required this.speed});

  //abstract method 
  void working();


  


}
//Interface vehicle with flying

  class flying{
    void flyingVehicle(){
      print("Vehicle can flying");
    }

  }

 //Interface vehicle with normalvehicle 

 class normalVehicle{
  void vehicleNormal() => print("normal vehicle");
 }

// Interface vehicle with swimming;

class Swimming{
  void SwimmingVehicle() => print("Vehicle can swimming");
}


// car class (polymorphism)

class car extends Transport implements flying,normalVehicle,Swimming{

  car({required String brand,required int passengerCapacity,required int speed}) : 
  super(brand: brand,passengerCapacity: passengerCapacity,speed: speed);

  @override
  void working() {
    print("Vehicle is working $brand");
  }

  @override
  void vehicleNormal() {
    print("Car is going normal road");
  }

  @override
  void SwimmingVehicle() {
     print("Vehicle is going in ocean");
  }

  @override
  void flyingVehicle() {
    // TODO: implement flyingVehicle

    print("Vehicle is flying");
  }
}
void main(List<String> args) {
  car flycar = car(brand: "Baykar", passengerCapacity: 2, speed: 450);
  flycar.flyingVehicle();

  car normalCar = car(brand: "Mercedes", passengerCapacity: 4, speed: 150);
  normalCar.vehicleNormal();

  car swimCar = car(brand: "Metro", passengerCapacity: 25, speed: 75);
  swimCar.SwimmingVehicle();
}

