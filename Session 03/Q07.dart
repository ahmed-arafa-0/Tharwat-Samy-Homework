/*
If-Else with Grades
Objective: Practice conditional statements with integer values.
Instructions:
- Create an integer variable marks.
- If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.
*/

void main() {
  // Create an integer variable marks.
  int marks = 70;

  // If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.
  bool haveYouPassed = marks >= 70;
  if (haveYouPassed) {
    print('Passed');
  } else {
    print('Failed');
  }
}
