// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_app/core/resource/assest_manager.dart';

class RefrigeratorItem {
  String name;
  String svgPath;
  String kg;
  String date;
  RefrigeratorItem(
      {required this.name,
      required this.svgPath,
      required this.kg,
      required this.date});
}

List<RefrigeratorItem> lisRefrigeratorItems = [
  RefrigeratorItem(
      name: "Potato",
      svgPath: ImageAssets.tomato,
      kg: "0.5 Kg",
      date: "5 Days"),
  RefrigeratorItem(
      name: "tomato",
      svgPath: ImageAssets.tomato,
      kg: "0.5 Kg",
      date: "10 Days"),
];
