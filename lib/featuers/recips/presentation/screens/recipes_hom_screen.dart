import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/recips/presentation/controller/recipes_controller.dart';
import 'package:food_app/featuers/recips/presentation/screens/add_recipe_screen.dart';
import 'package:food_app/featuers/recips/presentation/screens/recipes_list_screen.dart';

class RecipesHomeScreen extends ConsumerStatefulWidget {
  const RecipesHomeScreen({super.key});

  @override
  ConsumerState<RecipesHomeScreen> createState() => _RecipesViewState();
}

class _RecipesViewState extends ConsumerState<RecipesHomeScreen> {
  List<Widget> listPage = [const RecipesListScreen(), AddRecipeScreen()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        listPage[ref.watch(indexPageProvider)],
        Visibility(
            visible: ref.read(indexPageProvider.notifier).state != 1,
            child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: const EdgeInsets.all(AppPading.p12),
                  child: FloatingActionButton(
                    backgroundColor: ColorManager.darkButton,
                    onPressed: () {
                      setState(() {
                        ref.read(indexPageProvider.notifier).state = 1;
                      });
                    },
                    child: SvgPicture.asset(ImageAssets.addRecipes),
                  ),
                )))
      ],
    );
  }
}
