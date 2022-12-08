import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/widgets/button.dart';
import 'package:food_app/featuers/food/widgets/input_text_fild.dart';

class AddTipsForm extends StatelessWidget {
  const AddTipsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.p30, vertical: AppPading.p12),
          child: MyTextFilde(
            hint: StringManager.name,
            onChanged: (d) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.p30, vertical: AppPading.p12),
          child: MyTextFilde(
            hint: StringManager.details,
            onChanged: (p0) {},
            hight: AppSize.s160,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.p30, vertical: AppPading.p12),
          child: MyButton(name: StringManager.procced),
        )
      ],
    );
  }
}
