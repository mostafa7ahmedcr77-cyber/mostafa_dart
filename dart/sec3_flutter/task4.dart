import 'dart:io';

void main() {
  int secretNumber = 42;
  int attempts = 0;
  int guess = 0;

  while (guess != secretNumber) {
    stdout.write('Enter your guess: ');
    guess = int.parse(stdin.readLineSync()!);

    attempts++;

    if (guess > secretNumber) {
      print('Too high!');
    } else if (guess < secretNumber) {
      print('Too low!');
    } else {
      print('Correct!');
      print('You found it in $attempts attempts.');
    }
  }
}