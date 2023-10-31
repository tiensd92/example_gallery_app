import 'package:example_gallery_app/core/di/locator.dart';
import 'package:example_gallery_app/repositories/network_repository/network_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/login/login_page.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.unauthenticated);

  final _networkManager = getIt<NetworkRepository>();

  Future<void> onLoginTab(AuthEvent event) async {
    try {
      emit(AuthState.loading);
      if (event is LoginEvent) {
        final isSigned = await _networkManager.signIn(
          username: event.username,
          password: event.password,
        );
        if (isSigned) {
          emit(AuthState.authenticated);
        } else {
          emit(AuthState.unauthenticated);
        }
      }
      emit(AuthState.authenticated);
    } catch (e) {
      emit(AuthState.unauthenticated);
    }
  }
}
