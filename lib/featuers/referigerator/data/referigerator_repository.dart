import 'package:food_app/featuers/referigerator/domain/referigerator_model.dart';

abstract class ReferigeratorRepository {
  Future<List<RefrigeratorModel>> getAllRefrigerators();
  Future<void> createAllRefrigerator(
      {required RefrigeratorModel refrigeratorModel});
        Future<List<RefrigeratorModel>> getRefrigeratorsByName(String name);
  
        Future<List<RefrigeratorModel>> getRefrigeratorsByCatogery(String catogery);
        Future<List<RefrigeratorModel>> getRefrigeratorsByCatogeryAndName(String catogery,String name);
 
  Future<void> delete(String id);
}
