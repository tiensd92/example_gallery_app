part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onChangeUsername(String value) = _OnChangeUsername;
  const factory LoginEvent.onChangePassword(String value) = _OnChangePasssword;
  const factory LoginEvent.onSubmit({required Function() onSuccess, required Function(String) onError}) =
      _OnSubmit;
}
