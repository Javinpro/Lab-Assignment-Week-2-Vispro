// main.dart

import 'dart:io';
import 'first.dart'; // Import file student.dart

void main() {
  var student = new Student();

  stdout.write("Enter Student ID: ");
  int studentID = int.parse(stdin.readLineSync() ?? '0');
  student.setStudentID(studentID);

  stdout.write("Enter Name: ");
  String name = stdin.readLineSync() ?? '';
  student.setName(name);

  stdout.write("Enter Grade: ");
  int grade = int.parse(stdin.readLineSync() ?? '0');
  student.setGrade(grade);

  student.displayInfo();

  if (student.nilaiLulus()) {
    print("Status: Passed");
  } else {
    print("Status: Not Passed");
  }
}
