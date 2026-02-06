import 'package:get_it/get_it.dart';
import '../../data/repositories/auth_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Repositories
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
}
