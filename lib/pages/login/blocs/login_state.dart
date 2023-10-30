enum RequestStatus {
  initialize, loading, success, failed,
}

class LoginState {
  String? username;
  String? password;
  RequestStatus status;
  String? message;

  LoginState({
    this.username,
    this.password,
    this.status = RequestStatus.initialize,
    this.message,
  });

  LoginState copyWith({
    String? username,
    String? password,
    RequestStatus? status,
    String? message,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      status: status ?? RequestStatus.initialize,
      message: message ?? this.message,
    );
  }
}