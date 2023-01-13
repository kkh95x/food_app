// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipModel _$TipModelFromJson(Map<String, dynamic> json) {
  return _TipModel.fromJson(json);
}

/// @nodoc
mixin _$TipModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipModelCopyWith<TipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipModelCopyWith<$Res> {
  factory $TipModelCopyWith(TipModel value, $Res Function(TipModel) then) =
      _$TipModelCopyWithImpl<$Res, TipModel>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$TipModelCopyWithImpl<$Res, $Val extends TipModel>
    implements $TipModelCopyWith<$Res> {
  _$TipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TipModelCopyWith<$Res> implements $TipModelCopyWith<$Res> {
  factory _$$_TipModelCopyWith(
          _$_TipModel value, $Res Function(_$_TipModel) then) =
      __$$_TipModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_TipModelCopyWithImpl<$Res>
    extends _$TipModelCopyWithImpl<$Res, _$_TipModel>
    implements _$$_TipModelCopyWith<$Res> {
  __$$_TipModelCopyWithImpl(
      _$_TipModel _value, $Res Function(_$_TipModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_TipModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TipModel with DiagnosticableTreeMixin implements _TipModel {
  _$_TipModel({required this.title, required this.description});

  factory _$_TipModel.fromJson(Map<String, dynamic> json) =>
      _$$_TipModelFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TipModel(title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TipModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TipModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TipModelCopyWith<_$_TipModel> get copyWith =>
      __$$_TipModelCopyWithImpl<_$_TipModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TipModelToJson(
      this,
    );
  }
}

abstract class _TipModel implements TipModel {
  factory _TipModel(
      {required final String title,
      required final String description}) = _$_TipModel;

  factory _TipModel.fromJson(Map<String, dynamic> json) = _$_TipModel.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_TipModelCopyWith<_$_TipModel> get copyWith =>
      throw _privateConstructorUsedError;
}
