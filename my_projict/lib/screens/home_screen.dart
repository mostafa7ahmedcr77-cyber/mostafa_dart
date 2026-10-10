import 'package:flutter/material.dart';
import 'package:my_projict/widget/groceries_container.dart';
import 'package:my_projict/widget/item_card.dart';
import 'package:my_projict/widget/search_widget.dart';
import 'package:my_projict/widget/title_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 56),
          Image.asset(
            "assets/image/Group.png",
            width: double.infinity,
            height: 55,
          ),
          SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              Image.asset("assets/icons/Delicery address.png", width: 16),
              Text(
                "Dhaka, Banassre",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: .w600,
                  color: Color(0xff4C4F4D),
                ),
              ),
            ],
          ),
          SizedBox(height: 18),

          SearchWidget(),
          SizedBox(height: 20),

          Image.asset("assets/image/banner.png"),
          SizedBox(height: 30),

          TitleHeaderWidget(title: 'Exclusive Offer'),
          SizedBox(height: 20),
          SizedBox(
            height: 250,
            child: ListView.separated(
              scrollDirection: .horizontal,
              itemBuilder: (context, index) => ItemCard(
                image: "assets/image/pngfuel 1.png",
                title: "Red Apple",
                decoration: "1kg, Priceg",
                price: "\$4.99",
              ),
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: 10,
            ),
          ),

          SizedBox(height: 30),

          TitleHeaderWidget(title: "Best Selling"),
          SizedBox(height: 20),

          SizedBox(
            height: 250,
            child: ListView.separated(
              scrollDirection: .horizontal,
              itemBuilder: (context, index) => ItemCard(
                image: "assets/image/p 1.png",
                title: "Bell Pepper Red",
                decoration: "1kg, Priceg",
                price: "\$4.99",
              ),
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: 10,
            ),
          ),

          SizedBox(height: 30),

          TitleHeaderWidget(title: "Groceries"),
          SizedBox(height: 20),

          SizedBox(
            height: 110,
            child: ListView.separated(
              scrollDirection: .horizontal,
              itemBuilder: (context, index) => GroceriesContainer(
                image: "assets/image/p 4.png",
                title: "Pulses $index",
                Color: Color(0xffF8A44C),
              ),
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: 10,
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 250,
            child: ListView.separated(
              scrollDirection: .horizontal,
              itemBuilder: (context, index) => ItemCard(
                image: "assets/image/p 1.png",
                title: "Bell Pepper Red",
                decoration: "1kg, Priceg",
                price: "\$4.99",
              ),
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: 10,
            ),
          ),

          SizedBox(height: 30),
        ],
      ),
    );
  }
}
