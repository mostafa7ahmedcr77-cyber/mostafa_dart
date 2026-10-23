
import 'package:flutter/material.dart';
import 'package:my_projict/screens/product_screen.dart';

class ProductCard extends StatefulWidget {
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
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  // final AudioPlayer _player = AudioPlayer();

  Future<void> playClickSound() async {
    // await _player.play(
    //   AssetSource(
    //     'dragon-studio-pop-402324(1).mp3',
    //   ),
    // );
  }

  @override
  void dispose() {
    // _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(
              imagePath: widget.imagePath,
              title: widget.title,
              subtitle: widget.subtitle,
              price: widget.price,
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
              widget.imagePath,
              height: 90,
              width: double.infinity,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 10),

            Text(
              widget.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff181725),
              ),
            ),

            Text(
              widget.subtitle,
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
                  widget.price,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff181725),
                  ),
                ),

                GestureDetector(
                  onTap: playClickSound,
                  child: Container(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}