class Student {
  String name;
  int age;
  String grade;

  Student(this.name, this.age, this.grade);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: $grade");
  }
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

class BankAccount {
  String ownerName;
  String accountNumber;
  double balance;

  BankAccount(this.ownerName, this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    }
  }

  void displayBalance() {
    print("Owner: $ownerName");
    print("Account Number: $accountNumber");
    print("Balance: $balance");
  }
}

class Car {
  String brand;
  String model;
  int year;
  int speed = 0;

  Car(this.brand, this.model, this.year);

  void accelerate() {
    speed += 10;
  }

  void brake() {
    speed -= 10;

    if (speed < 0) {
      speed = 0;
    }
  }

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
    print("Speed: $speed");
  }
}

class Book {
  String title;
  String author;
  double price;
  int pages;

  Book(this.title, this.author, this.price, this.pages);

  void displayBook() {
    print("Title: $title");
    print("Author: $author");
    print("Price: $price");
    print("Pages: $pages");
    print("Expensive: ${isExpensive()}");
  }

  bool isExpensive() {
    return price > 500;
  }
}

class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  void increaseSalary(double percentage) {
    salary += salary * percentage / 100;
  }

  void displayEmployee() {
    print("Name: $name");
    print("ID: $id");
    print("Salary: $salary");
  }
}

class MobilePhone {
  String brand;
  String model;
  int storage;
  int battery;

  MobilePhone(this.brand, this.model, this.storage, this.battery);

  void usePhone(int hours) {
    battery -= hours * 10;

    if (battery < 0) {
      battery = 0;
    }
  }

  void chargePhone() {
    battery = 100;
  }

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Storage: $storage GB");
    print("Battery: $battery%");
  }
}

class GradeStudent {
  String name;
  int id;
  double math;
  double english;
  double science;

  GradeStudent(
    this.name,
    this.id,
    this.math,
    this.english,
    this.science,
  );

  double calculateAverage() {
    return (math + english + science) / 3;
  }

  String getResult() {
    double average = calculateAverage();

    if (average >= 90) {
      return "Excellent";
    } else if (average >= 80) {
      return "Very Good";
    } else if (average >= 70) {
      return "Good";
    } else if (average >= 50) {
      return "Pass";
    } else {
      return "Fail";
    }
  }

  void displayReport() {
    print("Name: $name");
    print("ID: $id");
    print("Math: $math");
    print("English: $english");
    print("Science: $science");
    print("Average: ${calculateAverage()}");
    print("Result: ${getResult()}");
  }
}

void main() {
  Student student1 = Student("Ahmed", 20, "A");
  Student student2 = Student("Sara", 21, "B");
  Student student3 = Student("Omar", 19, "A+");

  student1.displayInfo();
  print("");
  student2.displayInfo();
  print("");
  student3.displayInfo();

  print("");

  Rectangle rectangle = Rectangle(10, 5);

  print("Area: ${rectangle.calculateArea()}");
  print("Perimeter: ${rectangle.calculatePerimeter()}");

  print("");

  BankAccount account = BankAccount("Ahmed", "123456", 1000);

  account.deposit(500);
  account.deposit(250);
  account.withdraw(300);
  account.withdraw(100);

  account.displayBalance();

  print("");

  Car car = Car("Toyota", "Corolla", 2022);

  car.accelerate();
  car.accelerate();
  car.accelerate();
  car.brake();

  car.displayInfo();

  print("");

  Book book1 = Book("Java Basics", "John Smith", 450, 300);
  Book book2 = Book("Advanced Programming", "David Lee", 650, 500);
  Book book3 = Book("OOP Programming", "Sarah Ahmed", 700, 450);

  book1.displayBook();
  print("");
  book2.displayBook();
  print("");
  book3.displayBook();

  print("");

  Employee employee1 = Employee("Ahmed", 101, 20000);
  Employee employee2 = Employee("Mona", 102, 25000);

  employee1.increaseSalary(25);
  employee2.increaseSalary(10);

  employee1.displayEmployee();
  print("");
  employee2.displayEmployee();

  print("");

  MobilePhone phone = MobilePhone("Samsung", "Galaxy S24", 256, 100);

  phone.usePhone(3);
  phone.displayInfo();

  phone.chargePhone();

  print("After charging:");
  phone.displayInfo();

  print("");

  GradeStudent student4 = GradeStudent("Ahmed", 101, 95, 90, 93);
  GradeStudent student5 = GradeStudent("Sara", 102, 85, 82, 88);
  GradeStudent student6 = GradeStudent("Omar", 103, 65, 72, 68);

  student4.displayReport();
  print("");
  student5.displayReport();
  print("");
  student6.displayReport();
}
