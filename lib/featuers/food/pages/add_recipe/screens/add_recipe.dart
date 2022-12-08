import 'package:flutter/material.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/pages/add_recipe/components/catogery_list_recipe.dart';
import 'package:food_app/featuers/food/pages/add_recipe/components/form_add_new_recipe.dart';
import 'package:food_app/featuers/food/pages/add_recipe/components/image_piker_new_recipe.dart';

import 'package:food_app/featuers/food/widgets/title_text_widget.dart';

class AddRecipeView extends StatelessWidget {
  const AddRecipeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          TitleTextWidget(
              title: StringManager.addNewRecipe,
              subTitle: StringManager.addItemsToYourRefrigrator),
          SizedBox(
            height: AppSize.s10,
          ),
          ListOfCatogeryRecipes(),
          SizedBox(
            height: AppSize.s10,
          ),
          ImageNewRecipe(),
          FormAddNewRecip()
        ],
      ),
    );
  }
}
