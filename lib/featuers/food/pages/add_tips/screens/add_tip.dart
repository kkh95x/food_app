import 'package:flutter/material.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/pages/add_tips/components/catogery_list_add_tips.dart';
import 'package:food_app/featuers/food/pages/add_tips/components/form_add_tips.dart';
import 'package:food_app/featuers/food/widgets/title_text_widget.dart';

class AddTipesView extends StatelessWidget {
  const AddTipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: AppSize.s10,
        ),
        TitleTextWidget(
            title: StringManager.addTips,
            subTitle: StringManager.addStrongTips),
        SizedBox(
          height: AppSize.s10,
        ),
        AddTipsCatogeryList(),
        AddTipsForm()
      ],
    );
  }
}
