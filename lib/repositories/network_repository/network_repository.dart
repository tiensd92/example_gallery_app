import '../models/models.dart';

abstract class NetworkRepository {
  Future<bool> signIn({
    required String username,
    required String password,
  });

  Future<List<ImageModel>> fetchGalleries();
}
