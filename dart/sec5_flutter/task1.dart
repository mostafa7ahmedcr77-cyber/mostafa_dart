class BankAccount {
  int accountID;
  double balance;

  // Constructor with initial balance
  BankAccount(this.accountID, this.balance);

  // No-argument/default constructor
  BankAccount.empty(this.accountID) : balance = 0;

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    }
  }

  void withdraw(double amount) {
    if (amount <= balance && amount > 0) {
      balance -= amount;
      print('Withdrawn: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Insufficient balance.');
    }
  }

  void displayBalance() {
    print('Account ID: $accountID');
    print('Balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  // Using constructor with initial balance
  BankAccount account1 = BankAccount(1001, 1000);

  account1.displayBalance();
  account1.deposit(500);
  account1.withdraw(300);
  account1.displayBalance();

  print('--------------------');

  // Using no-argument/default balance constructor
  BankAccount account2 = BankAccount.empty(1002);

  account2.displayBalance();
  account2.deposit(800);
  account2.withdraw(200);
  account2.withdraw(1000);
  account2.displayBalance();
}