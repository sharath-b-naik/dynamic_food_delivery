// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewTypeModel _$ViewTypeModelFromJson(Map<String, dynamic> json) {
  return _ViewTypeModel.fromJson(json);
}

/// @nodoc
mixin _$ViewTypeModel {
  ViewTypes? get viewtype => throw _privateConstructorUsedError;
  String? get datatype => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get designtype => throw _privateConstructorUsedError;
  List<dynamic>? get data => throw _privateConstructorUsedError;

  /// Serializes this ViewTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ViewTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewTypeModelCopyWith<ViewTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewTypeModelCopyWith<$Res> {
  factory $ViewTypeModelCopyWith(
          ViewTypeModel value, $Res Function(ViewTypeModel) then) =
      _$ViewTypeModelCopyWithImpl<$Res, ViewTypeModel>;
  @useResult
  $Res call(
      {ViewTypes? viewtype,
      String? datatype,
      String? title,
      String? designtype,
      List<dynamic>? data});
}

/// @nodoc
class _$ViewTypeModelCopyWithImpl<$Res, $Val extends ViewTypeModel>
    implements $ViewTypeModelCopyWith<$Res> {
  _$ViewTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewtype = freezed,
    Object? datatype = freezed,
    Object? title = freezed,
    Object? designtype = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      viewtype: freezed == viewtype
          ? _value.viewtype
          : viewtype // ignore: cast_nullable_to_non_nullable
              as ViewTypes?,
      datatype: freezed == datatype
          ? _value.datatype
          : datatype // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      designtype: freezed == designtype
          ? _value.designtype
          : designtype // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewTypeModelImplCopyWith<$Res>
    implements $ViewTypeModelCopyWith<$Res> {
  factory _$$ViewTypeModelImplCopyWith(
          _$ViewTypeModelImpl value, $Res Function(_$ViewTypeModelImpl) then) =
      __$$ViewTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewTypes? viewtype,
      String? datatype,
      String? title,
      String? designtype,
      List<dynamic>? data});
}

/// @nodoc
class __$$ViewTypeModelImplCopyWithImpl<$Res>
    extends _$ViewTypeModelCopyWithImpl<$Res, _$ViewTypeModelImpl>
    implements _$$ViewTypeModelImplCopyWith<$Res> {
  __$$ViewTypeModelImplCopyWithImpl(
      _$ViewTypeModelImpl _value, $Res Function(_$ViewTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewtype = freezed,
    Object? datatype = freezed,
    Object? title = freezed,
    Object? designtype = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ViewTypeModelImpl(
      viewtype: freezed == viewtype
          ? _value.viewtype
          : viewtype // ignore: cast_nullable_to_non_nullable
              as ViewTypes?,
      datatype: freezed == datatype
          ? _value.datatype
          : datatype // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      designtype: freezed == designtype
          ? _value.designtype
          : designtype // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewTypeModelImpl implements _ViewTypeModel {
  const _$ViewTypeModelImpl(
      {this.viewtype,
      this.datatype,
      this.title,
      this.designtype,
      final List<dynamic>? data})
      : _data = data;

  factory _$ViewTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewTypeModelImplFromJson(json);

  @override
  final ViewTypes? viewtype;
  @override
  final String? datatype;
  @override
  final String? title;
  @override
  final String? designtype;
  final List<dynamic>? _data;
  @override
  List<dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ViewTypeModel(viewtype: $viewtype, datatype: $datatype, title: $title, designtype: $designtype, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewTypeModelImpl &&
            (identical(other.viewtype, viewtype) ||
                other.viewtype == viewtype) &&
            (identical(other.datatype, datatype) ||
                other.datatype == datatype) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.designtype, designtype) ||
                other.designtype == designtype) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, viewtype, datatype, title,
      designtype, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ViewTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewTypeModelImplCopyWith<_$ViewTypeModelImpl> get copyWith =>
      __$$ViewTypeModelImplCopyWithImpl<_$ViewTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewTypeModelImplToJson(
      this,
    );
  }
}

abstract class _ViewTypeModel implements ViewTypeModel {
  const factory _ViewTypeModel(
      {final ViewTypes? viewtype,
      final String? datatype,
      final String? title,
      final String? designtype,
      final List<dynamic>? data}) = _$ViewTypeModelImpl;

  factory _ViewTypeModel.fromJson(Map<String, dynamic> json) =
      _$ViewTypeModelImpl.fromJson;

  @override
  ViewTypes? get viewtype;
  @override
  String? get datatype;
  @override
  String? get title;
  @override
  String? get designtype;
  @override
  List<dynamic>? get data;

  /// Create a copy of ViewTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewTypeModelImplCopyWith<_$ViewTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
