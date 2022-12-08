import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/model/food_model.dart';

class RefrigeratorItemWidget extends StatelessWidget {
  const RefrigeratorItemWidget({super.key, required this.data});
  final RefrigeratorItem data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPading.p8),
      child: Container(
        height: AppSize.s75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s16),
            color: ColorManager.white),
        child: ListTile(
          leading: getTomatoWidget(data.svgPath),
          title: Text(
            data.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          subtitle: Text(
            "${data.date}    ${data.kg}",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(color: ColorManager.secondary),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getContolItems(ImageAssets.edit, ColorManager.secondary),
              getContolItems(ImageAssets.delet, ColorManager.error)
            ],
          ),
        ),
      ),
    );
  }

  Container getContolItems(String path, Color color) {
    return Container(
      height: AppSize.s25,
      width: AppSize.s25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s25), color: color),
      child: SvgPicture.asset(path),
    );
  }

  SizedBox getTomatoWidget(String path) {
    return SizedBox(
        width: AppSize.s55,
        height: AppSize.s55,
        child: Stack(alignment: AlignmentDirectional.center, children: [
          Container(
            decoration: BoxDecoration(
                color: ColorManager.secondary.withOpacity(AppSize.s0_5),
                borderRadius: BorderRadius.circular(AppSize.s50)),
          ),
          SvgPicture.asset(path),
        ]));
  }
}
