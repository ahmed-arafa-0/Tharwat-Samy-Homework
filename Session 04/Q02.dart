/*
2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values.
*/
import 'dart:io';

void displayGroceryList(List<Map<String, dynamic>> groceryItems) {
  if (groceryItems.isEmpty) {
    print('\nYour grocery list is empty.');
  } else {
    print('\nGrocery List:');
    for (var i = 0; i < groceryItems.length; i++) {
      print(
          '${i + 1}. ${groceryItems[i]['name']} (Quantity: ${groceryItems[i]['quantity']})');
    }
  }
}

void addGroceryItem(
  List<Map<String, dynamic>> groceryItems, {
  required String name,
  int quantity = 1,
}) {
  if (groceryItems.isEmpty) {
    groceryItems.add({'name': name, 'quantity': quantity});
    print('Item added successfully!');
  } else {
    bool isFound = false;
    int indexFound = -1;
    for (int i = 0; i < groceryItems.length; i++) {
      if (groceryItems[i]["name"] == name) {
        isFound = true;
        indexFound = i;
      }
    }
    if (isFound) {
      groceryItems[indexFound]["quantity"] =
          groceryItems[indexFound]["quantity"] + quantity;
    } else {
      groceryItems.add({'name': name, 'quantity': quantity});
      print('Item added successfully!');
    }
  }
}

void removeGroceryItem(List<Map<String, dynamic>> groceryItems, int index) {
  if (index >= 0 && index < groceryItems.length) {
    groceryItems.removeAt(index);
    print('Item removed successfully!');
  } else {
    print('Invalid index!');
  }
}

void main() {
  List<Map<String, dynamic>> groceryItems = [];
  int choice;

  do {
    print('\nGrocery List Menu:');
    print('1. Add Item');
    print('2. Display Items');
    print('3. Remove Item');
    print('4. Exit');
    print('Enter your choice: ');
    choice = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (choice) {
      case 1:
        print('Enter item name: ');
        String? name = stdin.readLineSync();
        if (name == null || name.isEmpty) {
          print('Invalid input!');
          break;
        }
        print('Enter quantity: ');
        int quantity = int.tryParse(stdin.readLineSync() ?? '') ?? 1;
        addGroceryItem(groceryItems, name: name, quantity: quantity);
        break;
      case 2:
        displayGroceryList(groceryItems);
        break;
      case 3:
        if (groceryItems.isEmpty) {
          print('\nNo Item can be removed. Your grocery list is empty.');
        } else {
          print('Enter item index to remove: ');
          int index = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
          removeGroceryItem(groceryItems, index - 1);
        }
        break;
      case 4:
        print('Exiting program.');
        break;
      default:
        print('Invalid choice, try again.');
    }
  } while (choice != 4);
}
