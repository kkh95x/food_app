import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/recips/presentation/controller/recipes_controller.dart';
import 'package:food_app/featuers/widgets/show_dialog.dart';

import 'package:food_app/featuers/widgets/title_text_widget.dart';
import 'package:food_app/featuers/recips/presentation/components/catogery_list_recipe_component.dart';
import 'package:food_app/featuers/recips/presentation/components/form_add_new_recipe_component.dart';
import 'package:food_app/featuers/recips/presentation/components/image_piker_new_recipe_component.dart';

// ignore: must_be_immutable
class AddRecipeScreen extends StatelessWidget {
  AddRecipeScreen({super.key});
  String? pathImage;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const TitleTextWidget(
              title: StringManager.addNewRecipe,
              subTitle: StringManager.addItemsToYourRefrigrator),
          const SizedBox(
            height: AppSize.s10,
          ),
          const CatogeryAddRecipesComponent(),
          const SizedBox(
            height: AppSize.s10,
          ),
          ImageNewRecipeComponent(
            onPressed: (String? path) {
              pathImage = path;
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              return FormAddNewRecipComponent(onPressed: (title, description) {
                if (title != null && description != null && pathImage != null) {
                  ref
                      .read(recipProvider)
                      .creatRecips(title, description, pathImage!);
                  ref.read(indexPageProvider.notifier).state = 0;
                } else {
                  showFakeAlertDialog(context, "Enter title and description");
                }
              });
            },
          )
        ],
      ),
    );
  }
}
