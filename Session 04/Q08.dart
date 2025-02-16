/*
8. Range Checker Program:
Write a Dart program that checks if a number is within a specified range using logical operators and
prints the result.
*/
import 'dart:io';

void main() {
  // Enter The number
  print('Enter a number: ');
  int? number = int.tryParse(stdin.readLineSync()!);

// Output
  checkInRange(
    number: number,
    lowThreshold: 5,
  );
}

void checkInRange({
  int lowThreshold = 10,
  int highThreshold = 50,
  required int? number,
}) {
  if (number == null) {
    print("Wrong Input");
  } else {
    if (number >= lowThreshold && number <= highThreshold) {
      print(
          "The number $number is within the range ($lowThreshold -> $highThreshold)");
    } else {
      print(
          "The number $number is outside the range ($lowThreshold -> $highThreshold)");
    }
  }
}
