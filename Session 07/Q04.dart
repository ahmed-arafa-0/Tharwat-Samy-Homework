/*
Find Prime Numbers in a Range
Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
them.
Ensure that the function correctly identifies prime numbers and handles edge cases where start is
greater than end.
*/
void main() {
  print(
    findPrimesInRange(
      start: 1,
      end: 50,
    ),
  );
}

List<int> findPrimesInRange({
  required int start,
  required int end,
}) {
  List<int> primeNumbers = [];
  for (int i = start; i <= end; i++) {
    if (isPrime(number: i)) {
      primeNumbers.add(i);
    }
  }
  return primeNumbers;
}

bool isPrime({required int number}) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
