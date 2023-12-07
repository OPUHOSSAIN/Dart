abstract class Role {
  void displayRole();
}

class Person implements Role {
  String name = '';
  int age = 0;
  String address = '';

  Person(String name, int age, String address) {
    this.name = name;
    this.age = age;
    this.address = address;
  }

  @override
  displayRole() {}
}

class Student extends Person {
  String studentID = '';
  String grade = '';
  List courseScores = [];

  Student(super.name, super.age, super.address, String studentID, String grade, List courseScores) {
    this.name = super.name;
    this.age = super.age;
    this.address = super.address;
    this.studentID = studentID;
    this.grade = grade;
    this.courseScores = courseScores;
  }

  @override
  void displayRole() {
    print("Role: Student\nName: ${this.name}\nAge: ${this.age}\nAddress: ${this.address}\nAverage Score: ${this.averageScore()}\n");
  }

  String averageScore() {
    List scores = this
        .courseScores
        .map((e) => e.toDouble())
        .toList(); // Parsing to double
    double sum = 0;
    for (int i = 0; i < scores.length; i++) {
      sum += scores[i];
    }
    return ((sum / scores.length).toStringAsFixed(2));
  }
}

class Teacher extends Person {
  String teacherID = '';
  List coursesTaught = [];

  Teacher(super.name, super.age, super.address, String teacherID, List coursesTaught) {
    this.name = super.name;
    this.age = super.age;
    this.address = super.address;
    this.teacherID = teacherID;
    this.coursesTaught = coursesTaught;
  }

  @override
  displayRole() {
    print("Role: Teacher\nName: ${this.name}\nAge: ${this.age}\nAddress: ${this.address}\n");
  }

  void showCourses() {
    for (int i = 0; i < this.coursesTaught.length; i++) {
      print((i + 1).toString() + ". " + this.coursesTaught[i]);
    }
  }
}

class StudentManagementSystem {}

void main(List<String> args) {
  Student JohnDoe = Student("John Doe", 20, "123 Main St", "stu001", "A", [90, 85, 82]);
  Teacher MrsSmith = Teacher( "Mrs. Smith", 35, "456 Oak St", "tch001", ["Bangla", "English", "Math"]);

  JohnDoe.displayRole();
  MrsSmith.displayRole();
}
