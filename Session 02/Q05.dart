/*
Question 5
What is the difference between var and dynamic in Dart? Provide an example of
each.
*/

/*
var

When you use var, Dart looks for the type of the variable based on 
the value assigned to it at the time of running the code. 
Once the type is decleared, it cannot be changed.

void main() {
  var name = "Ahmed";  // It declares the variable as a String
  // name = 30;  // This would make an error because the variable is defined as String
}


dynamic

When you use dynamic, the variable can hold any type of value.and can be assigned
to any other data type

void main() {
  dynamic myVariable = "Ahmed";  // myVariable is a String

  myVariable = 42;  // myVariable is now an integer

  myVariable = true;  // myVariable is now a boolean
}

*/
