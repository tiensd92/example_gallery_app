import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

import '../../../repositories/network_repository/network_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final NetworkRepository _networkRepository;

  String _username = '';
  String _password = '';

  LoginBloc(this._networkRepository) : super(const LoginState()) {
    on<LoginEvent>((LoginEvent event, Emitter<LoginState> emit) async {
      await event.when(
        onChangeUsername: (value) => _onUsernameChange(value),
        onChangePassword: (value) => _onPasswordChange(value),
        onSubmit: (onSuccess, onError) => _onSubmit(emit, onSuccess, onError),
      );
    });
  }

  Future<void> _onUsernameChange(String value) async {
    _username = value;
  }

  Future<void> _onPasswordChange(String value) async {
    _password = value;
  }

  Future<void> _onSubmit(
      Emitter emit, Function() onSuccess, Function(String) onError) async {
    if (_username.length < 3) {
      onError.call("Username must be at least 3 characters");
      return;
    }
    if (_password.length < 3) {
      onError.call("Password must be at least 3 characters");
      return;
    }
    emit(state.copyWith(errorString: null, isLoading: true));
    try {
      final result = await _networkRepository.signIn(
          username: _username, password: _generateMd5(_password));
      if (result) {
        emit(state.copyWith(isLoading: false));
        onSuccess.call();
      } else {
        emit(state.copyWith(errorString: 'Login failed'));
      }
    } catch (error) {
      emit(state.copyWith(isLoading: false));
      emit(state.copyWith(errorString: error.toString()));
    }
  }

  String _generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
}
