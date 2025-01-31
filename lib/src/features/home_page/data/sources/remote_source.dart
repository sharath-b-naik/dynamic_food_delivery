import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dynamic_food_delivery/src/core/shared/shared.dart';

import '../models/view_type_model.dart';

abstract class ViewTypesRemoteDataSource {
  Future<List<ViewTypeModel>> getViews();
}

class ViewTypesRemoteDataSourceImpl implements ViewTypesRemoteDataSource {
  final Dio dio;
  ViewTypesRemoteDataSourceImpl(this.dio);

  @override
  Future<List<ViewTypeModel>> getViews() async {
    try {
      final response = await dio.post(
        '$BASE_API_URL/homepage_dynamic',
        data: {"added_by_web": "food.56testing.club", "service_id": 2, "user_id": 1},
      );
      if (response.statusCode == 200) {
        final data = List.from(response.data['ViewtypeList'] ?? []);

        log(response.data['ViewtypeList'].toString());
        return data.map((json) => ViewTypeModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch all tasks: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Failed to fetch all tasks: $e');
    }
  }
}
