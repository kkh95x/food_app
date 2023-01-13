// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';

class MyTextFilde extends StatelessWidget {
  MyTextFilde({
    Key? key,
    required this.onChanged,
    required this.hint,
    this.width,
    this.hight,
     this.validator
  }) : super(key: key);
  void Function(String) onChanged;
  final String hint;
  final double? width;
  final double? hight;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight ?? AppSize.s56,
      decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSize.s16)),
      child: TextFormField(
        validator: validator??(value) {
          if (value == null || value.isEmpty) {
            return StringManager.pleaseEnterSomeText;
          }
          return null;
        },
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: Theme.of(context).textTheme.bodyLarge,
            border: OutlineInputBorder(
                borderSide:
                    const BorderSide(style: BorderStyle.none, width: 0.0),
                borderRadius: BorderRadius.circular(30))),
        onChanged: onChanged,
      ),
    );
  }
}
