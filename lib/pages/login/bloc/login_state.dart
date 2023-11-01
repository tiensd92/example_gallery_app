import 'package:example_gallery_app/repositories/models/user_model.dart';

class LoginState {
  final LoginStatus status;
  final String? message;
  final UserModel? user;

  LoginState({
    this.message,
    this.status = LoginStatus.initialize,
    this.user,
  });

  LoginState copyWith({
    String? message,
    UserModel? user,
    LoginStatus? status,
  }) {
    return LoginState(
      message: message ?? this.message,
      user: user ?? this.user,
      status: status ?? this.status,
    );
  }

  bool get isLoading => status == LoginStatus.loading;
  bool get isSuccess => status == LoginStatus.success;
  bool get isFailure => status == LoginStatus.failure;
}

enum LoginStatus { initialize, loading, success, failure }
