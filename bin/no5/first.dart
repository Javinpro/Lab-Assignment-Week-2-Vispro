// animal.dart

class Animal {
  void sound() {
    print("The animal sound");
  }

  void eat() {
    print("The animal eating");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Woof Woof");
  }

  @override
  void eat() {
    print("Eating a meat.");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Miaw Miaw");
  }

  @override
  void eat() {
    print("Eating a fish.");
  }
}
