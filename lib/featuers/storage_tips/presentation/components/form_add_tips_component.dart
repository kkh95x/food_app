import 'package:flutter/material.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/button.dart';
import 'package:food_app/featuers/widgets/input_text_fild.dart';

class AddTipsFormComponent extends StatelessWidget {
  const AddTipsFormComponent({super.key, required this.onPressed});
  final void Function(String? name, String? details) onPressed;
  @override
  Widget build(BuildContext context) {
    String? name;
    String? details;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.p30, vertical: AppPading.p12),
          child: MyTextFilde(
           
        
            hint: StringManager.name,
            onChanged: (d) {
              name = d;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.p30, vertical: AppPading.p12),
          child: MyTextFilde(
           
            hint: StringManager.details,
            onChanged: (p0) {
              details = p0;
            },
            hight: AppSize.s160,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.p30, vertical: AppPading.p12),
          child: MyButton(
              name: StringManager.procced,
              onPressed: () {
                onPressed(name, details);
              }),
        )
      ],
    );
  }
}
