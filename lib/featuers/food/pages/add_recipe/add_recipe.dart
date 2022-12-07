import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/widgets/button.dart';
import 'package:food_app/featuers/widgets/input_text_fild.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class AddRecipeView extends StatelessWidget {
  const AddRecipeView({super.key});
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> checkBoxe = ValueNotifier<bool>(true);

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: AppSize.s10,
          ),
          SizedBox(
              height: AppSize.s50,
              child: CatogeryList(catogeryList: const [
                StringManager.pastries,
                StringManager.soups,
                StringManager.grills,
              ], onTap: (index) {}, isAddCatogry: true)),
          const SizedBox(
            height: AppSize.s10,
          ),
          getImageRecipesSelector(),
          getNameInput(),
          getIngredentsWidget(context),
          getDetalsInput(),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPading.p16, vertical: AppPading.p14),
            child: Row(children: [
              Container(
                  height: AppSize.s50,
                  width: AppSize.s50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.s14),
                      color: ColorManager.white),
                  child: ValueListenableBuilder(
                    valueListenable: checkBoxe,
                    builder: (context, value, child) {
                      return IconButton(
                          onPressed: () {
                            checkBoxe.value = !value;
                          },
                          icon: Icon(
                            Icons.done,
                            color: value
                                ? ColorManager.secondary
                                : ColorManager.white,
                          ));
                    },
                  )),
              const SizedBox(
                width: AppSize.s4,
              ),
              Text(
                StringManager.shareRecipeWithCommunity,
                style: Theme.of(context).textTheme.titleLarge,
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPading.p16),
            child: MyButton(name: StringManager.procced),
          ),
          const SizedBox(
            height: AppSize.s30,
          )
        ],
      ),
    );
  }

  Padding getIngredentsWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppPading.p12),
      child: Container(
        alignment: Alignment.center,
        height: AppSize.s80,
        width: AppSize.s350,
        decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(AppSize.s25)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPading.p16, vertical: AppPading.p14),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              StringManager.ingredients,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: AppSize.s8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getIngredinentsItem(context, StringManager.tomato),
                getIngredinentsItem(context, StringManager.pepper),
                getIngredinentsItem(context, StringManager.corn),
              ],
            )
          ]),
        ),
      ),
    );
  }

  Container getIngredinentsItem(BuildContext context, String name) {
    return Container(
        alignment: Alignment.center,
        height: AppSize.s25,
        width: AppSize.s80,
        decoration: BoxDecoration(
            color: ColorManager.secondary,
            borderRadius: BorderRadius.circular(AppSize.s25)),
        child: Text(
          name,
          style: Theme.of(context).textTheme.bodyLarge!.apply(
                color: ColorManager.white,
              ),
        ));
  }

  Padding getDetalsInput() {
    return Padding(
      padding: const EdgeInsets.only(
          right: AppPading.p12, top: AppPading.p12, left: AppPading.p12),
      child: MyTextFilde(
        onChanged: (p0) {},
        hint: StringManager.details,
        hight: AppSize.s90,
      ),
    );
  }

  Padding getNameInput() {
    return Padding(
      padding: const EdgeInsets.only(
          right: AppPading.p12, top: AppPading.p12, left: AppPading.p12),
      child: MyTextFilde(onChanged: (p0) {}, hint: StringManager.name),
    );
  }

  SizedBox getImageRecipesSelector() {
    return SizedBox(
      width: AppSize.s250,
      height: AppSize.s250,
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s250),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageAssets.newPost),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: AppPading.p14),
            child: Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: ColorManager.secondary,
                child: const Icon(Icons.add),
              ),
            ),
          )
        ],
      ),
    );
  }
}
