void main() {
  Map<String, int> students = {
    'Ahmed': 85,
    'Sara': 72,
    'Omar': 90,
    'Mona': 78,
    'Ali': 95,
  };

  int total = 0;

  for (var student in students.entries) {
    print('${student.key}: ${student.value}');

    if (student.value >= 80) {
      print('${student.key} scored 80 or higher.');
    }

    total += student.value;
  }

  double average = total / students.length;
  print('Average grade: $average');
}