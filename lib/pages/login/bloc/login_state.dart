part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    String? errorString,
    @Default(false) bool isLoading,
  }) = _LoginState;
}
