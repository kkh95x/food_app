// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/storage_tips/presentation/controller/tips_controller.dart';
import 'package:food_app/featuers/storage_tips/presentation/screens/add_tip_screen.dart';
import 'package:food_app/featuers/storage_tips/presentation/screens/strong_tips_list_screen.dart';

class StrogeTipsHomeScreen extends ConsumerStatefulWidget {
  const StrogeTipsHomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StrogeTipsHomeScreenState();
}

class _StrogeTipsHomeScreenState extends ConsumerState {
  @override
  Widget build(BuildContext context) {
    List<Widget> listPage = const [StrogeTipsListScreen(), AddTipesScreen()];

    return Stack(
      children: [
        listPage[ref.watch(indexTipsProvider)],
        Visibility(
            visible: ref.watch(indexTipsProvider.notifier).state != 1,
            child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: const EdgeInsets.all(AppPading.p12),
                  child: FloatingActionButton(
                    backgroundColor: ColorManager.darkButton,
                    onPressed: () {
                      ref.read(indexTipsProvider.notifier).state = 1;
                    },
                    child: SvgPicture.asset(ImageAssets.addTips),
                  ),
                )))
      ],
    );
  }
}
