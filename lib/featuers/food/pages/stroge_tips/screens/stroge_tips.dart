import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/pages/add_tips/screens/add_tip.dart';
import 'package:food_app/featuers/food/pages/stroge_tips/screens/strong_tips_home.dart';

class StrogeTipsView extends StatefulWidget {
  const StrogeTipsView({super.key});

  @override
  State<StrogeTipsView> createState() => _StrogeTipsViewState();
}

class _StrogeTipsViewState extends State<StrogeTipsView> {
  List<Widget> listPage = const [StrogeTipsHome(), AddTipesView()];

  int _cureentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        listPage[_cureentIndex],
        Visibility(
            visible: _cureentIndex != 1,
            child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: const EdgeInsets.all(AppPading.p12),
                  child: FloatingActionButton(
                    backgroundColor: ColorManager.darkButton,
                    onPressed: () {
                      setState(() {
                        _cureentIndex = 1;
                      });
                    },
                    child: SvgPicture.asset(ImageAssets.addTips),
                  ),
                )))
      ],
    );
  }
}
