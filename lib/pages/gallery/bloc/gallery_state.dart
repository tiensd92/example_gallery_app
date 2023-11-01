import 'package:example_gallery_app/repositories/models/image_model.dart';

class GalleryState {
  final GalleryStatus status;
  final String? message;
  final List<ImageModel> images;

  GalleryState({
    this.message,
    this.status = GalleryStatus.initialize,
    this.images = const [],
  });

  GalleryState copyWith({
    String? message,
    List<ImageModel>? images,
    GalleryStatus? status,
  }) {
    return GalleryState(
      message: message ?? this.message,
      images: images ?? this.images,
      status: status ?? this.status,
    );
  }

  bool get isLoading => status == GalleryStatus.loading;
  bool get isSuccess => status == GalleryStatus.success;
  bool get isFailure => status == GalleryStatus.failure;
}

enum GalleryStatus { initialize, loading, success, failure }
