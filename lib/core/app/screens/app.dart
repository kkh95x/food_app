import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/app/model/icon_data.dart';
import 'package:food_app/core/app/model/screen_data.dart';
import 'package:food_app/core/app/widgets/bottom_navigation_bar.dart';

import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/theme_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _curentIdexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorManager.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          setState(() {
            _curentIdexPage = 4;
          });
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
                Expanded(child: listScreens[_curentIdexPage]),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _curentIdexPage,
        onTap: (p0) {
          setState(() {
            _curentIdexPage = p0;
          });
        },
      ),
    );
  }
}
