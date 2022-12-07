// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/featuers/food/pages/add_items/add_new_item.dart';
import 'package:food_app/featuers/food/pages/my_refrigerator/my_refrigerator.dart';
import 'package:food_app/featuers/food/pages/recipes/recipes.dart';
import 'package:food_app/featuers/food/pages/stroge_tips/stroge_tips.dart';
import 'package:food_app/featuers/profile/profile.dart';

class ScreenModel {
  String title;
  String subTitle;
  Widget screenWidget;
  ScreenModel({
    required this.title,
    required this.subTitle,
    required this.screenWidget,
  });
}

List<ScreenModel> listScreens = [
  ScreenModel(
      screenWidget: const MyRefrigeratorView(),
      subTitle: StringManager.listOfItemsInMyRefrigerator,
      title: StringManager.refrigerator),
  ScreenModel(
      screenWidget: const RecipesView(),
      title: StringManager.recipes,
      subTitle: StringManager.listofSharedRecipes),
  ScreenModel(
    screenWidget: const StrogeTipsView(),
    subTitle: StringManager.listOfStorageTips,
    title: StringManager.storageTips,
  ),
  ScreenModel(
      screenWidget: const MyProfileView(),
      subTitle: StringManager.notInMyTask,
      title: StringManager.myProfile),
  ScreenModel(
      screenWidget: AddItemsView(),
      subTitle: StringManager.addItemsToYourRefrigrator,
      title: StringManager.addNewItems),
];
