import 'package:flutter/material.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class ListOfCatogeryAddNewItemComponent extends StatelessWidget {
  ListOfCatogeryAddNewItemComponent({super.key, required this.onTap});
  void Function(String) onTap;
  List<String> list = const [
    StringManager.groceries,
    StringManager.dairyProducts,
    StringManager.meatProducts
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppSize.s50,
        child: CatogeryList(
          isAddCatogry: false,
          catogeryList: list,
          onTap: (int index) {
            onTap(list[index]);
          },
        ));
  }
}
