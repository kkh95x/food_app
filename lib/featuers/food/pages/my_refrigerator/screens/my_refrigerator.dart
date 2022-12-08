import 'package:flutter/material.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/model/food_model.dart';
import 'package:food_app/featuers/food/pages/my_refrigerator/components/catogery_list_refriherator.dart';
import 'package:food_app/featuers/food/pages/my_refrigerator/components/input_text_search_refrigerator.dart';
import 'package:food_app/featuers/food/pages/my_refrigerator/components/item_list_refrigerator.dart';

import 'package:food_app/featuers/widgets/title_text_widget.dart';

class MyRefrigeratorView extends StatelessWidget {
  const MyRefrigeratorView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPading.p5),
        child: Column(children: [
          const TitleTextWidget(
              title: StringManager.refrigerator,
              subTitle: StringManager.listOfItemsInMyRefrigerator),
          const SizedBox(
            height: AppSize.s25,
          ),
          const RefrigeratorInputSearch(),
          const SizedBox(
            height: AppSize.s10,
          ),
          const RefrigeratorCatogeryList(),
          const SizedBox(
            height: AppSize.s10,
          ),
          SizedBox(
              height: AppSize.s500,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return RefrigeratorItemWidget(
                      data: lisRefrigeratorItems[index],
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: AppSize.s20,
                      ),
                  itemCount: lisRefrigeratorItems.length))
        ]),
      ),
    );
  }
}
