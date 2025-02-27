/*
Count Words in a Sentence
Write a function that counts the number of words in a given sentence.
Words are separated by spaces, and the function should ignore extra spaces.
*/
void main() {
  print(
    numberOfWords(text: 'text1 text2 text3 text4 text5'),
  );
}

int numberOfWords({required String text}) {
  return text.split(' ').length;
}
