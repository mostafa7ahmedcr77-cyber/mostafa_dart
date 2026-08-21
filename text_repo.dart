// 1. Student Grade Calculator

class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  bool isPassed() {
    return grade >= 50;
  }

  void printInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: $grade");
    print("Passed: ${isPassed()}");
  }
}


// 2. Rectangle Calculator

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

  bool isSquare() {
    return width == height;
  }
}


// 3. Bank Account

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
      print("Withdrawn: $amount");
    } else {
      print("Not enough balance!");
    }
  }

  void showBalance() {
    print("Current Balance: $balance");
  }
}


// 4. Product Discount System

class DiscountProduct {
  String name;
  double price;
  int quantity;

  DiscountProduct(this.name, this.price, this.quantity);

  double calculateTotal() {
    return price * quantity;
  }

  double applyDiscount(double percentage) {
    double discount = calculateTotal() * percentage / 100;
    return calculateTotal() - discount;
  }

  void printReceipt() {
    print("Product: $name");
    print("Quantity: $quantity");
    print("Total Price: ${calculateTotal()}");
    print("Discounted Price: ${applyDiscount(10)}");
  }
}


// 5. Car Fuel Calculator

class Car {
  String brand;
  String model;
  double fuel;
  double fuelConsumption;

  Car(this.brand, this.model, this.fuel, this.fuelConsumption);

  void drive(double distance) {
    double fuelNeeded = (distance * fuelConsumption) / 100;

    if (fuelNeeded <= fuel) {
      fuel -= fuelNeeded;

      print("Distance: $distance km");
      print("Fuel used: $fuelNeeded liters");
    } else {
      print("Not enough fuel!");
    }
  }

  void refuel(double amount) {
    fuel += amount;
  }

  void showInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Current Fuel: $fuel liters");
    print("Fuel Consumption: $fuelConsumption L/100km");
  }
}


// 6. Simple Shopping Cart

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double getTotalPrice() {
    return price * quantity;
  }
}


class ShoppingCart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  double calculateTotal() {
    double total = 0;

    for (Product product in products) {
      total += product.getTotalPrice();
    }

    return total;
  }

  void showCart() {
    print("Shopping Cart:");

    for (Product product in products) {
      print(
        "${product.name} - Quantity: ${product.quantity} - Total: ${product.getTotalPrice()}",
      );
    }

    print("Cart Total: ${calculateTotal()}");
  }

  double applyDiscount(double percentage) {
    double total = calculateTotal();
    double discount = total * percentage / 100;

    return total - discount;
  }
}


// MAIN

void main() {

  // 1. Student

  Student student1 = Student("Ahmed", 20, 85);
  Student student2 = Student("Sara", 19, 45);
  Student student3 = Student("Omar", 21, 60);

  student1.printInfo();
  student2.printInfo();
  student3.printInfo();


  // 2. Rectangle

  Rectangle rectangle = Rectangle(10, 5);

  print("Width: ${rectangle.width}");
  print("Height: ${rectangle.height}");
  print("Area: ${rectangle.calculateArea()}");
  print("Perimeter: ${rectangle.calculatePerimeter()}");
  print("Is Square: ${rectangle.isSquare()}");


  // 3. Bank Account

  BankAccount account = BankAccount(
    "Ahmed",
    "123456",
    1000,
  );

  account.showBalance();

  account.deposit(500);
  account.showBalance();

  account.withdraw(300);
  account.showBalance();

  account.withdraw(1500);
  account.showBalance();


  // 4. Product Discount

  DiscountProduct product = DiscountProduct(
    "Laptop",
    1000,
    2,
  );

  product.printReceipt();


  // 5. Car

  Car car = Car(
    "Toyota",
    "Corolla",
    20,
    6,
  );

  car.showInfo();

  car.drive(100);

  car.showInfo();

  car.refuel(10);

  car.showInfo();

  car.drive(500);

  car.showInfo();


  // 6. Shopping Cart


  Product product1 = Product("Laptop", 1000, 1);
  Product product2 = Product("Mouse", 50, 2);
  Product product3 = Product("Keyboard", 100, 1);

  ShoppingCart cart = ShoppingCart();

  cart.addProduct(product1);
  cart.addProduct(product2);
  cart.addProduct(product3);

  cart.showCart();

  print(
    "Price after 10% discount: ${cart.applyDiscount(10)}",
  );
}