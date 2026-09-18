class Teacher {
  String name;
  List<String> courses = [];

  Teacher(this.name);

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }

    courses.add(course);
    return true;
  }

  bool removeCourse(String course) {
    if (courses.contains(course)) {
      courses.remove(course);
      return true;
    }

    return false;
  }

  void displayCourses() {
    print('Teacher: $name');
    print('Courses: $courses');
  }
}

void main() {
  Teacher teacher = Teacher('Ahmed');

  // 1. Add a new course
  print(
    'Add Dart: ${teacher.addCourse('Dart')}',
  );

  // 2. Try to add the same course
  print(
    'Add Dart again: ${teacher.addCourse('Dart')}',
  );

  // Add another course
  print(
    'Add Flutter: ${teacher.addCourse('Flutter')}',
  );

  teacher.displayCourses();

  print('--------------------');

  // 3. Remove an existing course
  print(
    'Remove Dart: ${teacher.removeCourse('Dart')}',
  );

  // 4. Try to remove a course that does not exist
  print(
    'Remove Java: ${teacher.removeCourse('Java')}',
  );

  teacher.displayCourses();
}