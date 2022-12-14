import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/button.dart';
import 'package:food_app/featuers/widgets/input_text_fild.dart';

class FormeInputNewItemComponent extends StatelessWidget {
  final void Function(String? name, String? svgPath, String? kg,
      String? purchaseDate, String? expirationDate) onPressed;
  const FormeInputNewItemComponent({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late String? name;
    late String svgPath = ImageAssets.tomato;
    late String? kg;
    late String? purchaseDate;
    late String? expirationDate;

    return Column(
      children: [
        Row(
          children: [
            getTomatoWidget(),
            const SizedBox(
              width: AppSize.s11,
            ),
            MyTextFilde(
              onChanged: (p0) {
                name = p0;
              },
              hint: StringManager.name,
              hight: AppSize.s56,
              width: AppSize.s288,
            )
          ],
        ),
        const SizedBox(
          height: AppSize.s20,
        ),
        Row(
          children: [
            MyTextFilde(
              onChanged: (p0) {
                purchaseDate = p0;
              },
              hint: StringManager.purchaseDate,
              width: AppSize.s170,
            ),
            const SizedBox(
              width: AppSize.s10,
            ),
            MyTextFilde(
              onChanged: (p0) {
                expirationDate = p0;
              },
              hint: StringManager.expirationDate,
              width: AppSize.s170,
            )
          ],
        ),
        const SizedBox(
          height: AppSize.s20,
        ),
        Row(
          children: [
            MyTextFilde(
              onChanged: (p0) {
                kg = p0;
              },
              hint: StringManager.quantity,
              width: AppSize.s170,
            ),
            const SizedBox(
              width: AppSize.s10,
            ),
            MyTextFilde(
              onChanged: (p0) {},
              hint: StringManager.unit,
              width: AppSize.s170,
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s20,
        ),
        MyTextFilde(
            width: AppSize.s350,
            onChanged: (p0) {},
            hint: StringManager.marketName),
        const SizedBox(
          height: AppSize.s20,
        ),
        //Note Text Fildes
        MyTextFilde(
            hight: AppSize.s160, onChanged: (p0) {}, hint: StringManager.notes),
        const SizedBox(
          height: AppSize.s20,
        ),
        MyButton(
          onPressed: () {
            onPressed(name, "", kg, purchaseDate, expirationDate);
          },
          name: StringManager.procced,
          width: AppSize.s350,
        )
      ],
    );
  }

  SizedBox getTomatoWidget() {
    return SizedBox(
        width: AppSize.s55,
        height: AppSize.s55,
        child: Stack(alignment: AlignmentDirectional.center, children: [
          Container(
            decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(AppSize.s50)),
          ),
          SvgPicture.asset(ImageAssets.tomato),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                width: AppSize.s14,
                height: AppSize.s14,
                decoration: BoxDecoration(
                    color: ColorManager.secondary,
                    borderRadius: BorderRadius.circular(AppSize.s11)),
                child: const Icon(
                  size: AppSize.s14,
                  Icons.add,
                  color: ColorManager.white,
                )),
          )
        ]));
  }
}
