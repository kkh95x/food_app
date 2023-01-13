import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/featuers/storage_tips/data/tips_repository.dart';
import 'package:food_app/featuers/storage_tips/domain/tip_model.dart';

class FirebaseTipRepository extends TipRepository {
  final referigeratorCollection = FirebaseFirestore.instance.collection("tip");

  @override
  Future<void> createTips({required TipModel tipModel}) async {
    await referigeratorCollection.add(tipModel.toJson());
  }

  @override
  Future<List<TipModel>> getAllTips() async {
    return await referigeratorCollection
        .orderBy("dateAdded", descending: true)
        .get()
        .then((querySnapshot) =>
            querySnapshot.docs.map((e) => TipModel.fromJson(e.data())).toList());
  }
}
final recipProviderFirebaseTipRepository = Provider<TipRepository>(
  (ref) => FirebaseTipRepository());
