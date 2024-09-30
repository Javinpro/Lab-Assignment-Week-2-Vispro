// main.dart

import 'dart:io';
import 'first.dart'; // Import file bank_account.dart

void main() {
  stdout.write("Masukkan saldo awal: Rp");
  double initialBalance = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan presentase bunga: ");
  double interestRate = double.parse(stdin.readLineSync()!);

  var savings = SavingsAccount(initialBalance, interestRate);

  bool running = true;

  while (running) {
    print("\n==== Bank UC ====");
    print("1. Deposit");
    print("2. Withdraw");
    print("3. Cek Saldo");
    print("4. Terapkan Bunga");
    print("5. Keluar");
    stdout.write("Pilih Opsi: ");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        stdout.write("Masukkan jumlah deposit: Rp");
        double depositAmount = double.parse(stdin.readLineSync()!);
        savings.deposit(depositAmount);
        break;
      case '2':
        stdout.write("Masukkan jumlah withdraw: Rp");
        double withdrawAmount = double.parse(stdin.readLineSync()!);
        savings.withdraw(withdrawAmount);
        break;
      case '3':
        print("Saldo saat ini: Rp${savings.checkBalance()}");
        break;
      case '4':
        savings.applyInterest();
        break;
      case '5':
        print("Terima kasih telah berkunjung di bank kami!");
        running = false;
        break;

      default:
        print("Pilihan tidak valid. Silahkan masukkan ulang pilihanmu.");
    }
  }
}
