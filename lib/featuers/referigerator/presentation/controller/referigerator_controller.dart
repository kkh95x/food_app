// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/core/resource/string_manager.dart';

import 'package:food_app/featuers/referigerator/data/firebase_referigerator_repository.dart';
import 'package:food_app/featuers/referigerator/data/referigerator_repository.dart';
import 'package:food_app/featuers/referigerator/domain/referigerator_model.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

final referigeratorProvider = ChangeNotifierProvider<ReferigeratorNotifier>(
  (ref) => ReferigeratorNotifier(
      referigeratorRepository: ref.watch(recipProviderReferigeratorRepository)),
);

class ReferigeratorNotifier extends ChangeNotifier {
  ReferigeratorRepository referigeratorRepository;
  ReferigeratorNotifier({required this.referigeratorRepository});

  Future<List<RefrigeratorModel>> loadList() async {
    if (catogery == StringManager.all && searchName == "") {
   

      return await referigeratorRepository.getAllRefrigerators();
    } else if (catogery != StringManager.all && searchName == "") {

      return await referigeratorRepository.getRefrigeratorsByCatogery(catogery);
    } else if (catogery == StringManager.all && searchName != "") {

      return await referigeratorRepository.getRefrigeratorsByName(searchName);
    } else {

      return await referigeratorRepository.getRefrigeratorsByCatogeryAndName(
          catogery, searchName);
    }
  }

  String catogery = "";
  String searchName = "";
  set setCatogery(String catogery) {
    notifyListeners();
    this.catogery = catogery;
  }

  set setsearchName(String searchName) {
    notifyListeners();
    this.searchName = searchName;
  }

  Future<void> createReferigerator(
      name, svgPath, kg, purchaseDate, expirationDate, category) async {
    await referigeratorRepository.createAllRefrigerator(
        refrigeratorModel: RefrigeratorModel(
            name: name,
            svgPath: svgPath,
            kg: kg,
            catogery: category,
            purchaseDate: purchaseDate,
            expirationDate: expirationDate));
  }

  Future<void> deleteById(String id) async {
    return await referigeratorRepository.delete(id);
  }
}

class ReferigeratorState {
  bool? isLoading = true;
  List<RefrigeratorModel>? list = [];
  ReferigeratorState({
    this.isLoading,
    this.list,
  });

  ReferigeratorState copyWith({
    bool? isLoading,
    List<RefrigeratorModel>? list,
  }) {
    return ReferigeratorState(
      isLoading: isLoading ?? this.isLoading,
      list: list ?? this.list,
    );
  }

  @override
  String toString() => 'ReferigeratorState(isLoading: $isLoading, list: $list)';

  @override
  bool operator ==(covariant ReferigeratorState other) {
    if (identical(this, other)) return true;

    return other.isLoading == isLoading && listEquals(other.list, list);
  }

  @override
  int get hashCode => isLoading.hashCode ^ list.hashCode;
}
