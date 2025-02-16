/*
3. To-Do List App:
Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops.
*/
import 'dart:io';

void displayTasks(List<Map<String, dynamic>> tasks) {
  if (tasks.isEmpty) {
    print('\nYour to-do list is empty.');
  } else {
    print('\nTo-Do List:');
    for (var i = 0; i < tasks.length; i++) {
      print(
          '${i + 1}. [${tasks[i]['completed'] ? "X" : " "}] ${tasks[i]['description']} (Due: ${tasks[i]['dueDate']})');
    }
  }
}

void addTask(List<Map<String, dynamic>> tasks,
    {required String description, required String dueDate}) {
  tasks.add(
      {'description': description, 'dueDate': dueDate, 'completed': false});
  print('Task added successfully!');
}

void markTaskCompleted(List<Map<String, dynamic>> tasks, int index) {
  if (index >= 0 && index < tasks.length) {
    tasks[index]['completed'] = true;
    print('Task marked as completed!');
  } else {
    print('Invalid task index!');
  }
}

void removeTask(List<Map<String, dynamic>> tasks, int index) {
  if (tasks.isEmpty) {
    print('\nYour to-do list is empty.');
  } else if (index >= 0 && index < tasks.length) {
    tasks.removeAt(index);
    print('Task removed successfully!');
  } else {
    print('Invalid task index!');
  }
}

void main() {
  List<Map<String, dynamic>> tasks = [];
  int choice;

  do {
    print('\nTo-Do List Menu:');
    print('1. Add Task');
    print('2. Display Tasks');
    print('3. Mark Task as Completed');
    print('4. Remove Task');
    print('5. Exit');

    print('Enter your choice: ');
    choice = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (choice) {
      case 1:
        print('Enter task description: ');
        String? description = stdin.readLineSync();
        if (description == null || description.isEmpty) {
          print('Invalid input!');
        } else {
          print('Enter due date: ');
          String? dueDate = stdin.readLineSync();
          if (dueDate == null || dueDate.isEmpty) {
            print('Invalid input!');
          } else {
            addTask(tasks, description: description, dueDate: dueDate);
          }
        }
        break;
      case 2:
        displayTasks(tasks);
        break;
      case 3:
        if (tasks.isEmpty) {
          print('\nYour to-do list is empty.');
        } else {
          print('Enter task index to mark as completed: ');
          int index = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
          markTaskCompleted(tasks, index - 1);
        }
        break;
      case 4:
        if (tasks.isEmpty) {
          print('\nYour to-do list is empty.');
        } else {
          print('Enter task index to remove: ');
          int index = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
          removeTask(tasks, index - 1);
        }
        break;
      case 5:
        print('Exiting program.');
        break;
      default:
        print('Invalid choice, try again.');
    }
  } while (choice != 5);
}
