import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String username;
  final String password;

  const UserModel({
    required this.username,
    required this.password,
  });

  static List<UserModel> mocks() {
    return const [
      UserModel(
        username: 'tester01',
        password: '',
      ),
      UserModel(
        username: 'tester02',
        password: '',
      ),
      UserModel(
        username: 'tester03',
        password: '',
      ),
      UserModel(
        username: 'tester04',
        password: '',
      ),
    ];
  }
  
  @override
  List<Object?> get props => [username, password];
}
