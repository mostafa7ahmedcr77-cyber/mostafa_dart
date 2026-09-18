void main() {
  Map<String, double> products = {
    'Laptop': 900.0,
    'Mouse': 25.0,
    'Keyboard': 75.0,
    'Headphones': 120.0,
    'USB Cable': 15.0,
  };

  double total = 0;
  String mostExpensiveProduct = '';
  double highestPrice = 0;

  for (var product in products.entries) {
    print('${product.key}: \$${product.value}');

    total += product.value;

    if (product.value > 50) {
      print('${product.key} costs more than 50.');
    }

    if (product.value > highestPrice) {
      highestPrice = product.value;
      mostExpensiveProduct = product.key;
    }
  }

  print('Total price: \$${total.toStringAsFixed(2)}');
  print(
    'Most expensive product: $mostExpensiveProduct '
    '(\$${highestPrice.toStringAsFixed(2)})',
  );
}