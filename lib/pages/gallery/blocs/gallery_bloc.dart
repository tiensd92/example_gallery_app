import 'package:example_gallery_app/pages/gallery/blocs/gallery_state.dart';
import 'package:example_gallery_app/pages/login/blocs/login_state.dart';
import 'package:example_gallery_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GalleryBloc extends Cubit<GalleryState> {
  GalleryBloc(this._networkRepository) : super(GalleryState());

  final NetworkRepository _networkRepository;

  Future<void> fetchData() async {
    try {
      emit(state.copyWith(status: RequestStatus.loading));
      final result = await _networkRepository.fetchGalleries();
      emit(state.copyWith(images: result, status: RequestStatus.success));
    } catch (e) {
      emit(state.copyWith(status: RequestStatus.failed));
    }
  }
}
