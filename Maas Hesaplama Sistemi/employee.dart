abstract class Employee {
  String name;
  int workingHours;

  Employee({required this.name, required this.workingHours});

  // Abstract method for calculating salary
  double calculateSalary();
}

// Interface for overtime
class OverTime {
  double overTimeRate = 1.65;

  double calculateOverTime(int extraHours) {
    return extraHours * overTimeRate;
  }
}

// Interface for bonus
class Bonus {
  double bonusRate = 2.15;

  double calculateBonus() {
    return bonusRate;
  }
}

class FullTimeEmployee extends Employee {
  double hourlyRate;

  // Overriding constructor
  FullTimeEmployee({required String name, required int workingHours, required this.hourlyRate})
      : super(name: name, workingHours: workingHours);

  @override
  double calculateSalary() {
    double baseSalary = workingHours * hourlyRate;
    
    // Create instances of OverTime and Bonus classes
    OverTime overTime = OverTime();
    Bonus bonus = Bonus();
    
    double bonusAmount = bonus.calculateBonus();  // Calculate bonus
    return baseSalary + bonusAmount;  // Return total salary
  }

  // Additional method to calculate salary with overtime
  double calculateSalaryWithOverTime(int extraHours) {
    OverTime overTime = OverTime();
    double overTimePay = overTime.calculateOverTime(extraHours);
    return calculateSalary() + overTimePay;
  }
}

// PartTimeEmployee class without bonus or overtime
class PartTimeEmployee extends Employee {
  double hourlyRate;

  PartTimeEmployee({required String name, required int workingHours, required this.hourlyRate})
      : super(name: name, workingHours: workingHours);

  @override
  double calculateSalary() {
    return workingHours * hourlyRate;
  }
}

void main(List<String> args) {
  // Create a full-time employee
  FullTimeEmployee joe = FullTimeEmployee(name: "Joe", workingHours: 40, hourlyRate: 35.00);
  print("Full-time Employee (without overtime): ${joe.calculateSalary()}");
  print("Full-time Employee (with overtime): ${joe.calculateSalaryWithOverTime(12)}");

  // Create a part-time employee
  PartTimeEmployee lisa = PartTimeEmployee(name: "Lisa", workingHours: 20, hourlyRate: 20.00);
  print("Part-time Employee salary: ${lisa.calculateSalary()}");
}
