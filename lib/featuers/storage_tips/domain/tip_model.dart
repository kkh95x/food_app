import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip_model.freezed.dart';
part 'tip_model.g.dart';

@freezed
class TipModel with _$TipModel {
  
  factory TipModel({
   required String title,
 required String description,
  })=_TipModel;

  

factory TipModel.fromJson(Map<String, Object?> json) => _$TipModelFromJson(json);
}
