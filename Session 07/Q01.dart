/*
Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
Handle cases where division by zero might occur.
*/

import 'dart:io';

void main() {
  print("Enter Number 01: ");
  num number1 = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Enter Number 02: ");
  num number2 = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Enter Operation [ + , - , * , or / ]: ");
  String operator = stdin.readLineSync() ?? "";

  print(
    calc(number1: number1, number2: number2, operator: operator),
  );
}

num calc({
  required num number1,
  required num number2,
  required String operator,
}) {
  switch (operator) {
    case '+':
      return number1 + number2;
    case '-':
      return number1 - number2;
    case '*':
      return number1 * number2;
    case '/':
      if (number2 == 0) {
        print('You Cannot Divide by Zero!');
        break;
      }
      return number1 / number2;
    default:
      print('Invalid operator.');
  }
  return -1;
}
