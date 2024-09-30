// main.dart
import 'dart:io';
import 'first.dart'; // Import file library.dart

void main() {
  var library = Library();

  bool running = true;

  while (running) {
    print("\n==== Library UC ====");
    print("1. Add book");
    print("2. Remove Book");
    print("3. Display Books");
    print("4. Exit");
    stdout.write("Select option: ");
    String? option = stdin.readLineSync();

    switch (option) {
      case '1':
        stdout.write("Title: ");
        String title = stdin.readLineSync()!;
        stdout.write("Author: ");
        String author = stdin.readLineSync()!;
        stdout.write("Year: ");
        int year = int.parse(stdin.readLineSync()!);
        var newBook = Book(title, author, year);
        library.addBook(newBook);
        break;

      case '2':
        stdout.write("Title of book to remove: ");
        String titleToRemove = stdin.readLineSync()!;
        library.removeBook(titleToRemove);
        break;

      case '3':
        library.displayBooks();
        break;

      case '4':
        print("Thank you for visiting our library!!");
        running = false;
        break;

      default:
        print("Invalid option. Please try again.");
    }
  }
}
