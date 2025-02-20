/*
3. Lists, Loops & If Conditions
Create a list of numbers. Iterate over the list and:
- If a number is even, print "Even: <number>".
- If a number is odd, print "Odd: <number>".
*/
void main() {
  List<int> numbers = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    15,
    16,
    1,
    852,
  ];
  numbers.forEach(
    (number) {
      if (number % 2 == 0) {
        print("$number is Even");
      } else {
        print("$number is Odd");
      }
    },
  );
}
