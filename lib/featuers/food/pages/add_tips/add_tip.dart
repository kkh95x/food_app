import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/button.dart';
import 'package:food_app/featuers/widgets/input_text_fild.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class AddTipesView extends StatelessWidget {
  const AddTipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: AppSize.s10,
        ),
        SizedBox(
          height: AppSize.s50,
          child: CatogeryList(
            catogeryList: const [
              StringManager.groceries,
              StringManager.dairyProducts,
              StringManager.meatProducts,
            ],
            isAddCatogry: true,
            onTap: (index) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.p30, vertical: AppPading.p12),
          child: MyTextFilde(
            hint: StringManager.name,
            onChanged: (d) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.p30, vertical: AppPading.p12),
          child: MyTextFilde(
            hint: StringManager.details,
            onChanged: (p0) {},
            hight: AppSize.s160,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.p30, vertical: AppPading.p12),
          child: MyButton(name: StringManager.procced),
        )
      ],
    );
  }
}
