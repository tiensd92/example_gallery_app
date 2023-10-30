import 'package:example_gallery_app/core/core.dart';
import 'package:example_gallery_app/pages/login/blocs/login_state.dart';
import 'package:example_gallery_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc(this._networkRepository) : super(LoginState());

  final NetworkRepository _networkRepository;

  void onChangeUsername(String? text) {
    emit(state.copyWith(username: text));
  }

  void onChangePass(String text) {
    emit(state.copyWith(password: text));
  }

  Future<void> onSubmit() async {
    if ((state.username ?? '').isEmpty || (state.password ?? '').isEmpty) {
      return;
    }
    try {
      var bytes = utf8.encode(state.password!);
      final password = md5.convert(bytes);
      emit(state.copyWith(status: RequestStatus.loading));
      final result =
          await _networkRepository.signIn(username: state.username!, password: password.toString());
      emit(state.copyWith(status: result ? RequestStatus.success : RequestStatus.failed));
    } on ServerFailue catch (e) {
      emit(state.copyWith(status: RequestStatus.failed, message: e.message));
    }
  }
}
