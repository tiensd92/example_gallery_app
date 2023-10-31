import 'package:example_gallery_app/core/di/locator.dart';
import 'package:example_gallery_app/repositories/network_repository/network_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.unauthenticated);

  final _networkManager = getIt<NetworkRepository>();

  Stream<AuthState> onLogin(AuthEvent event) async* {
    if (event is LoginEvent) {
      yield AuthState.loading;
      final isSigned = await _networkManager.signIn(
        username: event.username,
        password: event.password,
      );
      if (isSigned) {
        yield AuthState.authenticated;
      } else {
        yield AuthState.unauthenticated;
      }
      yield AuthState.unLoading;
    }
  }
}
