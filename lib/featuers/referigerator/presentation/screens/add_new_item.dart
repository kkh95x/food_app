// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/core/app/screens/app_screen.dart';
import 'package:food_app/core/resource/string_manager.dart';

import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/referigerator/presentation/controller/referigerator_controller.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';
import 'package:food_app/featuers/widgets/show_dialog.dart';

import 'package:food_app/featuers/widgets/title_text_widget.dart';
import 'package:food_app/featuers/referigerator/presentation/components/form_add_new_item_component.dart';
import 'package:food_app/featuers/referigerator/presentation/components/list_catogery_h_component.dart';

class AddItemsScreen extends StatelessWidget {
  AddItemsScreen({super.key});
  final _formKey = GlobalKey<FormState>();
   String catogery = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPading.p12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TitleTextWidget(
                title: StringManager.addNewItems,
                subTitle: StringManager.addItemsToYourRefrigrator),
            const SizedBox(
              height: AppSize.s40,
            ),
            //list catogery
            ListOfCatogeryAddNewItemComponent(
              onTap: (String catory) {
                catogery = catory;
              },
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            Consumer(
              builder: (context, ref, child) {
                return FormeInputNewItemComponent(
                    formKey: _formKey,
                    onPressed:
                        (name, svgPath, kg, purchaseDate, expirationDate) {
                      if (_formKey.currentState!.validate()) {
                        ref
                            .read(referigeratorProvider.notifier)
                            .createReferigerator(name, svgPath, kg,
                                purchaseDate, expirationDate,catogery);

                        ref
                            .read(indexPageBottomNavigationProvider.notifier)
                            .state = 0;
                      }
                    });
              },
            ),
            const SizedBox(
              height: AppSize.s30,
            ),
          ],
        ),
      ),
    );
  }
}
