import 'package:get_it/get_it.dart';

import 'data/network/Auth/Signinuser.dart';
import 'data/repository/auth/authrepo.dart';
import 'domain/repository/Auth/Signuprepo.dart';
import 'domain/usecases/auth/signinusecase.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthRepo>(AuthRepoImpl());

  sl.registerSingleton<ServerEndService>(ServerEndServiceImpl());

  sl.registerSingleton<SignInUseCase>(SignInUseCase());
}
