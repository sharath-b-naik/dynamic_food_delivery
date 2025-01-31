import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dynamic_food_delivery/src/core/shared/shared.dart';
import 'package:dynamic_food_delivery/src/features/home_page/data/repositories/view_repository_impl.dart';
import 'package:dynamic_food_delivery/src/features/home_page/data/sources/remote_source.dart';
import 'package:dynamic_food_delivery/src/features/home_page/domain/repositories/view_repository.dart';
import 'package:dynamic_food_delivery/src/features/home_page/presentation/cubits/views_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupLocators() {
  // Register Dio
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Basic ${base64Encode(utf8.encode('$USER_NAME:$PASSWORD'))}',
        },
      ),
    ),
  );

  // Register TasksDataSource
  sl.registerLazySingleton<ViewTypesRemoteDataSource>(() => ViewTypesRemoteDataSourceImpl(sl<Dio>()));

  // Register TaskRepository
  sl.registerLazySingleton<ViewTypesRepository>(() => ViewTypesRepositoryImpl(sl<ViewTypesRemoteDataSource>()));

  // Register TasksCubit
  sl.registerFactory<ViewTypeCubit>(() => ViewTypeCubit(sl.call()));
}
