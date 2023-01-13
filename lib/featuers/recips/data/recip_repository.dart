import 'dart:io';

import 'package:food_app/featuers/recips/domain/recipe_model.dart';

abstract class RecipsRepostory {
  Future<List<RecipeModel>> getAllRecips();
  Future<void> createRecip({required RecipeModel recipModel});
  Future<String> uploadImage({required File file});
  Future<List<String>> getCatogerys();
  Future<void> addNewCatogery(String name);
}
