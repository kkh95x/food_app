import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/featuers/recips/data/recip_repository.dart';
import 'package:food_app/featuers/recips/domain/recipe_model.dart';

class FirebaseRecipsRepository extends RecipsRepostory {
  final recipsCollection = FirebaseFirestore.instance.collection("recips");
  final storage = FirebaseStorage.instance;
  final catogeryCollection =
      FirebaseFirestore.instance.collection("catogery_recips");

  @override
  Future<void> createRecip({required RecipeModel recipModel}) async {
    await recipsCollection.add(recipModel.toJson());
  }

  @override
  Future<List<RecipeModel>> getAllRecips() async {
    return await recipsCollection
        .orderBy("dateAdded", descending: true)
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((e) => RecipeModel.fromJson(e.data()))
            .toList());
  }
   @override
  Future<List<RecipeModel>> getRecips() async {
    return await recipsCollection
        .orderBy("dateAdded", descending: true)
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((e) => RecipeModel.fromJson(e.data()))
            .toList());
  }

  @override
  Future<String> uploadImage({required File file}) async {
    await FirebaseStorage.instance.ref(file.path).putFile(file);
    String path =
        await FirebaseStorage.instance.ref(file.path).getDownloadURL();

    return path;
  }

  @override
  Future<List<String>> getCatogerys() async {
    return await catogeryCollection.orderBy("timeAdd",descending: true).get().then(
        (querySnapshot) =>
            querySnapshot.docs.map((e) => e['name'] as String).toList());
  }

  @override
  Future<void> addNewCatogery(String name) async {
     await catogeryCollection.add({"name":name,"timeAdd":DateTime.now()});
  }

}
final recipProviderRepository = Provider<RecipsRepostory>(
  (ref) => FirebaseRecipsRepository());