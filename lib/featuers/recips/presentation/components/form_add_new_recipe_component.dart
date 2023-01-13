import 'package:flutter/material.dart';

import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/recips/presentation/components/ingredient_form_add_component.dart';
import 'package:food_app/featuers/widgets/button.dart';
import 'package:food_app/featuers/widgets/input_text_fild.dart';

class FormAddNewRecipComponent extends StatelessWidget {
  const FormAddNewRecipComponent(
      {super.key, required this.onPressed, required this.formKey});
  final void Function(String? title, String? description) onPressed;
  final GlobalKey formKey;
  @override
  Widget build(BuildContext context) {
    String? title;
    String? description;
    ValueNotifier<bool> checkBoxe = ValueNotifier<bool>(true);

    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                right: AppPading.p12, top: AppPading.p12, left: AppPading.p12),
            child: MyTextFilde(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return StringManager.pleaseEnterSomeText;
                  }
                  return null;
                },
                onChanged: (p0) {
                  title = p0;
                },
                hint: StringManager.name),
          ),
          Padding(
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          IngredientComponent(
                            name: StringManager.tomato,
                            onTapAdd: (value) {
                              print("add$value");
                            },
                            onTapDelete: (value) {
                             print("delete$value");

                            },
                          ),
                          IngredientComponent(
                              name: StringManager.pepper,
                              onTapAdd: (value) {},
                              onTapDelete: (value) {}),
                          IngredientComponent(
                              name: StringManager.corn,
                              onTapAdd: (value) {},
                              onTapDelete: (value) {}),
                        ],
                      )
                    ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: AppPading.p12, top: AppPading.p12, left: AppPading.p12),
            child: MyTextFilde(
              onChanged: (p0) {
                description = p0;
              },
              hint: StringManager.details,
              hight: AppSize.s90,
            ),
          ),
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
            child: MyButton(
              name: StringManager.procced,
              onPressed: () {
                onPressed(title, description);
              },
            ),
          ),
          const SizedBox(
            height: AppSize.s30,
          )
        ],
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
}
