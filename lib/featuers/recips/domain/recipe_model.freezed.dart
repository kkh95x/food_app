// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  String? get id => throw _privateConstructorUsedError;
  String get pathImage => throw _privateConstructorUsedError;
  String get likes => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get share => throw _privateConstructorUsedError;
  String get love => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get descrption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call(
      {String? id,
      String pathImage,
      String likes,
      String comment,
      String share,
      String love,
      String title,
      String descrption});
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pathImage = null,
    Object? likes = null,
    Object? comment = null,
    Object? share = null,
    Object? love = null,
    Object? title = null,
    Object? descrption = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pathImage: null == pathImage
          ? _value.pathImage
          : pathImage // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as String,
      love: null == love
          ? _value.love
          : love // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      descrption: null == descrption
          ? _value.descrption
          : descrption // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeModelCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$_RecipeModelCopyWith(
          _$_RecipeModel value, $Res Function(_$_RecipeModel) then) =
      __$$_RecipeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String pathImage,
      String likes,
      String comment,
      String share,
      String love,
      String title,
      String descrption});
}

/// @nodoc
class __$$_RecipeModelCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$_RecipeModel>
    implements _$$_RecipeModelCopyWith<$Res> {
  __$$_RecipeModelCopyWithImpl(
      _$_RecipeModel _value, $Res Function(_$_RecipeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pathImage = null,
    Object? likes = null,
    Object? comment = null,
    Object? share = null,
    Object? love = null,
    Object? title = null,
    Object? descrption = null,
  }) {
    return _then(_$_RecipeModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pathImage: null == pathImage
          ? _value.pathImage
          : pathImage // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as String,
      love: null == love
          ? _value.love
          : love // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      descrption: null == descrption
          ? _value.descrption
          : descrption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeModel with DiagnosticableTreeMixin implements _RecipeModel {
  _$_RecipeModel(
      {this.id,
      required this.pathImage,
      required this.likes,
      required this.comment,
      required this.share,
      required this.love,
      required this.title,
      required this.descrption});

  factory _$_RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeModelFromJson(json);

  @override
  final String? id;
  @override
  final String pathImage;
  @override
  final String likes;
  @override
  final String comment;
  @override
  final String share;
  @override
  final String love;
  @override
  final String title;
  @override
  final String descrption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeModel(id: $id, pathImage: $pathImage, likes: $likes, comment: $comment, share: $share, love: $love, title: $title, descrption: $descrption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('pathImage', pathImage))
      ..add(DiagnosticsProperty('likes', likes))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('share', share))
      ..add(DiagnosticsProperty('love', love))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('descrption', descrption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pathImage, pathImage) ||
                other.pathImage == pathImage) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.share, share) || other.share == share) &&
            (identical(other.love, love) || other.love == love) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.descrption, descrption) ||
                other.descrption == descrption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, pathImage, likes, comment,
      share, love, title, descrption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      __$$_RecipeModelCopyWithImpl<_$_RecipeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeModelToJson(
      this,
    );
  }
}

abstract class _RecipeModel implements RecipeModel {
  factory _RecipeModel(
      {final String? id,
      required final String pathImage,
      required final String likes,
      required final String comment,
      required final String share,
      required final String love,
      required final String title,
      required final String descrption}) = _$_RecipeModel;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeModel.fromJson;

  @override
  String? get id;
  @override
  String get pathImage;
  @override
  String get likes;
  @override
  String get comment;
  @override
  String get share;
  @override
  String get love;
  @override
  String get title;
  @override
  String get descrption;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
