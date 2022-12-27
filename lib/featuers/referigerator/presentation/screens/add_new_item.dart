// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/core/app/screens/app.dart';
import 'package:food_app/core/resource/string_manager.dart';

import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/referigerator/presentation/controller/referigerator_controller.dart';
import 'package:food_app/featuers/widgets/show_dialog.dart';

import 'package:food_app/featuers/widgets/title_text_widget.dart';
import 'package:food_app/featuers/referigerator/presentation/components/form_add_new_item_component.dart';
import 'package:food_app/featuers/referigerator/presentation/components/list_catogery_h_component.dart';

class AddItemsScreen extends StatelessWidget {
  const AddItemsScreen({super.key});
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
            const ListOfCatogeryAddNewItemComponent(),
            const SizedBox(
              height: AppSize.s20,
            ),
            Consumer(
              builder: (context, ref, child) {
                return FormeInputNewItemComponent(
                  onPressed: (name, svgPath, kg, purchaseDate, expirationDate) {
                    if (name != null &&
                        kg != null &&
                        expirationDate != null &&
                        purchaseDate != null) {
                      if (DateTime.tryParse(purchaseDate) != null &&
                          DateTime.tryParse(expirationDate) != null) {
                        ref
                            .read(referigeratorProvider.notifier)
                            .createReferigerator(name, svgPath, kg,
                                purchaseDate, expirationDate);

                        ref
                            .read(indexPageBottomNavigationProvider.notifier)
                            .state = 0;
                      } else {
                        showFakeAlertDialog(context,
                            "Purchase Date and Expiration Date: dd/mm/yyyy");
                      }
                    } else {
                      showFakeAlertDialog(context, "Enter name and date kvg");
                    }
                  },
                );
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
