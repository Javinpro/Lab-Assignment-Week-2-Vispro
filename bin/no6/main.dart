// main.dart
import 'dart:io';
import 'first.dart'; // Import file

void main() {
  stdout.write("Suhu dalam Celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);

  bool running = true;

  while (running) {
    print("\n========================");
    print("Pilih konversi suhu; ");
    print("1. Reaumur");
    print("2. Fahrenheit");
    print("3. Kelvin");
    print("4. Keluar");

    stdout.write("Pilih opsi: ");
    String? pilihan = stdin.readLineSync();

    double hasilKonversi;

    switch (pilihan) {
      case '1':
        hasilKonversi = convertToReaumur(celsius);
        print("Suhu dalam Reaumur: ${hasilKonversi}°R");
        break;

      case '2':
        hasilKonversi = convertToFahrenheit(celsius);
        print("Suhu dalam Fahrenheit: ${hasilKonversi}°F");
        break;

      case '3':
        hasilKonversi = convertToKelvin(celsius);
        print("Suhu dalam Kelvin: ${hasilKonversi}°K");
        break;

      case '4':
        print("Terima kasih sudah memakai alat konversi ini!");
        running = false;
        break;

      default:
        print("Pilihan tidak valid.");
    }
  }
}
