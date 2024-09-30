// main.dart

import 'dart:io';
import 'first.dart'; // Import file atm.dart

void main() {
  stdout.write("Enter initial balance: Rp");
  double initialBalance = double.parse(stdin.readLineSync()!);

  var account = ATM(initialBalance);

  bool running = true;

  while (running) {
    print("\n==== ATM UC ====");
    print("1. Deposit");
    print("2. Withdraw");
    print("3. Check Balance");
    print("4. Exit");
    stdout.write("Select Option: ");
    String? option = stdin.readLineSync();

    switch (option) {
      case '1':
        stdout.write("Enter deposit amount: Rp");
        double depositAmount = double.parse(stdin.readLineSync()!);
        account.deposit(depositAmount);
        break;

      case '2':
        stdout.write("Enter withdraw amount: Rp");
        double withdrawAmount = double.parse(stdin.readLineSync()!);
        account.withdraw(withdrawAmount);
        break;

      case '3':
        print(
            "Balance right now: Rp${account.getBalance().toStringAsFixed(2)}");
        break;

      case '4':
        print("Thank you for visit us!!");
        running = false;
        break;

      default:
        print("Option not valid, please try again.");
    }
  }
}
