import 'package:dio/dio.dart';
import 'package:flutter_adv_app/core/networking/api_service.dart';
import 'package:flutter_adv_app/core/networking/dio_factory.dart';
import 'package:flutter_adv_app/features/login/data/repos/login_repo.dart';
import 'package:flutter_adv_app/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

// using getIt on the classes that depends on each others
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  // create only one instance
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  // passing getIt() to provide any dependant class inside LoginRepo,LoginCubit
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
