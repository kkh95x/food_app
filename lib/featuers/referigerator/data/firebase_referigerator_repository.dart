import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/featuers/referigerator/data/referigerator_repository.dart';

import 'package:food_app/featuers/referigerator/domain/referigerator_model.dart';

class FirebaseReferigeratorRepository extends ReferigeratorRepository {
  final referigeratorCollection =
      FirebaseFirestore.instance.collection("referigerator");

  @override
  Future<void> createAllRefrigerator(
      {required RefrigeratorModel refrigeratorModel}) async {
    await referigeratorCollection.add(refrigeratorModel.toMap());
  }

  @override
  Future<List<RefrigeratorModel>> getAllRefrigerators() async {
    return await referigeratorCollection
        .orderBy("dateAdded", descending: true)
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((e) => RefrigeratorModel.fromMap(e.data(), e.id))
            .toList());
  }

  Future<void> delete(String id) async {
    return await referigeratorCollection.doc(id).delete();
  }
}
