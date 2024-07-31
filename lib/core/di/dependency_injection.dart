import 'package:dio/dio.dart';
import 'package:flutter_adv_app/core/networking/api_service.dart';
import 'package:flutter_adv_app/core/networking/dio_factory.dart';
import 'package:flutter_adv_app/features/home/data/apis/home_api_service.dart';
import 'package:flutter_adv_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_adv_app/features/login/data/repos/login_repo.dart';
import 'package:flutter_adv_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_adv_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutter_adv_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

// using getIt on the classes that depends on each others
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  // create only one instance
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // passing getIt() to provide any dependant class inside LoginRepo,LoginCubit
  // registerLazySingleton means create only one copy used in the all app
  // registerFactory means creating new copy of it when using it

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signUp
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  // didn't add the HomeCubit here
}
