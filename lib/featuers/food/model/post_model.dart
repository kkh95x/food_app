import 'package:food_app/core/resource/assest_manager.dart';

class PostModel {
  String pathImage;
  String likes;
  String comment;
  String share;
  String love;
  String title;
  String descrption;
  PostModel({
    required this.pathImage,
    required this.likes,
    required this.comment,
    required this.share,
    required this.love,
    required this.title,
    required this.descrption,
  });
}

List<PostModel> listOfPotes = [
  PostModel(
      pathImage: ImageAssets.postImage,
      likes: "120",
      comment: "22",
      love: "2",
      title: "Caesar Salad",
      descrption:
          "A Caesar salad is a green salad of romaine lettuce and croutons dressed with lemon juice, olive oil, egg, Worcestershire sauce, anchovies, garlic, Dijon mustard, Parmesan cheese, and black pepper. In its original form, this salad was prepared and served",
      share: '12')
];
