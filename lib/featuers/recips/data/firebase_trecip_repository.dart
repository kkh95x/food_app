import 'dart:io';
import 'dart:math';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_app/featuers/recips/data/recip_repository.dart';
import 'package:food_app/featuers/recips/domain/post_model.dart';

class FirebaseRecipsRepository extends RecipsRepostory {
  final referigeratorCollection =
      FirebaseFirestore.instance.collection("recips");
  final storage = FirebaseStorage.instance;

  @override
  Future<void> createRecip({required RecipeModel recipModel}) async {
    await referigeratorCollection.add(recipModel.toMap());
  }

  @override
  Future<List<RecipeModel>> getAllRecips() async {
    return await referigeratorCollection
        .orderBy("dateAdded", descending: true)
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((e) => RecipeModel.fromMap(e.data()))
            .toList());
  }

  @override
  Future<String> uploadImage({required File file}) async {
    await FirebaseStorage.instance.ref(file.path).putFile(file);
    String path =
        await FirebaseStorage.instance.ref(file.path).getDownloadURL();

    return path;
  }
}
