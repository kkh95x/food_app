import 'dart:io';

import 'package:food_app/featuers/recips/domain/post_model.dart';

abstract class RecipsRepostory {
  Future<List<RecipeModel>> getAllRecips();
  Future<void> createRecip({required RecipeModel recipModel});
  Future<String> uploadImage({required File file});
}
