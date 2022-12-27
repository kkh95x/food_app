import 'dart:convert';

import 'package:food_app/core/resource/assest_manager.dart';

class RefrigeratorModel {
  String? id;
  String name;
  String svgPath;
  String kg;
  String purchaseDate;
  String expirationDate;
  RefrigeratorModel(
      {required this.name,
      this.id,
      required this.svgPath,
      required this.kg,
      required this.expirationDate,
      required this.purchaseDate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'svgPath': ImageAssets.tomato,
      'kg': kg,
      'purchaseDate': purchaseDate,
      "expirationDate": expirationDate,
      "dateAdded": DateTime.now()
    };
  }

  factory RefrigeratorModel.fromMap(Map<String, dynamic> map, [String? id]) {
    return RefrigeratorModel(
        expirationDate: map['expirationDate'] as String,
        name: map['name'] as String,
        svgPath: map['svgPath'] as String,
        kg: map['kg'] as String,
        purchaseDate: map['purchaseDate'] as String,
        id: id);
  }

  String toJson() => json.encode(toMap());

  factory RefrigeratorModel.fromJson(String source) =>
      RefrigeratorModel.fromMap(json.decode(source) as Map<String, Object>);

  @override
  String toString() {
    return 'RefrigeratorModel(id: $id, name: $name, svgPath: $svgPath, kg: $kg, date: $purchaseDate)';
  }
}
