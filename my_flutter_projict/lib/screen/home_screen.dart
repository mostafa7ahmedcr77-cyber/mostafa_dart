
import 'package:flutter/material.dart';

import 'product_details_screen.dart';
import 'explore_screen.dart';
import 'search_screen.dart';
import 'cart_screen.dart';
import 'favourite_screen.dart';
import 'account_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/image/Group.png',
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/Exclude.png',
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Dhaka, Banassre',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4C4F4D),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffF2F3F2),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/Vector.png',
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Search Store',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Image.asset(
                'assets/image/banner.png',
              ),

              const SizedBox(height: 20),

              const SectionHeader(
                title: 'Exclusive Offer',
              ),

              const SizedBox(height: 15),

              productList([
                const ProductCard(
                  imagePath: 'assets/image/banas.png',
                  title: 'Organic Bananas',
                  subtitle: '7pcs, Price',
                  price: '\$4.99',
                ),
                const ProductCard(
                  imagePath: 'assets/image/pngfuel 1.png',
                  title: 'Red Apple',
                  subtitle: '1kg, Price',
                  price: '\$4.99',
                ),
                const ProductCard(
                  imagePath: 'assets/image/banas.png',
                  title: 'Organic Bananas',
                  subtitle: '7pcs, Price',
                  price: '\$4.99',
                ),
                const ProductCard(
                  imagePath: 'assets/image/pngfuel 1.png',
                  title: 'Red Apple',
                  subtitle: '1kg, Price',
                  price: '\$4.99',
                ),
              ]),

              const SizedBox(height: 25),

              const SectionHeader(
                title: 'Best Selling',
              ),

              const SizedBox(height: 15),

              productList([
                const ProductCard(
                  imagePath: 'assets/image/p 1.png',
                  title: 'Bell Pepper Red',
                  subtitle: '1kg, Price',
                  price: '\$4.99',
                ),
                const ProductCard(
                  imagePath: 'assets/image/p 2.png',
                  title: 'Ginger',
                  subtitle: '250gm, Price',
                  price: '\$4.99',
                ),
                const ProductCard(
                  imagePath: 'assets/image/p 1.png',
                  title: 'Bell Pepper Red',
                  subtitle: '1kg, Price',
                  price: '\$4.99',
                ),
                const ProductCard(
                  imagePath: 'assets/image/p 2.png',
                  title: 'Ginger',
                  subtitle: '250gm, Price',
                  price: '\$4.99',
                ),
              ]),

              const SizedBox(height: 25),

              const SectionHeader(
                title: 'Groceries',
              ),

              const SizedBox(height: 15),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCard(
                      title: 'Pulses',
                      imagePath: 'assets/image/p 4.png',
                      color: const Color(0xffF8A44C),
                    ),
                    const SizedBox(width: 15),
                    CategoryCard(
                      title: 'Rice',
                      imagePath: 'assets/image/p 5.png',
                      color: const Color(0xff53B175),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              productList([
                const ProductCard(
                  imagePath: 'assets/image/pngfuel 4.png',
                  title: 'Beef Bone',
                  subtitle: '1kg, Price',
                  price: '\$4.99',
                ),
                const ProductCard(
                  imagePath: 'assets/image/pngfuel 5.png',
                  title: 'Broiler Chicken',
                  subtitle: '1kg, Price',
                  price: '\$4.99',
                ),
                const ProductCard(
                  imagePath: 'assets/image/pngfuel 4.png',
                  title: 'Beef Bone',
                  subtitle: '1kg, Price',
                  price: '\$4.99',
                ),
                const ProductCard(
                  imagePath: 'assets/image/pngfuel 5.png',
                  title: 'Broiler Chicken',
                  subtitle: '1kg, Price',
                  price: '\$4.99',
                ),
              ]),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: const Color(0xff53B175),
        unselectedItemColor: const Color(0xff181725),

        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExploreScreen(),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyCartScreen(),
              ),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavouriteScreen(),
              ),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AccountScreen(),
              ),
            );
          }
        },

        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/store 1.png',
              width: 24,
              height: 24,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/Group 3.png',
              width: 24,
              height: 24,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/Vector(2).png',
              width: 24,
              height: 24,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/bookmark 1.png',
              width: 24,
              height: 24,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/Vector(3).png',
              width: 24,
              height: 24,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Widget productList(List<ProductCard> products) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: products
            .map(
              (product) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: SizedBox(
                  width: 175,
                  child: product,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color(0xff181725),
          ),
        ),
        const Text(
          'See all',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff53B175),
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
              imagePath: imagePath,
              title: title,
              subtitle: subtitle,
              price: price,
            ),
          ),
        );
      },

      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: const Color(0xffE2E2E2),
          ),
          color: Colors.white,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 90,
              width: double.infinity,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 10),

            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff181725),
              ),
            ),

            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xff7C7C7C),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff181725),
                  ),
                ),

                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xff53B175),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;

  const CategoryCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 105,
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),

          const SizedBox(width: 15),

          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff181725),
            ),
          ),
        ],
      ),
    );
  }
}

