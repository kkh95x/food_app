import 'package:flutter/material.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class StrongTipsCatogeryListComponent extends StatelessWidget {
  const StrongTipsCatogeryListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s50,
      child: CatogeryList(catogeryList: const [
        StringManager.groceries,
        StringManager.dairyProducts,
        StringManager.meatProducts,
        StringManager.all
      ], onTap: (index) {}, isAddCatogry: false),
    );
  }
}
