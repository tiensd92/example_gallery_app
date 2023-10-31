import 'package:example_gallery_app/blocs/auth_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../repositories/repositories.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<NetworkRepository>(NetworkRepositoryImpl());
  getIt.registerFactory(() => AuthBloc());
}
