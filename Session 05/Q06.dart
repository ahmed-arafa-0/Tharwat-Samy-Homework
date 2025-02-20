/*
6. Null Safety, Encapsulation & Classes
Create a class `Person` with the following attributes:
- `String name`
- `int? age` (nullable)
- `bool isStudent` (default is false)
Implement:
- A constructor that initializes `name` and `age`.
- A method `displayInfo()` that prints the person's details.
In `main()`, create an instance of `Person` and call `displayInfo()`.
*/
void main() {
  Person ahmedArafa = Person(name: "Ahmed Arafa", age: 27);
  ahmedArafa.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent = false;

  Person({
    required this.name,
    required this.age,
  });

  void displayInfo() {
    print("My name is ${this.name}.");
    print("My Age is ${this.age}.");
    print("Am I a student ? Answer is ${this.isStudent}.");
  }
}
