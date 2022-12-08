import 'package:flutter/material.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/model/tip_model.dart';
import 'package:food_app/featuers/food/pages/stroge_tips/components/catogery_list_tips.dart';
import 'package:food_app/featuers/food/pages/stroge_tips/components/input_search_tips.dart';
import 'package:food_app/featuers/food/pages/stroge_tips/components/item_for_list_tips.dart';
import 'package:food_app/featuers/food/widgets/list_catogery.dart';
import 'package:food_app/featuers/food/widgets/title_text_widget.dart';

class StrogeTipsHome extends StatelessWidget {
  const StrogeTipsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleTextWidget(
            title: StringManager.storageTips,
            subTitle: StringManager.listOfStorageTips),
        const SizedBox(
          height: AppSize.s10,
        ),
        const StrongTipsInputSearch(),
        const SizedBox(
          height: AppSize.s10,
        ),
        const StrongTipsCatogeryList(),
        Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPading.p8, vertical: AppPading.p12),
                itemBuilder: (context, index) {
                  return TipIteam(
                    description: lisOfTips[index].description,
                    title: lisOfTips[index].title,
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
