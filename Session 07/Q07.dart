/*
Reverse a String
Write a function that takes a string as input and returns the string reversed.
Example:
reverseString('hello') -> 'olleh'
*/

void main() {
  String text = 'hello';
  print(text);
  print(
    reverseString(text: text),
  );
}

String reverseString({
  required String text,
}) {
  return text.split('').reversed.join('');
}
