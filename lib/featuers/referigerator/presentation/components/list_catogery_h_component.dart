import 'package:flutter/material.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class ListOfCatogeryAddNewItemComponent extends StatelessWidget {
  const ListOfCatogeryAddNewItemComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppSize.s50,
        child: CatogeryList(
          isAddCatogry: true,
          catogeryList: const [
            StringManager.groceries,
            StringManager.dairyProducts,
            StringManager.meatProducts
          ],
          onTap: (int index) {},
        ));
  }
}
