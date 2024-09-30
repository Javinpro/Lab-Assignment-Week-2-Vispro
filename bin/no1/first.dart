// student.dart

class Student {
  String? name;
  var grade;
  var studentID;

  String? getName() {
    return this.name;
  }

  void setName(String name) {
    this.name = name;
  }

  String getGrade() {
    return this.grade;
  }

  void setGrade(int grade) {
    this.grade = grade;
  }

  int getStudentID() {
    return this.studentID;
  }

  void setStudentID(int studentID) {
    this.studentID = studentID;
  }

  void displayInfo() {
    print("=========================================");
    print("My Information: ");
    print("Student ID : $studentID");
    print("Name : $name");
    print("Grade : $grade");
  }

  bool nilaiLulus() {
    return grade != null && grade! >= 70;
  }
}
