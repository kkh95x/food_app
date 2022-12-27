import 'package:flutter/material.dart';

import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';

class TipIteamComponent extends StatelessWidget {
  const TipIteamComponent(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPading.p12, vertical: AppPading.p12),
      decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSize.s25)),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Text(
          description,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .apply(color: ColorManager.secondary),
        ),
      ),
    );
    ;
  }
}
