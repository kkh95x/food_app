// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referigerator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefrigeratorModel _$RefrigeratorModelFromJson(Map<String, dynamic> json) {
  return _RefrigeratorModel.fromJson(json);
}

/// @nodoc
mixin _$RefrigeratorModel {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get svgPath => throw _privateConstructorUsedError;
  String get kg => throw _privateConstructorUsedError;
  String get purchaseDate => throw _privateConstructorUsedError;
  String get catogery => throw _privateConstructorUsedError;
  String get expirationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefrigeratorModelCopyWith<RefrigeratorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefrigeratorModelCopyWith<$Res> {
  factory $RefrigeratorModelCopyWith(
          RefrigeratorModel value, $Res Function(RefrigeratorModel) then) =
      _$RefrigeratorModelCopyWithImpl<$Res, RefrigeratorModel>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String svgPath,
      String kg,
      String purchaseDate,
      String catogery,
      String expirationDate});
}

/// @nodoc
class _$RefrigeratorModelCopyWithImpl<$Res, $Val extends RefrigeratorModel>
    implements $RefrigeratorModelCopyWith<$Res> {
  _$RefrigeratorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? svgPath = null,
    Object? kg = null,
    Object? purchaseDate = null,
    Object? catogery = null,
    Object? expirationDate = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      svgPath: null == svgPath
          ? _value.svgPath
          : svgPath // ignore: cast_nullable_to_non_nullable
              as String,
      kg: null == kg
          ? _value.kg
          : kg // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseDate: null == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      catogery: null == catogery
          ? _value.catogery
          : catogery // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefrigeratorModelCopyWith<$Res>
    implements $RefrigeratorModelCopyWith<$Res> {
  factory _$$_RefrigeratorModelCopyWith(_$_RefrigeratorModel value,
          $Res Function(_$_RefrigeratorModel) then) =
      __$$_RefrigeratorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String svgPath,
      String kg,
      String purchaseDate,
      String catogery,
      String expirationDate});
}

/// @nodoc
class __$$_RefrigeratorModelCopyWithImpl<$Res>
    extends _$RefrigeratorModelCopyWithImpl<$Res, _$_RefrigeratorModel>
    implements _$$_RefrigeratorModelCopyWith<$Res> {
  __$$_RefrigeratorModelCopyWithImpl(
      _$_RefrigeratorModel _value, $Res Function(_$_RefrigeratorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? svgPath = null,
    Object? kg = null,
    Object? purchaseDate = null,
    Object? catogery = null,
    Object? expirationDate = null,
  }) {
    return _then(_$_RefrigeratorModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      svgPath: null == svgPath
          ? _value.svgPath
          : svgPath // ignore: cast_nullable_to_non_nullable
              as String,
      kg: null == kg
          ? _value.kg
          : kg // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseDate: null == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      catogery: null == catogery
          ? _value.catogery
          : catogery // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefrigeratorModel
    with DiagnosticableTreeMixin
    implements _RefrigeratorModel {
  _$_RefrigeratorModel(
      {this.id,
      required this.name,
      this.svgPath = ImageAssets.tomato,
      required this.kg,
      required this.purchaseDate,
      required this.catogery,
      required this.expirationDate});

  factory _$_RefrigeratorModel.fromJson(Map<String, dynamic> json) =>
      _$$_RefrigeratorModelFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  @JsonKey()
  final String svgPath;
  @override
  final String kg;
  @override
  final String purchaseDate;
  @override
  final String catogery;
  @override
  final String expirationDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefrigeratorModel(id: $id, name: $name, svgPath: $svgPath, kg: $kg, purchaseDate: $purchaseDate, catogery: $catogery, expirationDate: $expirationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefrigeratorModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('svgPath', svgPath))
      ..add(DiagnosticsProperty('kg', kg))
      ..add(DiagnosticsProperty('purchaseDate', purchaseDate))
      ..add(DiagnosticsProperty('catogery', catogery))
      ..add(DiagnosticsProperty('expirationDate', expirationDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefrigeratorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.svgPath, svgPath) || other.svgPath == svgPath) &&
            (identical(other.kg, kg) || other.kg == kg) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.catogery, catogery) ||
                other.catogery == catogery) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, svgPath, kg,
      purchaseDate, catogery, expirationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefrigeratorModelCopyWith<_$_RefrigeratorModel> get copyWith =>
      __$$_RefrigeratorModelCopyWithImpl<_$_RefrigeratorModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefrigeratorModelToJson(
      this,
    );
  }
}

abstract class _RefrigeratorModel implements RefrigeratorModel {
  factory _RefrigeratorModel(
      {final String? id,
      required final String name,
      final String svgPath,
      required final String kg,
      required final String purchaseDate,
      required final String catogery,
      required final String expirationDate}) = _$_RefrigeratorModel;

  factory _RefrigeratorModel.fromJson(Map<String, dynamic> json) =
      _$_RefrigeratorModel.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get svgPath;
  @override
  String get kg;
  @override
  String get purchaseDate;
  @override
  String get catogery;
  @override
  String get expirationDate;
  @override
  @JsonKey(ignore: true)
  _$$_RefrigeratorModelCopyWith<_$_RefrigeratorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
