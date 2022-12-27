import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_app/featuers/storage_tips/data/tips_repository.dart';
import 'package:food_app/featuers/storage_tips/domain/tip_model.dart';

class FirebaseTipRepository extends TipRepository {
  final referigeratorCollection = FirebaseFirestore.instance.collection("tip");

  @override
  Future<void> createTips({required TipModel tipModel}) async {
    await referigeratorCollection.add(tipModel.toMap());
  }

  @override
  Future<List<TipModel>> getAllTips() async {
    return await referigeratorCollection
        .orderBy("dateAdded", descending: true)
        .get()
        .then((querySnapshot) =>
            querySnapshot.docs.map((e) => TipModel.fromMap(e.data())).toList());
  }
}
