// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/string_manager.dart';

class IconData {
  String onSelected;
  String notSelected;
  String name;
  IconData({
    required this.onSelected,
    required this.notSelected,
    required this.name,
  });
}

List<IconData> listIconDataBottomNavigationBar = [
  IconData(
      onSelected: ImageAssets.refrigeratorSelected,
      name: StringManager.refrigerator,
      notSelected: ImageAssets.refrigerator),
  IconData(
      onSelected: ImageAssets.recipesSelected,
      notSelected: ImageAssets.recipes,
      name: StringManager.recipes),
  IconData(
    onSelected: ImageAssets.storageTipsSelected,
    notSelected: ImageAssets.storageTips,
    name: StringManager.storageTips,
  ),
  IconData(
    onSelected: ImageAssets.myProfileSelected,
    notSelected: ImageAssets.myProfile,
    name: StringManager.myProfile,
  ),
];
