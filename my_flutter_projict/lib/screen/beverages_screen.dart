
import 'package:flutter/material.dart';

class BeverageItem {
  final String name;
  final String volume;
  final String price;
  final String imagePath;

  BeverageItem({
    required this.name,
    required this.volume,
    required this.price,
    required this.imagePath,
  });
}

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BeverageItem> beverages = [
      BeverageItem(
        name: 'Diet Coke',
        volume: '355ml, Price',
        price: '\$1.99',
        imagePath: 'assets/image/pngfuel 11.png',
      ),
      BeverageItem(
        name: 'Sprite Can',
        volume: '325ml, Price',
        price: '\$1.50',
        imagePath: 'assets/image/pngfuel 12.png',
      ),
      BeverageItem(
        name: 'Apple & Grape\nJuice',
        volume: '2L, Price',
        price: '\$15.99',
        imagePath: 'assets/image/tree-top-juice-apple-grape-64oz 1.png',
      ),
      BeverageItem(
        name: 'Orenge Juice',
        volume: '2L, Price',
        price: '\$15.99',
        imagePath: 'assets/image/tree-top-juice-apple-grape-64oz 1(1).png',
      ),
      BeverageItem(
        name: 'Coca Cola Can',
        volume: '325ml, Price',
        price: '\$4.99',
        imagePath: 'assets/image/pngfuel 13.png',
      ),
      BeverageItem(
        name: 'Pepsi Can',
        volume: '330ml, Price',
        price: '\$4.99',
        imagePath: 'assets/image/pngfuel 14.png',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),

        title: const Text(
          'Beverages',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),

        centerTitle: true,

        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/Group 6839.png',
              width: 20,
              height: 20,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),

        child: GridView.builder(
          itemCount: beverages.length,

          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.72,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),

          itemBuilder: (context, index) {
            final item = beverages[index];

            return Container(
              padding: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        item.imagePath,
                        width: 140,
                        height: 170,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    item.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    item.volume,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [
                      Text(
                        item.price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      Container(
                        width: 42,
                        height: 42,

                        decoration: BoxDecoration(
                          color: const Color(0xFF53B175),
                          borderRadius:
                              BorderRadius.circular(15),
                        ),

                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

