import 'package:flutter/material.dart';
import 'package:flutter_application_1/Product_model.dart';
import 'package:flutter_application_1/messenger_screen.dart';

class ChatItem extends StatelessWidget {
  ChatItem({super.key, required this.product});
  Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(product.images[0]),
          radius: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${product.title}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(child: Text("${product.category}")),
                  Text("${product.price}"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
