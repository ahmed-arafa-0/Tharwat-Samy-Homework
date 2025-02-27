/*
Library Management System
Create a system to manage books in a library.
Implement a Book class with properties like title, author, isbn, and isAvailable.
Implement a Library class with methods:
- addBook(Book book): Adds a book to the library.
- borrowBook(String isbn): Marks a book as borrowed if available.
- returnBook(String isbn): Marks a book as available again.
- searchByTitle(String title): Returns books matching the title.
Ensure that the system correctly updates the book's availability.
*/

void main() {
  Library library = Library();

  library.addBook(
    book: Book(
      title: 'Dart Book',
      author: 'A.Arafa',
      isbn: '123',
    ),
  );

  library.addBook(
    book: Book(
      title: 'Flutter Book',
      author: 'A.Essam',
      isbn: '124',
    ),
  );

  library.addBook(
    book: Book(
      title: 'Network Book',
      author: 'Nabil Mohamed',
      isbn: '125',
    ),
  );

  library.displayBooks();

  library.borrowBook(isbn: '123');
  library.displayBooks();

  // Searching for books
  print("Search on Dart Book");
  library.searchByTitle(title: 'Dart Book');
  print("Search on Flutter Book");
  library.searchByTitle(title: 'Flutter Book');
  print("Search on java Book");
  library.searchByTitle(title: 'Java Book');

  library.returnBook(isbn: '123');
  library.displayBooks();
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(
      {required this.title,
      required this.author,
      required this.isbn,
      this.isAvailable = true});

  String printDetails() {
    return 'Title: $title, Author: $author, ISBN: $isbn, Available: ${isAvailable ? "Yes" : "No"}';
  }
}

class Library {
  List<Book> books = [];

  void addBook({required Book book}) {
    books.add(book);
    print('Book added: ${book.title}');
  }

  bool borrowBook({required String isbn}) {
    for (var book in books) {
      if (book.isbn == isbn && book.isAvailable) {
        book.isAvailable = false;
        print('Book borrowed: ${book.title}');
        return true;
      }
    }
    print('Book with ISBN $isbn is not available.');
    return false;
  }

  bool returnBook({required String isbn}) {
    for (var book in books) {
      if (book.isbn == isbn && !book.isAvailable) {
        book.isAvailable = true;
        print('\nBook returned: ${book.title}');
        return true;
      }
    }
    print('\nBook with ISBN $isbn was not borrowed.');
    return false;
  }

  Book searchByTitle({required String title}) {
    for (Book book in books) {
      if (book.title == title) {
        print(
          book.printDetails(),
        );
        return book;
      }
    }
    print("No Book Found");
    return Book(title: "", author: "", isbn: "");
  }

  displayBooks() {
    if (books.isEmpty) {
      print('\nNo books in the library. \n');
    } else {
      print('\nLibrary Books:');
      for (var book in books) {
        print(
          book.printDetails(),
        );
      }
      print("\n");
    }
  }
}
