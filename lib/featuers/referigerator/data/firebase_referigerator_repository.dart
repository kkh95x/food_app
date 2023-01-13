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
    await referigeratorCollection.add(refrigeratorModel.toJson()
      );
  }

  @override
  Future<List<RefrigeratorModel>> getAllRefrigerators() async {
    return await referigeratorCollection
        // .orderBy("dateAdded", descending: true)
        .get()
        .then((querySnapshot) => querySnapshot.docs.map((e) {
              return RefrigeratorModel.fromJson(e.data()).copyWith(id: e.id);
            }).toList());
  }

  Future<void> delete(String id) async {
    return await referigeratorCollection.doc(id).delete();
  }

  @override
  Future<List<RefrigeratorModel>> getRefrigeratorsByCatogery(
      String catogery) async {
    print("getRefrigeratorsByCatogery /n");

    return await referigeratorCollection
        .where("catogery", isEqualTo: catogery)
        // .orderBy("dateAdded", descending: true)
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((e) => RefrigeratorModel.fromJson(e.data()).copyWith(id: e.id))
            .toList());
  }

  @override
  Future<List<RefrigeratorModel>> getRefrigeratorsByName(String name) async {
    print("getRefrigeratorsByName /n");

    return await referigeratorCollection
        .where("name", isLessThanOrEqualTo: name)
        // .orderBy("dateAdded", descending: true)
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((e) => RefrigeratorModel.fromJson(e.data()).copyWith(id: e.id))
            .toList());
  }

  @override
  Future<List<RefrigeratorModel>> getRefrigeratorsByCatogeryAndName(
      String catogery, String name) async {
    print("getRefrigeratorsByCatogeryAndName /n");

    return await referigeratorCollection
        .where("name", isLessThanOrEqualTo: name)
        .where("catogery", isEqualTo: catogery)
        // .orderBy("dateAdded", descending: true)
        .get()
        .then((querySnapshot) => querySnapshot.docs
            .map((e) => RefrigeratorModel.fromJson(e.data()).copyWith(id: e.id))
            .toList());
  }
}

final recipProviderReferigeratorRepository = Provider<ReferigeratorRepository>(
    (ref) => FirebaseReferigeratorRepository());
