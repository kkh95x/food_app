import 'package:flutter/material.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class CatogeryAddRecipesComponent extends StatelessWidget {
  const CatogeryAddRecipesComponent(
      {super.key,
      required this.onTap,
      this.onAddTap,
      required this.catogeryList});
  final void Function(String) onTap;
  final void Function()? onAddTap;
  final List<String> catogeryList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppSize.s50,
        child: CatogeryList(
            catogeryList: catogeryList,
            onTap: (index) {
              onTap(catogeryList[index]);
            },
            isAddCatogry: true,
            onAddTap: onAddTap));
  }
}
