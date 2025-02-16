/*
6. Working with Maps - Student Details:
- Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair.
*/
void main() {
  // Task 1
  Map<String, dynamic> student = {
    "Name": "Ahmed Arafa",
    "Age": 77,
    "Grade": 'B-',
  };
  print(student);

  // Add Address Entity
  student.addAll({
    "Address": "Cairo",
  });
  print(student);

  // Update Age
  student["Age"] = 27;
  print(student);

  // Delete grade
  student.remove("Grade");
  print(student);

  // Task 2
  student.forEach(
    (key, value) {
      print("The $key of the student is $value");
    },
  );
}
