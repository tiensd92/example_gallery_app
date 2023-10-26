import 'package:flutter/material.dart';

import 'components/components.dart';

class GalleryPage extends StatelessWidget {
  final listItem = [
    {
      'pic': 'assets/images/1.jpg',
    },
    {
      'pic': 'assets/images/2.jpg',
    },
    {
      'pic': 'assets/images/3.jpg',
    },
    {
      'pic': 'assets/images/4.jpg',
    },
    {
      'pic': 'assets/images/5.jpg',
    },
    {
      'pic': 'assets/images/6.jpg',
    },
    {
      'pic': 'assets/images/7.jpg',
    },
    {
      'pic': 'assets/images/8.jpg',
    },
    {
      'pic': 'assets/images/9.jpg',
    },
    {
      'pic': 'assets/images/10.jpg',
    },
    {
      'pic': 'assets/images/11.jpg',
    },
    {
      'pic': 'assets/images/12.jpg',
    },
    {
      'pic': 'assets/images/13.jpg',
    },
    {
      'pic': 'assets/images/14.jpg',
    },
  ];

  GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gallery'),
      ),
      body: GridView.builder(
        itemCount: listItem.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int i) {
          return Product(productImage: listItem[i]['pic']);
        },
      ),
    );
  }
}
