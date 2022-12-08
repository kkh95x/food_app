import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/pages/add_recipe/screens/add_recipe.dart';

import 'package:food_app/featuers/food/pages/recipes/screens/recipes_home.dart';

class RecipesView extends StatefulWidget {
  const RecipesView({super.key});

  @override
  State<RecipesView> createState() => _RecipesViewState();
}

class _RecipesViewState extends State<RecipesView> {
  int _cureentIndex = 0;
  List<Widget> listPage = const [RecipesHomeView(), AddRecipeView()];
  @override
  void initState() {
    _cureentIndex = 0;
    super.initState();
  }

  @override
  void deactivate() {
    _cureentIndex = 0;
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        listPage[_cureentIndex],
        Visibility(
            visible: _cureentIndex != 1,
            child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: const EdgeInsets.all(AppPading.p12),
                  child: FloatingActionButton(
                    backgroundColor: ColorManager.darkButton,
                    onPressed: () {
                      setState(() {
                        _cureentIndex = 1;
                      });
                    },
                    child: SvgPicture.asset(ImageAssets.addRecipes),
                  ),
                )))
      ],
    );
  }
}
