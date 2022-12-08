import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/widgets/list_catogery.dart';

class StrongTipsCatogeryList extends StatelessWidget {
  const StrongTipsCatogeryList({super.key});

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
