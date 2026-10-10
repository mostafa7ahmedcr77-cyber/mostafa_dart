import 'package:flutter/material.dart';
import 'package:my_projict/widget/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My cart"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CartItem(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Row(
                            children: [
                              Text(
                                'Checkout',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: .w600,
                                  color: Color(0xff181725),
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.close)
                              
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                'Go to Checkout',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: .w600,
                  color: Color(0xffFCFCFC),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
