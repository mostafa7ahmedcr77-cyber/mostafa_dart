void main() {
  List<int> grades = [95, 82, 67, 45, 78, 99, 58];

  for (int grade in grades) {
    if (grade >= 60) {
      print('$grade: Passed');
    } else {
      print('$grade: Failed');
    }
  }
}
