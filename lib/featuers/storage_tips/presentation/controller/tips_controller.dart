// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:food_app/featuers/storage_tips/data/firebase_tips_repository.dart';
import 'package:food_app/featuers/storage_tips/data/tips_repository.dart';
import 'package:food_app/featuers/storage_tips/domain/tip_model.dart';

final tipProvider = ChangeNotifierProvider<TipNotifier>(
  (ref) => TipNotifier(tipRepository: FirebaseTipRepository()),
);

class TipNotifier extends ChangeNotifier {
  TipRepository tipRepository;
  TipNotifier({required this.tipRepository});

  Future<List<TipModel>> loadList() async {
    return await tipRepository.getAllTips();
  }

  Future<void> creatTip(String title, String description) async {
    await tipRepository.createTips(
        tipModel: TipModel(title: title, description: description));
  }
}

final indexTipsProvider = StateProvider<int>((ref) {
  return 0;
});
