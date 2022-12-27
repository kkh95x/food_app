import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TipModel {
  String title;
  String description;
  TipModel({
    required this.title,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      "dateAdded": DateTime.now()
    };
  }

  factory TipModel.fromMap(Map<String, dynamic> map) {
    return TipModel(
      title: map['title'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TipModel.fromJson(String source) =>
      TipModel.fromMap(json.decode(source) as Map<String, Object>);
}
