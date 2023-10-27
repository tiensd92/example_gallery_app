import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../repositories/models/image_model.dart';
import '../../../repositories/network_repository/network_repository.dart';

part 'gallery_event.dart';
part 'gallery_state.dart';
part 'gallery_bloc.freezed.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  final NetworkRepository _networkRepository;

  GalleryBloc(this._networkRepository) : super(const GalleryState()) {
    on<GalleryEvent>((GalleryEvent event, Emitter<GalleryState> emit) async {
      await event.when(
        onLoadData: () => _loadData(emit),
      );
    });
  }

  Future<void> _loadData(Emitter emit) async {
    emit(state.copyWith(isLoading: true, errorString: null));
    try {
      final result = await _networkRepository.fetchGalleries();
      emit(state.copyWith(isLoading: false, items: result));
    } catch (error) {
      emit(state.copyWith(errorString: error.toString(), isLoading: false));
    }
  }
}
