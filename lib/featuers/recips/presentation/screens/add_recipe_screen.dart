import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/recips/presentation/components/dialog_add_new_catogery_component.dart';
import 'package:food_app/featuers/recips/presentation/controller/recipes_controller.dart';
import 'package:food_app/featuers/widgets/show_dialog.dart';

import 'package:food_app/featuers/widgets/title_text_widget.dart';
import 'package:food_app/featuers/recips/presentation/components/catogery_list_recipe_component.dart';
import 'package:food_app/featuers/recips/presentation/components/form_add_new_recipe_component.dart';
import 'package:food_app/featuers/recips/presentation/components/image_piker_new_recipe_component.dart';

// ignore: must_be_immutable
class AddRecipeScreen extends ConsumerWidget {
  AddRecipeScreen({super.key});
  String? pathImage;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final recipsProvider = ref.watch(recipProvider);
    final setIndexPage = ref.read(indexPageProvider.notifier);
    return SingleChildScrollView(
      child: Column(
        children: [
          const TitleTextWidget(
              title: StringManager.addNewRecipe,
              subTitle: StringManager.addItemsToYourRefrigrator),
          const SizedBox(
            height: AppSize.s10,
          ),
          FutureBuilder(
            future: recipsProvider.getCatogeryList(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return CatogeryAddRecipesComponent(
                  onTap: (p0) {
                    //TODO CATOGERY SELECTED
                  },
                  catogeryList: snapshot.data!,
                  onAddTap: (() {
                    showDialog(
                      context: context,
                      builder: (context) => ShowDialogTextfilde(
                        onPressed: (p0) {
                          print(p0);
                          if (p0 != null) {
                            recipsProvider.addNewCatogery(p0);
                            Navigator.pop(context);
                          }
                        },
                      ),
                    );
                  }),
                );
              }
              return const CircularProgressIndicator();
            },
          ),
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
              return FormAddNewRecipComponent(
                  formKey: formKey,
                  onPressed: (title, description) {
                    
                    if ((formKey.currentState?.validate()??false) &&
                        pathImage != null) {
                      recipsProvider.creatRecips(
                          title!, description!, pathImage!);
                      setIndexPage.state = 0;
                    } else {
                      showFakeAlertDialog(
                          context, "Enter title and description");
                    }
                  });
            },
          )
        ],
      ),
    );
  }
}
