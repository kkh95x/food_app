// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/featuers/food/pages/add_items/screens/add_new_item.dart';
import 'package:food_app/featuers/food/pages/my_refrigerator/screens/my_refrigerator.dart';
import 'package:food_app/featuers/food/pages/recipes/screens/recipes.dart';
import 'package:food_app/featuers/food/pages/stroge_tips/screens/stroge_tips.dart';
import 'package:food_app/featuers/profile/profile.dart';

List<Widget> listScreens = const [
  MyRefrigeratorView(),
  RecipesView(),
  StrogeTipsView(),
  MyProfileView(),
  AddItemsView(),
];
