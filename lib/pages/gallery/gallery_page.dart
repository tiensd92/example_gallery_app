import 'package:example_gallery_app/pages/gallery/bloc/gallery_bloc.dart';
import 'package:flutter/material.dart';

import 'components/components.dart';

import 'package:animate_do/animate_do.dart';
import 'package:example_gallery_app/core/core.dart';
import 'package:example_gallery_app/pages/login/bloc/login_bloc.dart';
import 'package:example_gallery_app/pages/pages.dart';
import 'package:example_gallery_app/repositories/network_repository/network_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<StatefulWidget> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  late final GalleryBloc _bloc;

  @override
  void initState() {
    _bloc = GalleryBloc(getIt<NetworkRepository>());
    _bloc.add(const GalleryEvent.onLoadData());
    super.initState();
  }

  void _showDialog(BuildContext context, String error) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(error!),
            actions: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Text("Ok"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocListener<GalleryBloc, GalleryState>(
          listenWhen: (previous, current) =>
              previous.errorString != current.errorString &&
              current.errorString != null,
          listener: (context, state) {
            _showDialog(context, state.errorString!);
          },
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Gallery'),
            ),
            body: BlocBuilder<GalleryBloc, GalleryState>(
                builder: (context, state) {
              return state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : GridView.builder(
                      itemCount: state.items.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (BuildContext context, int i) {
                        return Product(productImage: state.items[i].pic);
                      },
                    );
            }),
          )),
    );
  }
}
