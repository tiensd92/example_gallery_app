import 'package:example_gallery_app/pages/gallery/bloc/gallery_bloc.dart';
import 'package:example_gallery_app/pages/gallery/bloc/gallery_event.dart';
import 'package:example_gallery_app/pages/gallery/bloc/gallery_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/components.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
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

  @override
  void initState() {
    super.initState();
    final event = GalleryFetched();
    context.read<GalleryBloc>().add(event);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GalleryBloc, GalleryState>(
      listener: (context, state) {
        if (state.isFailure) {
          const snackBar = SnackBar(
            backgroundColor: Colors.red,
            content: Text('Fetch Gallery Error'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Gallery'),
          ),
          body: state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
                  itemCount: state.images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int i) {
                    return Product(productImage: state.images[i].pic);
                  },
                ),
        );
      },
    );
  }
}
