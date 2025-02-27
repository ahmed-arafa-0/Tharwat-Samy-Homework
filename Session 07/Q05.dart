/*
Find the Longest Word
Write a function that takes a sentence as input and returns the longest word in the sentence.
If multiple words have the same longest length, return the first one that appears.
*/

void main() {
  String text =
      "Dart4 Dart3 Dart1 Dart2 text text texting of texting and chating congratulations";
  print(text);
  print(
    findLongestWord(text: text),
  );
}

String findLongestWord({required String text}) {
  List<String> words = text.split(' ');
  String longestWord = words[0];
  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }
  return longestWord;
}
