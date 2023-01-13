// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      id: json['id'] as String?,
      pathImage: json['pathImage'] as String,
      likes: json['likes'] as String,
      comment: json['comment'] as String,
      share: json['share'] as String,
      love: json['love'] as String,
      title: json['title'] as String,
      descrption: json['descrption'] as String,
    );

Map<String, dynamic> _$$_RecipeModelToJson(_$_RecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pathImage': instance.pathImage,
      'likes': instance.likes,
      'comment': instance.comment,
      'share': instance.share,
      'love': instance.love,
      'title': instance.title,
      'descrption': instance.descrption,
    };
