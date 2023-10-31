import 'package:example_gallery_app/core/core.dart';
import 'package:example_gallery_app/pages/pages.dart';

import '../models/models.dart';
import 'network_repository.dart';

class NetworkRepositoryImpl implements NetworkRepository {
  @override
  Future<bool> signIn({required String username, required String password}) async {
    await Future.delayed(const Duration(seconds: 3));
    final users = UserModel.mocks();

    if (!users.contains(
      UserModel(
        username: username,
        password: password,
      ),
    )) {
      throw ServerFailue(
        message: 'Not found user',
        code: 404,
      );
    }

    return true;
  }

  @override
  Future<List<ImageModel>> fetchGalleries() async {
    await Future.delayed(const Duration(seconds: 3));
    return ImageModel.mocks();
  }
}
