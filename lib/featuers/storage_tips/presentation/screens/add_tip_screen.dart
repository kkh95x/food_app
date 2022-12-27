import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/storage_tips/presentation/controller/tips_controller.dart';
import 'package:food_app/featuers/widgets/show_dialog.dart';

import 'package:food_app/featuers/widgets/title_text_widget.dart';
import 'package:food_app/featuers/storage_tips/presentation/components/catogery_list_add_tips_component.dart';
import 'package:food_app/featuers/storage_tips/presentation/components/form_add_tips_component.dart';

class AddTipesScreen extends StatelessWidget {
  const AddTipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: AppSize.s10,
        ),
        const TitleTextWidget(
            title: StringManager.addTips,
            subTitle: StringManager.addStrongTips),
        const SizedBox(
          height: AppSize.s10,
        ),
        const AddTipsCatogeryListComponent(),
        Consumer(
          builder: (context, ref, child) {
            return AddTipsFormComponent(
              onPressed: (name, details) {
                if (name != null && details != null) {
                  ref.read(tipProvider).creatTip(name, details);
                  ref.read(indexTipsProvider.notifier).state = 0;
                } else {
                  showFakeAlertDialog(context, "Enter name and details");
                }
              },
            );
          },
        )
      ],
    );
  }
}
