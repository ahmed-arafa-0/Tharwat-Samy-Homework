/*
Sum of List Elements
Write a function that takes a list of numbers and returns the sum of all elements.
Example:
sumList([1, 2, 3, 4, 5]) -> 15
*/
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print(
    sumList(numbers: numbers),
  );
}

int sumList({
  required List<int> numbers,
}) {
  int sum = 0;
  numbers.forEach(
    (element) {
      sum += element;
    },
  );
  return sum;
}
