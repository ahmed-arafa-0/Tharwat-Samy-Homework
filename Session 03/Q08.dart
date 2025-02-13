/*
Nested If for Temperature Ranges
Objective: Use nested if statements to check multiple conditions.
Instructions:
- Create an integer variable temperature.
- If temperature is above 30, print 'It's hot!'.
- If it's between 15 and 30, print 'It's warm.'.
- Otherwise, print 'It's cold.'.
*/

void main() {
  // Create an integer variable temperature.
  int temperature = 20;

  // If temperature is above 30, print 'It's hot!'.
  // If it's between 15 and 30, print 'It's warm.'.
  // Otherwise, print 'It's cold.'.

  bool isHot = temperature > 30;
  bool isWarm = (temperature >= 15) && (temperature <= 30);

  if (isHot) {
    print('It\'s hot!');
  } else if (isWarm) {
    print('It\'s warm.');
  } else {
    print('It\'s cold.');
  }
}
