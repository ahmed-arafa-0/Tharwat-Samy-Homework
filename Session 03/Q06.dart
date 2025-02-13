/*
If Condition with String Comparison
Objective: Use if to check string equality.
Instructions:
- Create a string variable password and set it to 'secret'.
- If password equals 'secret', print 'Access granted', otherwise print 'Access denied'.
*/

void main() {
  // Create a string variable password and set it to 'secret'.
  String password = 'secret';

  // If password equals 'secret', print 'Access granted', otherwise print 'Access denied'.
  bool isAccessGranted = password == 'secret';
  if (isAccessGranted) {
    print('Access granted');
  } else {
    print('Access denied');
  }
}
