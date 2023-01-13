// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referigerator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefrigeratorModel _$$_RefrigeratorModelFromJson(Map<String, dynamic> json) =>
    _$_RefrigeratorModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      svgPath: json['svgPath'] as String? ?? ImageAssets.tomato,
      kg: json['kg'] as String,
      purchaseDate: json['purchaseDate'] as String,
      catogery: json['catogery'] as String,
      expirationDate: json['expirationDate'] as String,
    );

Map<String, dynamic> _$$_RefrigeratorModelToJson(
        _$_RefrigeratorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'svgPath': instance.svgPath,
      'kg': instance.kg,
      'purchaseDate': instance.purchaseDate,
      'catogery': instance.catogery,
      'expirationDate': instance.expirationDate,
    };
