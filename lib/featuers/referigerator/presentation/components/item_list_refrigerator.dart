import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/app/screens/app_screen.dart';
import 'package:food_app/featuers/referigerator/presentation/controller/referigerator_controller.dart';
import 'package:food_app/featuers/widgets/show_dialog.dart';
import 'package:intl/intl.dart';

import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/referigerator/domain/referigerator_model.dart';

class RefrigeratorItemWidget extends ConsumerWidget {
  const RefrigeratorItemWidget({super.key, required this.data});
  final RefrigeratorModel data;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPading.p8),
      child: Container(
        height: AppSize.s75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s16),
            color: ColorManager.white),
        child: ListTile(
          leading: getTomatoWidget(ImageAssets.tomato),
          title: Text(
            data.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          subtitle: Text(
            "${daysBetween(DateTime.now(), convertFromStrToDate(data.expirationDate))} daye ${data.kg} Kg",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(color: ColorManager.secondary),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getContolItems(ImageAssets.edit, ColorManager.secondary, () {}),
              getContolItems(
                ImageAssets.delet,
                ColorManager.error,
                () {
                  showFakeAlertDialog(
                    context,
                    "Delete this item?",
                    () {
                      if (data.id != null) {
                        ref.read(referigeratorProvider).deleteById(data.id!);
                        ref
                            .read(indexPageBottomNavigationProvider.notifier)
                            .state = 5;
                      }
                      Navigator.of(context).pop();
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  DateTime convertFromStrToDate(String date) {
    return DateFormat('d/M/y').parse(date);
  }

  int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  Widget getContolItems(String path, Color color, void Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: AppSize.s25,
        width: AppSize.s25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s25), color: color),
        child: SvgPicture.asset(path),
      ),
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
