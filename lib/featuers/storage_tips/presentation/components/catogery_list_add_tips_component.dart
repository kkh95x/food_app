import 'package:flutter/material.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class AddTipsCatogeryListComponent extends StatelessWidget {
  const AddTipsCatogeryListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
