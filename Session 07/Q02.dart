/*
Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
*/
import 'dart:io';

void main() {
  print("Enter Tempeture: ");
  num temp = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Enter Unit [ C or F ]: ");
  String unit = stdin.readLineSync() ?? "";

  print(
    tempConvert(
      temp: temp,
      unit: unit,
    ),
  );
}

num tempConvert({required num temp, required String unit}) {
  if (unit.toLowerCase() == 'c') {
    // Formula (0°C × 9/5) + 32 = 32°F
    return (temp * 9 / 5) + 32;
  } else if (unit.toLowerCase() == 'f') {
    // Formula (32°F − 32) × 5/9 = 0°C
    return (temp - 32) * 5 / 9;
  } else {
    print('Invalid Unit');
    return -1;
  }
}
