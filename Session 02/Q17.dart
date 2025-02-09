/*
Question 17
If you need a variable that can hold any type of value and may change during
execution, which data type would you use? Write a code example to show this.
*/

// Use the dynamic Data Type

void main() {
  dynamic myVariable = "Ahmed Arafa"; // String
  print(myVariable);

  myVariable = 30; // integer
  print(myVariable);

  myVariable = 3.14; // double
  print(myVariable);

  myVariable = true; // boolean
  print(myVariable);
}
