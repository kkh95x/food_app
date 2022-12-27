// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:food_app/core/resource/assest_manager.dart';

class RecipeModel {
  String? id;
  String pathImage;
  String likes;
  String comment;
  String share;
  String love;
  String title;
  String descrption;
  RecipeModel({
    this.id,
    required this.pathImage,
    required this.likes,
    required this.comment,
    required this.share,
    required this.love,
    required this.title,
    required this.descrption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pathImage': pathImage,
      'likes': likes,
      'comment': comment,
      'share': share,
      'love': love,
      'title': title,
      'descrption': descrption,
      "dateAdded": DateTime.now()
    };
  }

  factory RecipeModel.fromMap(Map<String, dynamic> map) {
    return RecipeModel(
      pathImage: map['pathImage'] as String,
      likes: map['likes'] as String,
      comment: map['comment'] as String,
      share: map['share'] as String,
      love: map['love'] as String,
      title: map['title'] as String,
      descrption: map['descrption'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RecipeModel.fromJson(String source) =>
      RecipeModel.fromMap(json.decode(source) as Map<String, Object>);
}
