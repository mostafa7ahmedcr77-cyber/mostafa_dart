import 'package:flutter/material.dart';
import 'package:my_projict/screens/product_screen.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.decoration,
    required this.price,
  });

  final String image;
  final String title;
  final String decoration;
  final String price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 175,
        height: 250,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Color(0xffE2E2E2)),
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Image.asset(
              image,
              width: 110,
              height: 62,
              fit: BoxFit.contain,
              alignment: .center,
            ),

            SizedBox(height: 20),

            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: .w400,
                color: Color(0xff181725),
              ),
            ),

            SizedBox(height: 5),

            Text(
              decoration,
              style: TextStyle(
                fontSize: 14,
                fontWeight: .w400,
                color: Color(0xff7C7C7C),
              ),
            ),

            Spacer(),

            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: .w400,
                    color: Color(0xff181725),
                  ),
                ),

                SizedBox(
                  width: 45,
                  height: 45,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductScreen(),
                        ),
                      );
                    },
                    backgroundColor: Color(0xff53B175),
                    child: Icon(Icons.add, color: Colors.white, size: 25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProductScreen()));
      },
    );
  }
}
