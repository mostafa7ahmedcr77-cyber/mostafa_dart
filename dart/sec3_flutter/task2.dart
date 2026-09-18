void main() {
  List<int> numbers = [1, 2, 3, 2, 4, 5, 1, 3, 6, 4];

  Set<int> uniqueNumbers = {};

  for (int number in numbers) {
    uniqueNumbers.add(number);
  }

  print('Unique numbers: $uniqueNumbers');
  print('Number of unique numbers: ${uniqueNumbers.length}');
}