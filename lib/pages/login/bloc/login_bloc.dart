import 'package:example_gallery_app/core/di/locator.dart';
import 'package:example_gallery_app/pages/login/bloc/login_event.dart';
import 'package:example_gallery_app/pages/login/bloc/login_state.dart';
import 'package:example_gallery_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert'; // for the utf8.encode method
import 'package:crypto/crypto.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginSubmmited>(_submit);
  }

  void _submit(LoginSubmmited event, emit) async {
    emit(state.copyWith(status: LoginStatus.loading));
    try {
      final repo = getIt.get<NetworkRepository>();
      var bytes = utf8.encode(event.password);
      var digest = md5.convert(bytes);

      await repo.signIn(
        username: event.username,
        password: "$digest",
      );
      emit(state.copyWith(status: LoginStatus.success));
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.failure));
    }
  }
}
