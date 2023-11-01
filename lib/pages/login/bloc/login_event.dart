abstract class LoginEvent {}

final class LoginSubmmited extends LoginEvent {
  final String username;
  final String password;

  LoginSubmmited({required this.username, required this.password});
}
