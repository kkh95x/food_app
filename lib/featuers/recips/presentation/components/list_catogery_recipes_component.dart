import 'package:flutter/material.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class RecipesListOfCatogeryComponent extends StatelessWidget {
  const RecipesListOfCatogeryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s50,
      child: CatogeryList(catogeryList: const [
        StringManager.pastries,
        StringManager.soups,
        StringManager.grills,
        StringManager.all
      ], onTap: (index) {}, isAddCatogry: false),
    );
  }
}
