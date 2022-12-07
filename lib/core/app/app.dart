import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/app/icon_data.dart';
import 'package:food_app/core/app/screen_data.dart';

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
                const SizedBox(
                  height: AppSize.s8,
                ),
                Text(
                  listScreens[_curentIdexPage].title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  listScreens[_curentIdexPage].subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: ColorManager.secondary),
                ),
                Expanded(child: listScreens[_curentIdexPage].screenWidget),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: getBottomNavigationBar(
        currentIndex: _curentIdexPage,
        onTap: (p0) {
          _curentIdexPage = p0;
          _curentIdexPage = p0;

          setState(() {});
        },
      ),
    );
  }

  Widget getBottomNavigationBar(
      {required int currentIndex, required void Function(int) onTap}) {
    return SizedBox(
      height: AppSize.s75,
      child: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        notchMargin: 4,
        elevation: 6.0,
        color: ColorManager.tertiary,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //create 4 Bottom Items custom Icons
            const SizedBox(
              width: 4,
            ),
            InkWell(
              onTap: currentIndex != 0
                  ? () {
                      onTap(0);
                    }
                  : null,
              child: getBottomNavigaionItem(0, 0 == currentIndex),
            ),

            InkWell(
                onTap: currentIndex != 1
                    ? () {
                        onTap(1);
                      }
                    : null,
                child: getBottomNavigaionItem(1, 1 == currentIndex)),
            const SizedBox(
              width: 60,
            ),
            InkWell(
                onTap: currentIndex != 2
                    ? () {
                        onTap(2);
                      }
                    : null,
                child: getBottomNavigaionItem(2, 2 == currentIndex)),
            InkWell(
                onTap: currentIndex != 3
                    ? () {
                        onTap(3);
                      }
                    : null,
                child: getBottomNavigaionItem(3, 3 == currentIndex)),
            const SizedBox(
              width: 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget getBottomNavigaionItem(
    int i,
    bool isSelected,
  ) {
    return SizedBox(
      height: AppSize.s50,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SvgPicture.asset(isSelected
            ? listIconDataBottomNavigationBar[i].onSelected
            : listIconDataBottomNavigationBar[i].notSelected),
        Text(listIconDataBottomNavigationBar[i].name,
            style: isSelected
                ? Theme.of(context).textTheme.labelSmall
                : Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .apply(color: ColorManager.white))
      ]),
    );
  }
}
