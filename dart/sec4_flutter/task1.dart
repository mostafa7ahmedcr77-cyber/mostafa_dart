class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Grade: $grade');
    print('-------------------');
  }
}

void main() {
  Student student1 = Student('Ahmed', 20, 85);
  Student student2 = Student('Sara', 21, 92);
  Student student3 = Student('Omar', 19, 78);

  student1.displayInfo();
  student2.displayInfo();
  student3.displayInfo();
}