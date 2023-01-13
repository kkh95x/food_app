import 'package:flutter/material.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';

class IngredientComponent extends StatefulWidget {
  IngredientComponent(
      {super.key,
      required this.name,
      required this.onTapAdd,
      required this.onTapDelete});
  String name;
  void Function(String) onTapAdd;
  void Function(String) onTapDelete;

  @override
  State<IngredientComponent> createState() => _IngredientComponentState();
}

class _IngredientComponentState extends State<IngredientComponent> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          isChecked
              ? widget.onTapAdd(widget.name)
              : widget.onTapDelete(widget.name);
        });
      },
      child: Container(
          alignment: Alignment.center,
          height: AppSize.s25,
          width: AppSize.s80,
          decoration: BoxDecoration(
              color: isChecked ? ColorManager.secondary : ColorManager.white,
              borderRadius: BorderRadius.circular(AppSize.s25)),
          child: Text(
            widget.name,
            style: Theme.of(context).textTheme.bodyLarge!.apply(
                  color:
                      isChecked ? ColorManager.white : ColorManager.secondary,
                ),
          )),
    );
  }
}
