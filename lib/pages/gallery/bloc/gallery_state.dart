part of 'gallery_bloc.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState({
    String? errorString,
    @Default(false) bool isLoading,
    @Default([]) List<ImageModel> items
  }) = _GalleryState;
}
