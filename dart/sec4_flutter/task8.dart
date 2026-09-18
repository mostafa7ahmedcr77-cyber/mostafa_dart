class Student {
  String name;
  int id;
  double math;
  double english;
  double science;

  Student(
    this.name,
    this.id,
    this.math,
    this.english,
    this.science,
  );

  double calculateAverage() {
    return (math + english + science) / 3;
  }

  String getResult() {
    double average = calculateAverage();

    if (average >= 90) {
      return 'Excellent';
    } else if (average >= 80) {
      return 'Very Good';
    } else if (average >= 70) {
      return 'Good';
    } else if (average >= 50) {
      return 'Pass';
    } else {
      return 'Fail';
    }
  }

  void displayReport() {
    print('Student Name: $name');
    print('Student ID: $id');
    print('Math: $math');
    print('English: $english');
    print('Science: $science');
    print('Average: ${calculateAverage().toStringAsFixed(2)}');
    print('Result: ${getResult()}');
    print('======================');
  }
}

void main() {
  Student student1 = Student(
    'Ahmed',
    101,
    95,
    90,
    92,
  );

  Student student2 = Student(
    'Sara',
    102,
    85,
    80,
    88,
  );

  Student student3 = Student(
    'Omar',
    103,
    65,
    70,
    60,
  );

  student1.displayReport();
  student2.displayReport();
  student3.displayReport();
}