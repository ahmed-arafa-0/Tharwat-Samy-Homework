/*
1. Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers).
*/
import 'dart:io';

num add(num number1, num number2, [List<num>? numbers]) {
  num sum = number1 + number2;
  if (numbers != null) {
    for (var number in numbers) {
      sum += number;
    }
  }
  return sum;
}

num subtract(num number1, num number2) {
  return number1 - number2;
}

num multiply(num number1, num number2) {
  return number1 * number2;
}

num divide(num number1, num number2) {
  if (number2 == 0) {
    print("Error: Division by zero is not allowed.");
    return double.nan;
  }
  return number1 / number2;
}

void numberComparison(num number1, num number2) {
  // Number comparison
  if (number1 > number2) {
    print("First number [$number1] is greater than second number [$number2].");
  } else if (number1 < number2) {
    print("First number [$number1] is less than second number [$number2].");
  } else {
    print("Both numbers are equal. [$number1]");
  }
}

void main() {
  print("Enter first number: ");
  num? number1 = num.tryParse(stdin.readLineSync()!) ?? 0;

  print("Enter second number: ");
  num? number2 = num.tryParse(stdin.readLineSync()!) ?? 0;

  List<num> numbers = [];
  while (true) {
    print("Enter a number (or press Enter to finish): ");
    String? input = stdin.readLineSync();
    if (input == null || input.isEmpty) {
      break;
    }
    numbers.add(num.parse(input));
  }

  print("Addition: ${add(number1, number2, numbers)}");
  print("Subtraction: ${subtract(number1, number2)}");
  print("Multiplication: ${multiply(number1, number2)}");
  print("Division: ${divide(number1, number2)}");
  numberComparison(number1, number2);
}
