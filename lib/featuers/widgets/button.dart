import 'package:flutter/material.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {required this.name,
      this.hight,
      this.width,
      super.key,
      this.btnColor,
      this.onPressed});
  double? hight;
  double? width;
  String name;
  Color? btnColor;
  Color? txtColor;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: btnColor ?? ColorManager.buttonColorDark,
            borderRadius: BorderRadius.circular(AppSize.s16)),
        width: width,
        height: hight ?? AppSize.s50,
        child: Text(
          name,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .apply(color: ColorManager.white),
        ),
      ),
    );
  }
}
