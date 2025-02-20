/*
Sets, Functions & Return Statement
Write a function `uniqueNames(List<String> names)` that:
- Accepts a list of names.
- Returns a Set containing only unique names.
Call the function inside `main()` and print the result.
*/

void main() {
  List<String> names = [
    "Ahmed",
    "Youssef",
    "Nabil",
    "Mohamed",
    "Tamer",
    "Sayed",
    "Fouad",
    "Ahmed",
    "Youssef",
    "Nabil",
    "Mohamed",
    "Tamer",
    "Sayed",
    "Fouad",
    "Ahmed",
    "Youssef",
    "Nabil",
    "Mohamed",
    "Tamer",
    "Sayed",
    "Fouad",
  ];
  print(uniqueNames(names));
}

Set<String> uniqueNames(List<String> names) {
  Set<String> nameSet = {};
  for (var item in names) {
    if (nameSet.contains(item)) {
      continue;
    } else {
      nameSet.add(item);
    }
  }
  return nameSet;
}
