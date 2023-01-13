import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/input_text_fild.dart';

class InputTextSearch extends StatelessWidget {
  const InputTextSearch({super.key, required this.onChanged});
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyTextFilde(
           
            hint: StringManager.search,
            onChanged: onChanged,
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
