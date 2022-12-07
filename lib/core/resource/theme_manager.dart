import 'package:flutter/material.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/font_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';

class AppTheme {
  AppTheme._();
  static ThemeData themeData = ThemeData(
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
  );

//Text Theme
  static const TextTheme textTheme = TextTheme(
      headlineSmall: headLineSmall, //1
      labelMedium: labelMedium, //2
      bodyLarge: bodyLarg, //3
      bodySmall: bodySmall, //4
      titleLarge: titleLarge, //5
      labelSmall: labelSmall, //6
      titleMedium: titleMeduim);

  //input Decoration theme
  static const InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.all(AppPading.p24),
    border: OutlineInputBorder(
        //borderSide: BorderSide(color: ColorManager.black, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s16))),
  );
  // 1
  static const TextStyle headLineSmall = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.bold,
    fontSize: FontSize.s24,
    color: ColorManager.black,
  );
// 2
  static const TextStyle labelMedium = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.medium,
    fontSize: FontSize.s12,
    color: ColorManager.black,
  );
  // 3
  static const TextStyle bodyLarg = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    fontSize: FontSize.s16,
    color: ColorManager.black,
  );
  // 4
  static const TextStyle bodySmall = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    fontSize: FontSize.s12,
    color: ColorManager.black,
  );
  // 5
  static const TextStyle titleLarge = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    fontSize: FontSize.s22,
    color: ColorManager.black,
  );
  // 6
  static const TextStyle labelSmall = TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontWeight: FontWeightManager.largBold,
      fontSize: FontSize.s12,
      color: ColorManager.black,
      letterSpacing: AppSize.s0_5);
  // 7
  static const TextStyle titleMeduim = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.bold,
    fontSize: FontSize.s16,
    color: ColorManager.black,
  );
}
