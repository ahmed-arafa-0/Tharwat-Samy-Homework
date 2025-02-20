/*
4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result.
*/

import 'dart:io';

Map<String, int> fruitPrice = {
  'Apple': 15,
  'Banana': 12,
  'Cherry': 35,
  'Avocado': 55,
};

void main() {
  print("Enter Fruit name: ");
  String fruitname = stdin.readLineSync() ?? "";

  print(
    "The Price is: ${getPrice(fruitname)}",
  );
}

int getPrice(String fruitName) {
  return fruitPrice[fruitName] ?? -1;
}
