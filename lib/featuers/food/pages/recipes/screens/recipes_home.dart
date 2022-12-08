import 'package:flutter/material.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/model/post_model.dart';
import 'package:food_app/featuers/food/pages/recipes/components/input_search_recipes.dart';
import 'package:food_app/featuers/food/pages/recipes/components/list_catogery_recipes.dart';
import 'package:food_app/featuers/food/pages/recipes/components/post_item.dart';
import 'package:food_app/featuers/food/widgets/title_text_widget.dart';

class RecipesHomeView extends StatelessWidget {
  const RecipesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPading.p8,
        right: AppPading.p8,
      ),
      child: Column(
        children: [
          const TitleTextWidget(
              title: StringManager.recipes,
              subTitle: StringManager.listofSharedRecipes),
          const SizedBox(
            height: AppSize.s10,
          ),
          const RecipesInputSearch(),
          const SizedBox(
            height: AppSize.s10,
          ),
          const RecipesListOfCatogeryx(),
          const SizedBox(
            height: AppSize.s10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  RecipesPostItem(postModel: listOfPotes[index]),
              itemCount: listOfPotes.length,
            ),
          )
        ],
      ),
    );
  }
}
