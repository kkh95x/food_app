import 'package:food_app/featuers/referigerator/domain/referigerator_model.dart';

abstract class ReferigeratorRepository {
  Future<List<RefrigeratorModel>> getAllRefrigerators();
  Future<void> createAllRefrigerator(
      {required RefrigeratorModel refrigeratorModel});
  Future<void> delete(String id);
}
