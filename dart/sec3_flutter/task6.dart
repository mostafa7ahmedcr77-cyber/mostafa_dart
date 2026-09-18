import 'dart:io';

void main() {
  double balance = 1000.0;
  int option;

  do {
    print('\n===== ATM MENU =====');
    print('1. Check Balance');
    print('2. Deposit');
    print('3. Withdraw');
    print('4. Exit');

    stdout.write('Choose an option: ');
    option = int.parse(stdin.readLineSync()!);

    if (option == 1) {
      print('Current balance: \$${balance.toStringAsFixed(2)}');
    } else if (option == 2) {
      stdout.write('Enter deposit amount: ');
      double amount = double.parse(stdin.readLineSync()!);

      if (amount > 0) {
        balance += amount;
        print('Deposit successful.');
        print('New balance: \$${balance.toStringAsFixed(2)}');
      } else {
        print('Invalid amount.');
      }
    } else if (option == 3) {
      stdout.write('Enter withdrawal amount: ');
      double amount = double.parse(stdin.readLineSync()!);

      if (amount <= 0) {
        print('Invalid amount.');
      } else if (amount <= balance) {
        balance -= amount;
        print('Withdrawal successful.');
        print('New balance: \$${balance.toStringAsFixed(2)}');
      } else {
        print('Not enough money.');
      }
    } else if (option == 4) {
      print('Goodbye!');
    } else {
      print('Invalid option');
    }
  } while (option != 4);
}