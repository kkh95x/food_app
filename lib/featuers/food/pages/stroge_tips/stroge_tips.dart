import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/model/tip_model.dart';
import 'package:food_app/featuers/food/pages/add_recipe/add_recipe.dart';
import 'package:food_app/featuers/food/pages/add_tips/add_tip.dart';
import 'package:food_app/featuers/widgets/input_searche.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class StrogeTipsView extends StatefulWidget {
  const StrogeTipsView({super.key});

  @override
  State<StrogeTipsView> createState() => _StrogeTipsViewState();
}

class _StrogeTipsViewState extends State<StrogeTipsView> {
  List<Widget> listPage = const [StrogeTipsHome(), AddTipesView()];

  int _cureentIndex = 0;

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
                    child: SvgPicture.asset(ImageAssets.addTips),
                  ),
                )))
      ],
    );
  }
}

class StrogeTipsHome extends StatelessWidget {
  const StrogeTipsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const InputTextSearch(),
        const SizedBox(
          height: AppSize.s10,
        ),
        SizedBox(
          height: AppSize.s50,
          child: CatogeryList(catogeryList: const [
            StringManager.groceries,
            StringManager.dairyProducts,
            StringManager.meatProducts,
            StringManager.all
          ], onTap: (index) {}, isAddCatogry: false),
        ),
        Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPading.p8, vertical: AppPading.p12),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPading.p12, vertical: AppPading.p12),
                    decoration: BoxDecoration(
                        color: ColorManager.white,
                        borderRadius: BorderRadius.circular(AppSize.s25)),
                    child: ListTile(
                      title: Text(
                        lisOfTips[index].title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      subtitle: Text(
                        lisOfTips[index].description,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .apply(color: ColorManager.secondary),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: AppSize.s17,
                    ),
                itemCount: lisOfTips.length))
      ],
    );
  }
}
