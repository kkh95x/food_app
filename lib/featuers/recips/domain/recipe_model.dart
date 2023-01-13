
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class RecipeModel with _$RecipeModel  {
  
 factory  RecipeModel({
   String? id,
 required String pathImage,
 required String likes,
 required String comment,
 required String share,
 required String love,
 required String title,
 required String descrption,
  })=_RecipeModel;
factory RecipeModel.fromJson(Map<String, Object?> json) => _$RecipeModelFromJson(json);
}
