import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: AppSize.s8,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          subTitle,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .apply(color: ColorManager.secondary),
        ),
      ],
    );
  }
}
