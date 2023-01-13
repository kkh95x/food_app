import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/referigerator/domain/referigerator_model.dart';
import 'package:food_app/featuers/referigerator/presentation/components/catogery_list_refriherator_component.dart';
import 'package:food_app/featuers/referigerator/presentation/components/input_text_search_refrigerator_component.dart';
import 'package:food_app/featuers/referigerator/presentation/components/item_list_refrigerator.dart';
import 'package:food_app/featuers/referigerator/presentation/controller/referigerator_controller.dart';

import 'package:food_app/featuers/widgets/title_text_widget.dart';

class MyRefrigeratorScreen extends ConsumerWidget {
  MyRefrigeratorScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final refProvider = ref.watch(referigeratorProvider);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPading.p5),
        child: Column(children: [
          const TitleTextWidget(
              title: StringManager.refrigerator,
              subTitle: StringManager.listOfItemsInMyRefrigerator),
          const SizedBox(
            height: AppSize.s25,
          ),
          RefrigeratorInputSearchComponent(
            onChanged: (String name) {
              refProvider.setsearchName = name;
            },
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          RefrigeratorCatogeryListComponent(
            onTap: (String catogery) {
              refProvider.setCatogery = catogery;
            },
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          SizedBox(
              height: AppSize.s500,
              child: Consumer(builder:
                  (BuildContext context, WidgetRef ref, Widget? child) {
                return FutureBuilder(
                  future: refProvider.loadList(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {

                      List<RefrigeratorModel> listreferigerators =
                          snapshot.data as List<RefrigeratorModel>;
                      return ListView.separated(
                          itemBuilder: (context, index) {
                            return RefrigeratorItemWidget(
                              data: listreferigerators[index],
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                                height: AppSize.s20,
                              ),
                          itemCount: listreferigerators.length);
                    } else {
                      return const Center(
                        child: SizedBox(
                          height: AppSize.s30,
                          width: AppSize.s30,
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                  },
                );
              }))
        ]),
      ),
    );
  }
}
