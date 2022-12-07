import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/input_text_fild.dart';

class InputTextSearch extends StatelessWidget {
  const InputTextSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyTextFilde(
            hint: StringManager.search,
            onChanged: (p0) {},
          ),
        ),
        const SizedBox(
          width: AppSize.s8,
        ),
        SizedBox(
            width: AppSize.s30, child: SvgPicture.asset(ImageAssets.listFilter))
      ],
    );
  }
}
