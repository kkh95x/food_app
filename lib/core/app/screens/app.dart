import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/app/model/icon_data.dart';
import 'package:food_app/core/app/model/screen_data.dart';
import 'package:food_app/core/app/widgets/bottom_navigation_bar.dart';

import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/theme_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/recips/presentation/controller/recipes_controller.dart';
import 'package:food_app/featuers/referigerator/data/firebase_referigerator_repository.dart';
import 'package:food_app/featuers/storage_tips/presentation/controller/tips_controller.dart';

import '../../../featuers/referigerator/presentation/controller/referigerator_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      home: HomePage(),
    );
  }
}

final indexPageBottomNavigationProvider = StateProvider<int>((ref) {
  return 0;
});

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorManager.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (() async {
          ref.read(indexPageBottomNavigationProvider.notifier).state = 4;
        }),
        backgroundColor: ColorManager.secondary,
        child: const Icon(
          Icons.add,
          size: AppSize.s50,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageAssets.backgroundImage))),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                top: AppPading.p4, left: AppPading.p2, right: AppPading.p12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(ImageAssets.logo),
                    SvgPicture.asset(ImageAssets.notifaction)
                  ],
                ),
                Expanded(
                    child: listScreens[
                        ref.watch(indexPageBottomNavigationProvider)]),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: ref.watch(indexPageBottomNavigationProvider),
        onTap: (p0) {
          ref.read(indexPageBottomNavigationProvider.notifier).state = p0;
          ref.read(indexTipsProvider.notifier).state = 0;
          ref.read(indexPageProvider.notifier).state = 0;
        },
      ),
    );
  }
}
