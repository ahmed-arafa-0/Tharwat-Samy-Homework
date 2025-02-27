/*
Employee Payroll System
Implement an employee payroll system.
Create a base Employee class with properties: name, id, and salary.
Implement a method calculateSalary() in the base class.
Create two subclasses:
- FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
- PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
salary based on hours worked.
*/

void main() {
  FullTimeEmployee employee1 = FullTimeEmployee(
    name: "Ahmed Arafa",
    id: 123,
    salary: 15000,
    bouns: 3000,
  );
  PartTimeEmployee employee2 = PartTimeEmployee(
    name: "Ahmed Essam",
    id: 124,
    hoursWorked: 120,
    hourlyRate: 150,
  );

  print(employee1.calculateSalary());
  print(employee2.calculateSalary());
}

abstract class Empolyee {
  String name;
  int id;
  num salary;

  Empolyee({
    required this.name,
    required this.id,
    required this.salary,
  });

  num calculateSalary();
}

class FullTimeEmployee extends Empolyee {
  num bouns;
  FullTimeEmployee({
    required super.name,
    required super.id,
    required super.salary,
    required this.bouns,
  });

  @override
  num calculateSalary() {
    return super.salary + this.bouns;
  }
}

class PartTimeEmployee extends Empolyee {
  int hoursWorked;
  num hourlyRate;

  PartTimeEmployee({
    required super.name,
    required super.id,
    required this.hoursWorked,
    required this.hourlyRate,
    super.salary = 0,
  });

  @override
  num calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}
