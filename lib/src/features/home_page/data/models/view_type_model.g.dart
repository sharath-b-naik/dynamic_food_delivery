// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewTypeModelImpl _$$ViewTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$ViewTypeModelImpl(
      viewtype: $enumDecodeNullable(_$ViewTypesEnumMap, json['viewtype']),
      datatype: json['datatype'] as String?,
      title: json['title'] as String?,
      designtype: json['designtype'] as String?,
      data: json['data'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ViewTypeModelImplToJson(_$ViewTypeModelImpl instance) =>
    <String, dynamic>{
      'viewtype': _$ViewTypesEnumMap[instance.viewtype],
      'datatype': instance.datatype,
      'title': instance.title,
      'designtype': instance.designtype,
      'data': instance.data,
    };

const _$ViewTypesEnumMap = {
  ViewTypes.Banner: 'Banner',
  ViewTypes.Category: 'Category',
  ViewTypes.Products: 'Products',
  ViewTypes.Seller: 'Seller',
};
