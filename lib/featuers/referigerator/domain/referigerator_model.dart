import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:food_app/core/resource/assest_manager.dart';

part 'referigerator_model.freezed.dart';
part 'referigerator_model.g.dart';
@freezed
class RefrigeratorModel  with _$RefrigeratorModel{

  factory RefrigeratorModel(
      {  
        String? id,
 required String name,
 @Default(ImageAssets.tomato) String svgPath,
 required String kg,
 required String purchaseDate,
 required String catogery,
 required String expirationDate})=_RefrigeratorModel;
  factory RefrigeratorModel.fromJson(Map<String, Object?> json) => _$RefrigeratorModelFromJson(json);

}
