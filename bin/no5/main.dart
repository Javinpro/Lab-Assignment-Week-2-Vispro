// main.dart
import 'first.dart'; // Import file animal.dart

void main() {
  Dog dog = Dog();
  print("===== Dog =====");
  dog.sound();
  dog.eat();

  Cat cat = Cat();
  print("===== Cat =====");
  cat.sound();
  cat.eat();
}
