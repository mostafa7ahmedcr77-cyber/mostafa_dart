void main() {
  List<String> words = [
    'dart',
    'is',
    'fun',
    'dart',
    'is',
    'easy',
    'to',
    'learn',
    'dart'
  ];

  Set<String> uniqueWords = {};

  for (String word in words) {
    uniqueWords.add(word);
  }

  print('Unique words:');

  for (String word in uniqueWords) {
    print(word);
  }

  print('Number of unique words: ${uniqueWords.length}');

  Map<String, int> wordCount = {};

  for (String word in words) {
    if (wordCount.containsKey(word)) {
      wordCount[word] = wordCount[word]! + 1;
    } else {
      wordCount[word] = 1;
    }
  }

  print('Word counts:');
  for (var entry in wordCount.entries) {
    print('${entry.key}: ${entry.value}');
  }
}