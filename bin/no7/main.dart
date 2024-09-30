// main.dart

import 'dart:io';
import 'first.dart'; // Import file vehicle.dart

void main() {
  // Meminta input dari pengguna untuk memilih jenis kendaraan
  stdout.write(
      "Apakah Anda ingin membuat Car atau Bike? (masukkan 'Car' atau 'Bike'): ");
  String? choice = stdin.readLineSync();

  // Meminta input nama dan kecepatan kendaraan
  stdout.write("Masukkan nama kendaraan: ");
  String? name = stdin.readLineSync();

  stdout.write("Masukkan kecepatan kendaraan (km/h): ");
  double speed = double.parse(stdin.readLineSync()!);

  // Membuat instance berdasarkan pilihan pengguna
  Vehicle vehicle;

  if (choice != null && choice.toLowerCase() == 'car') {
    vehicle = Car(name!, speed);
  } else if (choice != null && choice.toLowerCase() == 'bike') {
    vehicle = Bike(name!, speed);
  } else {
    print("Pilihan tidak valid. Silahkan masukkan 'Car' atau 'Bike'.");
    return;
  }

  // Memanggil metode move()
  vehicle.move();

  // Menampilkan informasi kendaraan
  print("\nInformasi Kendaraan:");
  print("Nama: ${vehicle.name}");
  print("Kecepatan: ${vehicle.speed} km/h");
}
