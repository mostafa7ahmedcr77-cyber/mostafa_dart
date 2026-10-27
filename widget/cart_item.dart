
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("assets/image/p 1.png"),
      title: Text(
        'Bell Pepper Red',
        style: TextStyle(
          fontSize: 16,
          fontWeight: .w400,
          color: Color(0xff181725),
        ),
      ),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1kg, Price',
            style: TextStyle(
              fontSize: 14,
              fontWeight: .w400,
              color: Color(0xff7C7C7C),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.remove),
              SizedBox(width: 10),
              Text('1'),
              SizedBox(width: 10),
              Icon(Icons.add),
            ],
          ),
        ],
      ),
      trailing: Column(
        children: [
          Icon(Icons.close),
          Spacer(),
          Text('\$4.99',style: TextStyle(
            fontSize: 18,
            fontWeight: .w600,
            color: Color(0xff181725),
          ),)
        ],
      ),
    );
  }
}
