// atm.dart

class ATM {
  double _balance;
  final double minTransaction = 50000;

  ATM(this._balance);

  void deposit(double amount) {
    if (amount >= minTransaction) {
      _balance += amount;
      print(
          "Deposit: Rp${amount.toStringAsFixed(2)}. Balance right now: Rp${_balance.toStringAsFixed(2)}");
    } else {
      print("Minimum deposit is Rp50000");
    }
  }

  void withdraw(double amount) {
    if (amount >= minTransaction && amount <= _balance) {
      _balance -= amount;
      print(
          "Withdraw: Rp${amount.toStringAsFixed(2)}. Balance right now: Rp${_balance.toStringAsFixed(2)}");
    } else if (amount > _balance) {
      print("Balance isn't enough.");
    } else {
      print("Minimum withdraw is Rp50000");
    }
  }

  double getBalance() {
    return _balance;
  }
}
