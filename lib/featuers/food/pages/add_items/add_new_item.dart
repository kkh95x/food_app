import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/button.dart';
import 'package:food_app/featuers/widgets/input_text_fild.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class AddItemsView extends StatelessWidget {
  AddItemsView({super.key});
  int _curentIndexCatogery = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPading.p12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: AppSize.s40,
            ),
            //list catogery
            SizedBox(
                height: AppSize.s50,
                child: CatogeryList(
                  isAddCatogry: true,
                  catogeryList: const [
                    StringManager.groceries,
                    StringManager.dairyProducts,
                    StringManager.meatProducts
                  ],
                  onTap: (int index) {},
                )),
            const SizedBox(
              height: AppSize.s20,
            ),
            getNameCatogeryRow(),
            const SizedBox(
              height: AppSize.s20,
            ),

            getPurchaseDateRow(),
            const SizedBox(
              height: AppSize.s20,
            ),
            getQuntityUnitRow(),
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
                hight: AppSize.s160,
                onChanged: (p0) {},
                hint: StringManager.notes),
            const SizedBox(
              height: AppSize.s20,
            ),

            //btn
            MyButton(
              onPressed: () {
                print("prsed");
              },
              name: StringManager.procced,
              width: AppSize.s350,
            ),
            const SizedBox(
              height: AppSize.s100,
            ),
          ],
        ),
      ),
    );
  }

  Row getQuntityUnitRow() {
    return Row(
      children: [
        MyTextFilde(
          onChanged: ((p0) {}),
          hint: StringManager.quantity,
          width: AppSize.s170,
        ),
        const SizedBox(
          width: AppSize.s10,
        ),
        MyTextFilde(
          onChanged: ((p0) {}),
          hint: StringManager.unit,
          width: AppSize.s170,
        ),
      ],
    );
  }

  Row getPurchaseDateRow() {
    return Row(
      children: [
        MyTextFilde(
          onChanged: ((p0) {}),
          hint: StringManager.purchaseDate,
          width: AppSize.s170,
        ),
        const SizedBox(
          width: AppSize.s10,
        ),
        MyTextFilde(
          onChanged: ((p0) {}),
          hint: StringManager.expirationDate,
          width: AppSize.s170,
        )
      ],
    );
  }

  Row getNameCatogeryRow() {
    return Row(
      children: [
        getTomatoWidget(),
        const SizedBox(
          width: AppSize.s11,
        ),
        MyTextFilde(
          onChanged: (p0) {},
          hint: StringManager.name,
          hight: AppSize.s56,
          width: AppSize.s288,
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
