import 'package:food_app/featuers/storage_tips/domain/tip_model.dart';

abstract class TipRepository {
  Future<List<TipModel>> getAllTips();
  Future<void> createTips({required TipModel tipModel});
}
