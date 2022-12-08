// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:food_app/core/resource/string_manager.dart';

import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/pages/add_items/components/form_add_new_item.dart';

import 'package:food_app/featuers/food/pages/add_items/components/list_catogery_h.dart';
import 'package:food_app/featuers/food/widgets/title_text_widget.dart';

class AddItemsView extends StatelessWidget {
  const AddItemsView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPading.p12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TitleTextWidget(
                title: StringManager.addNewItems,
                subTitle: StringManager.addItemsToYourRefrigrator),
            SizedBox(
              height: AppSize.s40,
            ),
            //list catogery
            ListOfCatogeryAddNewItem(),
            SizedBox(
              height: AppSize.s20,
            ),
            FormeInputNewItem(),
            SizedBox(
              height: AppSize.s30,
            ),
          ],
        ),
      ),
    );
  }
}
