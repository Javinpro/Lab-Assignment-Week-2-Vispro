// bank_account.dart

class BankAccount {
  double _balance;
  final double minTransaction = 50000;

  BankAccount(this._balance);

  void deposit(double amount) {
    if (amount >= minTransaction) {
      _balance += amount;
      print("Deposit: Rp$amount. Saldo saat ini: Rp$_balance");
    } else {
      print("Minimum deposit adalah Rp50000");
    }
  }

  void withdraw(double amount) {
    if (amount >= minTransaction && amount <= _balance) {
      _balance -= amount;
      print("Withdraw: Rp$amount. Saldo saat ini: Rp$_balance");
    } else if (amount > _balance) {
      print("Saldo tidak mencukupi.");
    } else {
      print("Minimum withdraw adalah Rp50000");
    }
  }

  double checkBalance() {
    return _balance;
  }

  void addBalance(double amount) {
    _balance += amount;
  }
}

class SavingsAccount extends BankAccount {
  double _interestRate;

  SavingsAccount(double balance, this._interestRate) : super(balance);

  void applyInterest() {
    double interest = checkBalance() * _interestRate / 100;
    addBalance(interest);
    print("Bunga: $interest. Saldo setelah bunga: Rp${checkBalance()}");
  }
}
