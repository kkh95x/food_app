import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/app/model/icon_data.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.currentIndex, required this.onTap});
  final int currentIndex;

  final void Function(int) onTap;
  @override
  Widget build(BuildContext context) {
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
              child: getBottomNavigaionItem(0, 0 == currentIndex, context),
            ),

            InkWell(
                onTap: currentIndex != 1
                    ? () {
                        onTap(1);
                      }
                    : null,
                child: getBottomNavigaionItem(1, 1 == currentIndex, context)),
            const SizedBox(
              width: 60,
            ),
            InkWell(
                onTap: currentIndex != 2
                    ? () {
                        onTap(2);
                      }
                    : null,
                child: getBottomNavigaionItem(2, 2 == currentIndex, context)),
            InkWell(
                onTap: currentIndex != 3
                    ? () {
                        onTap(3);
                      }
                    : null,
                child: getBottomNavigaionItem(3, 3 == currentIndex, context)),
            const SizedBox(
              width: 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget getBottomNavigaionItem(int i, bool isSelected, BuildContext context) {
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
