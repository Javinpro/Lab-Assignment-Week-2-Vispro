// vehicle.dart

class Vehicle {
  String _name; // Atribut privat
  double _speed; // Atribut privat

  // Constructor
  Vehicle(this._name, this._speed);

  // Getter untuk nama
  String get name => _name;

  // Setter untuk nama
  set name(String name) => _name = name;

  // Getter untuk kecepatan
  double get speed => _speed;

  // Setter untuk kecepatan
  set speed(double speed) => _speed = speed;

  // Metode untuk diganti di subclass
  void move() {
    print("The vehicle is moving.");
  }

  // Metode untuk menentukan kategori kecepatan
  String getSpeedCategory() {
    if (_speed > 60) {
      return "fast";
    } else if (_speed < 30) {
      return "slow";
    } else {
      return "normal";
    }
  }
}

// Subclass Car
class Car extends Vehicle {
  Car(String name, double speed) : super(name, speed);

  @override
  void move() {
    print("The car moves fast on roads at a ${getSpeedCategory()} speed.");
  }
}

// Subclass Bike
class Bike extends Vehicle {
  Bike(String name, double speed) : super(name, speed);

  @override
  void move() {
    print(
        "The bike moves swiftly through traffic at a ${getSpeedCategory()} speed.");
  }
}
