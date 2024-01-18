import 'package:bookly_application/core/Api_Service/api_service.dart';
import 'package:bookly_application/features/home/data/repos/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement(
    getIt.get<ApiService>(),
  ));
}
