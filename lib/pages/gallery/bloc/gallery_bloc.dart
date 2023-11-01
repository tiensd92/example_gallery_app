import 'package:example_gallery_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'gallery_event.dart';
import 'gallery_state.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  GalleryBloc() : super(GalleryState()) {
    on<GalleryFetched>(_fetch);
  }

  void _fetch(GalleryFetched event, emit) async {
    emit(state.copyWith(status: GalleryStatus.loading));
    final repo = GetIt.instance.get<NetworkRepository>();
    try {
      final images = await repo.fetchGalleries();
      emit(state.copyWith(status: GalleryStatus.success, images: images));
    } catch (e) {
      emit(state.copyWith(status: GalleryStatus.failure));
    }
  }
}
