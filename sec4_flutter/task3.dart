class BankAccount {
  String ownerName;
  String accountNumber;
  double balance;

  BankAccount(this.ownerName, this.accountNumber, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Invalid deposit amount.');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Invalid withdrawal amount.');
    } else if (amount <= balance) {
      balance -= amount;
      print('Withdrawn: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Insufficient balance.');
    }
  }

  void displayBalance() {
    print('Current balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  BankAccount account = BankAccount(
    'Ahmed',
    '123456789',
    1000,
  );

  account.displayBalance();

  account.deposit(500);
  account.displayBalance();

  account.withdraw(200);
  account.displayBalance();

  account.withdraw(2000);
  account.displayBalance();

  account.deposit(300);
  account.displayBalance();
}