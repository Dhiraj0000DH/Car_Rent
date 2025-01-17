import 'package:car_renthol/core/network/hive_service.dart';
import 'package:car_renthol/features/auth/presentation/view_model/login/bloc/login_bloc.dart';
import 'package:car_renthol/features/auth/presentation/view_model/signup/bloc/signup_bloc.dart';
import 'package:car_renthol/features/splash/presentation/view_model/cubit/splash_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  await _initHiveService();
  await _initSignupDependencies();
  await _initLoginDependencies();
  await _initSplashDependencies();
}

_initHiveService() {
  getIt.registerLazySingleton<HiveService>(() => HiveService());
}

_initSignupDependencies() async {
  getIt.registerFactory<SignupBloc>(
    () => SignupBloc(),
  );
}

_initLoginDependencies() async {
  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(
      signupBloc: getIt<SignupBloc>(),
    ),
  );
}

_initSplashDependencies() async {
  getIt.registerFactory<SplashCubit>(
    () => SplashCubit(getIt<LoginBloc>()),
  );
}
