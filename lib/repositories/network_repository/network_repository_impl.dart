import 'package:example_gallery_app/core/core.dart';

import '../models/models.dart';
import 'network_repository.dart';

class NetworkRepositoryImpl implements NetworkRepository {
  @override
  Future<bool> signIn(
      {required String username, required String password}) async {
    await Future.delayed(const Duration(seconds: 2));
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
    await Future.delayed(const Duration(seconds: 2));

    return [
      ImageModel(
        pic: 'assets/images/1.jpg',
      ),
      ImageModel(
        pic: 'assets/images/2.jpg',
      ),
      ImageModel(
        pic: 'assets/images/3.jpg',
      ),
      ImageModel(
        pic: 'assets/images/4.jpg',
      ),
      ImageModel(
        pic: 'assets/images/5.jpg',
      ),
      ImageModel(
        pic: 'assets/images/6.jpg',
      ),
      ImageModel(
        pic: 'assets/images/7.jpg',
      ),
      ImageModel(
        pic: 'assets/images/8.jpg',
      ),
      ImageModel(
        pic: 'assets/images/9.jpg',
      ),
      ImageModel(
        pic: 'assets/images/10.jpg',
      ),
      ImageModel(
        pic: 'assets/images/11.jpg',
      ),
      ImageModel(
        pic: 'assets/images/12.jpg',
      ),
      ImageModel(
        pic: 'assets/images/13.jpg',
      ),
      ImageModel(
        pic: 'assets/images/14.jpg',
      ),
    ];
  }
}
