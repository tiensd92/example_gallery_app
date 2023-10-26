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
        password: '25f9e794323b453885f5181f1b624d0b',
      ),
      UserModel(
        username: 'tester02',
        password: '25d55ad283aa400af464c76d713c07ad',
      ),
      UserModel(
        username: 'tester03',
        password: 'fcea920f7412b5da7be0cf42b8c93759',
      ),
      UserModel(
        username: 'tester04',
        password: 'e10adc3949ba59abbe56e057f20f883e',
      ),
    ];
  }
  
  @override
  List<Object?> get props => [username, password];
}
