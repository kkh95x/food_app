import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/featuers/recips/data/firebase_trecip_repository.dart';
import 'package:food_app/featuers/recips/data/recip_repository.dart';
import 'package:food_app/featuers/recips/domain/post_model.dart';

final recipProvider = ChangeNotifierProvider<RecipsNotifier>(
  (ref) => RecipsNotifier(recipsRepository: FirebaseRecipsRepository()),
);

class RecipsNotifier extends ChangeNotifier {
  RecipsRepostory recipsRepository;
  RecipsNotifier({required this.recipsRepository});

  Future<List<RecipeModel>> loadList() async {
    return await recipsRepository.getAllRecips();
  }

  Future<void> creatRecips(
      String title, String description, String pathImage) async {
    String path = await recipsRepository.uploadImage(file: File(pathImage));
    await recipsRepository.createRecip(
        recipModel: RecipeModel(
            pathImage: path,
            likes: "0",
            comment: "0",
            share: "0",
            love: "0",
            title: title,
            descrption: description));
  }
}

final indexPageProvider = StateProvider<int>((ref) {
  return 0;
});
