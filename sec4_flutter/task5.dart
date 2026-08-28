class Book {
  String title;
  String author;
  double price;
  int pages;

  Book(this.title, this.author, this.price, this.pages);

  void displayBook() {
    print('Title: $title');
    print('Author: $author');
    print('Price: \$${price.toStringAsFixed(2)}');
    print('Pages: $pages');
  }

  bool isExpensive() {
    return price > 500;
  }
}

void main() {
  Book book1 = Book('Dart Programming', 'John Smith', 450, 300);
  Book book2 = Book('Learn Flutter', 'Ahmed Ali', 650, 500);
  Book book3 = Book('Clean Code', 'Robert Martin', 750, 450);

  List<Book> books = [book1, book2, book3];

  for (Book book in books) {
    book.displayBook();

    if (book.isExpensive()) {
      print('This book is expensive.');
    } else {
      print('This book is not expensive.');
    }

    print('-------------------');
  }
}