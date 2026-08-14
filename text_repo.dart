import 'dart:io';

void main() {

  // Task 1 

  print("===== Task 1 =====");

  Map<String, int> students = {
    "Ahmed": 85,
    "Ali": 75,
    "Omar": 90,
    "Mona": 65,
    "Sara": 80,
  };

  int totalGrades = 0;

  for (var student in students.entries) {
    print("${student.key}: ${student.value}");

    if (student.value >= 80) {
      print("${student.key} scored 80 or higher");
    }

    totalGrades += student.value;
  }

  double average = totalGrades / students.length;
  print("Average Grade: $average");


  // Task 2 

  print("\n===== Task 2 =====");

  List<int> numbers = [1, 2, 3, 2, 4, 5, 1, 3, 6, 4];

  Set<int> uniqueNumbers = {};

  for (int number in numbers) {
    uniqueNumbers.add(number);
  }

  print("Unique numbers: $uniqueNumbers");
  print("Number of unique numbers: ${uniqueNumbers.length}");


  // Task 3 

  print("\n===== Task 3 =====");

  Map<String, double> products = {
    "Laptop": 1000,
    "Mouse": 30,
    "Keyboard": 70,
    "Headphones": 120,
    "USB Cable": 20,
  };

  double totalPrice = 0;
  String mostExpensive = "";
  double highestPrice = 0;

  for (var product in products.entries) {
    print("${product.key}: \$${product.value}");

    totalPrice += product.value;

    if (product.value > 50) {
      print("${product.key} costs more than 50");
    }

    if (product.value > highestPrice) {
      highestPrice = product.value;
      mostExpensive = product.key;
    }
  }

  print("Total Price: \$${totalPrice}");
  print("Most Expensive Product: $mostExpensive");


  // Task 4 

  print("\n===== Task 4 =====");

  int secretNumber = 7;
  int attempts = 0;
  int guess = 0;

  while (guess != secretNumber) {
    stdout.write("Enter a number: ");
    guess = int.parse(stdin.readLineSync()!);

    attempts++;

    if (guess > secretNumber) {
      print("Too high!");
    } else if (guess < secretNumber) {
      print("Too low!");
    } else {
      print("Correct!");
      print("Attempts: $attempts");
    }
  }


  // Task 5 

  print("\n===== Task 5 =====");

  List<String> words = [
    "hello",
    "world",
    "hello",
    "dart",
    "flutter",
    "dart",
    "hello"
  ];

  Set<String> uniqueWords = {};

  Map<String, int> wordCount = {};

  for (String word in words) {
    uniqueWords.add(word);

    if (wordCount.containsKey(word)) {
      wordCount[word] = wordCount[word]! + 1;
    } else {
      wordCount[word] = 1;
    }
  }

  print("Unique words:");

  for (String word in uniqueWords) {
    print(word);
  }

  print("Number of unique words: ${uniqueWords.length}");

  print("Word counts:");

  for (var word in wordCount.entries) {
    print("${word.key}: ${word.value}");
  }


  // Task 6 

  print("\n===== Task 6 =====");

  double balance = 1000;
  int choice;

  do {
    print("\n--- ATM Menu ---");
    print("1. Check Balance");
    print("2. Deposit");
    print("3. Withdraw");
    print("4. Exit");

    stdout.write("Choose an option: ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Current Balance: \$${balance}");
    } 
    
    else if (choice == 2) {
      stdout.write("Enter deposit amount: ");
      double amount = double.parse(stdin.readLineSync()!);

      balance += amount;

      print("Deposit successful.");
      print("New Balance: \$${balance}");
    } 
    
    else if (choice == 3) {
      stdout.write("Enter withdrawal amount: ");
      double amount = double.parse(stdin.readLineSync()!);

      if (amount <= balance) {
        balance -= amount;

        print("Withdrawal successful.");
        print("New Balance: \$${balance}");
      } else {
        print("Not enough money.");
      }
    } 
    
    else if (choice == 4) {
      print("Goodbye!");
    } 
    
    else {
      print("Invalid option");
    }

  } while (choice != 4);
}