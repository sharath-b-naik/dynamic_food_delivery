import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_type_model.freezed.dart';
part 'view_type_model.g.dart';

// ignore: constant_identifier_names
enum ViewTypes { Banner, Category, Products, Seller }

@freezed
class ViewTypeModel with _$ViewTypeModel {
  const factory ViewTypeModel({
    ViewTypes? viewtype,
    String? datatype,
    String? title,
    String? designtype,
    List<dynamic>? data,
  }) = _ViewTypeModel;

  factory ViewTypeModel.fromJson(Map<String, dynamic> json) => _$ViewTypeModelFromJson(json);
}
