import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final productImage;

  const Product({this.productImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productImage,
        child: Material(
          child: GridTile(
            child: Image.asset(
              productImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
