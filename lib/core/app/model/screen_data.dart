// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:food_app/featuers/recips/presentation/screens/recipes_hom_screen.dart';
import 'package:food_app/featuers/referigerator/presentation/screens/add_new_item.dart';
import 'package:food_app/featuers/referigerator/presentation/screens/my_refrigerator.dart';
import 'package:food_app/featuers/storage_tips/presentation/screens/stroge_tips_home_screen.dart';
import 'package:food_app/featuers/profile/profile.dart';

List<Widget> listScreens = [
  const MyRefrigeratorScreen(),
  const RecipesHomeScreen(),
  const StrogeTipsHomeScreen(),
  const MyProfileView(),
  const AddItemsScreen(),
  const MyRefrigeratorScreen(),
];
