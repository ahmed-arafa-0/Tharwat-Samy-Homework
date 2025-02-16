/*
7. Number Check Program:
Create a program that asks the user to input a number and checks if it's positive, negative, or zero
using if-else statements.
*/

import 'dart:io';

void main() {
  // Enter The number
  print('Enter a number: ');
  int? number = int.tryParse(stdin.readLineSync()!);

  checkNumber(number: number);
}

void checkNumber({
  required int? number,
}) {
  if (number == null) {
    print("Wrong Input");
  } else {
    if (number > 0) {
      print("$number is a positive number");
    } else if (number < 0) {
      print("$number is a negative number");
    } else {
      print("$number is a Zero number");
    }
  }
}
