/*
OOP, Constructors & Getters
Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area.
*/
import 'rectangle.dart';

void main() {
  Rectangle rect = Rectangle(5, 10);

  print(rect.area);
}
