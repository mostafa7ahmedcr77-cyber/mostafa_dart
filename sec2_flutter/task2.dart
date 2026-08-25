void main() {
  List<int> numbers = [10, -5, 0, 8, -3, 15, 7, -9];

  int positive = 0;
  int negative = 0;
  int zeros = 0;

  for (int number in numbers) {
    if (number > 0) {
      positive++;
    } else if (number < 0) {
      negative++;
    } else {
      zeros++;
    }
  }

  print('Positive numbers: $positive');
  print('Negative numbers: $negative');
  print('Zeros: $zeros');
}
