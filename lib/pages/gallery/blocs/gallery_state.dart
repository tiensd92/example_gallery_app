import 'package:example_gallery_app/pages/login/blocs/login_state.dart';
import 'package:example_gallery_app/repositories/models/models.dart';

class GalleryState {
  RequestStatus status;
  List<ImageModel>? images;

  GalleryState({
    this.status = RequestStatus.initialize,
    this.images,
  });

  GalleryState copyWith({
    RequestStatus? status,
    List<ImageModel>? images,
  }) {
    return GalleryState(
      status: status ?? this.status,
      images: images ?? this.images,
    );
  }
}