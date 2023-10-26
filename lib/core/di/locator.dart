import 'package:get_it/get_it.dart';

import '../../repositories/repositories.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<NetworkRepository>(NetworkRepositoryImpl());
}
