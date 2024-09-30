// library.dart

class Book {
  String? title;
  String? author;
  int? year;

  Book(this.title, this.author, this.year);

  void displayInfo() {
    print("Title: $title, Author: $author, Year: $year");
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book "${book.title}" successfully added!');
  }

  void removeBook(String title) {
    bool found = false;
    books.removeWhere((book) {
      if (book.title?.toLowerCase() == title.toLowerCase()) {
        print('Book "$title" successfully removed!');
        found = true;
        return true;
      }
      return false;
    });
    if (!found) {
      print('Book with title "$title" not found.');
    }
  }

  void displayBooks() {
    if (books.isEmpty) {
      print("Library is empty.");
    } else {
      print("Books in the library: ");
      books.forEach((book) => book.displayInfo());
    }
  }
}
