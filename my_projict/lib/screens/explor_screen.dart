import 'package:flutter/material.dart';
import 'package:my_projict/widget/search_widget.dart';

class ExplorScreen extends StatelessWidget {
  ExplorScreen({super.key});
  List<category> categories = [
    category(
      imagePath: "assets/image/pngfuel 6.png",
      color: Color(0xff181725),
      title: "Frash Fruits Vegetable",
    ),
    category(
      imagePath: "assets/image/Group 6835.png",
      color: Color(0xffFFF6EE),
      title: "Cooking Oil& Ghee",
    ),
    category(
      imagePath:
          "assets/image/22d3aac257974f1aad9e0ec045f5bfc22ef5a6ab copy.png",
      color: Color(0xffFDE8E4),
      title: "Meat & Fish",
    ),
    category(
      imagePath: "assets/image/pngfuel 6(1).png",
      color: Color(0xffF4EBF7),
      title: "Bakery & Snacks",
    ),
    category(
      imagePath: "assets/image/pngfuel.png",
      color: Color(0xffFEF8E5),
      title: "Dairy & Eggs",
    ),
    category(
      imagePath: "assets/image/pngfuel 6(2).png",
      color: Color(0xffEDF7FC),
      title: "Beverages",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 56),

          Text(
            'Find Products',
            style: TextStyle(
              fontSize: 20,
              fontWeight: .w400,
              color: Color(0xff181725),
            ),
          ),
          SizedBox(height: 30),

          SearchWidget(),

          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 175 / 190,
              ),
              itemBuilder: (context, index) => ItemExplorWidget(
                image: categories[index].imagePath,
                color: categories[index].color,
                title: categories[index].title,
              ),
              itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemExplorWidget extends StatelessWidget {
  const ItemExplorWidget({
    super.key,
    required this.image,
    required this.title,
    required this.color,
  });
  final String image;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color),
        color: Color(0xffEEF8F2),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 27),
      child: Column(
        spacing: 15,
        mainAxisAlignment: .spaceBetween,
        children: [
          Image.asset(image),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: .w400,
              color: Color(0xff181725),
            ),
            textAlign: .center,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}

class category {
  String imagePath;
  Color color;
  String title;

  category({required this.imagePath, required this.color, required this.title});
}
