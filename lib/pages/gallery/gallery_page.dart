import 'package:example_gallery_app/core/core.dart';
import 'package:example_gallery_app/pages/gallery/blocs/gallery_bloc.dart';
import 'package:example_gallery_app/pages/gallery/blocs/gallery_state.dart';
import 'package:example_gallery_app/pages/login/blocs/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/components.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {

  final GalleryBloc _bloc = GalleryBloc(getIt());

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloc.fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: BlocBuilder<GalleryBloc, GalleryState>(
        builder: (_, state) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Gallery'),
          ),
          body: state.status == RequestStatus.loading
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
                  itemCount: state.images?.length ?? 0,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int i) {
                    final image = state.images![i].pic;
                    return Product(productImage: image);
                  },
                ),
        ),
      ),
    );
  }
}
