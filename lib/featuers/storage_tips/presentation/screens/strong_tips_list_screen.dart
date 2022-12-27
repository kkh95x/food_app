import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/storage_tips/domain/tip_model.dart';
import 'package:food_app/featuers/storage_tips/presentation/components/catogery_list_tips_component.dart';
import 'package:food_app/featuers/storage_tips/presentation/components/input_search_tips_component.dart';
import 'package:food_app/featuers/storage_tips/presentation/components/item_for_list_tips_component.dart';
import 'package:food_app/featuers/storage_tips/presentation/controller/tips_controller.dart';
import 'package:food_app/featuers/widgets/title_text_widget.dart';

class StrogeTipsListScreen extends ConsumerWidget {
  const StrogeTipsListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const TitleTextWidget(
            title: StringManager.storageTips,
            subTitle: StringManager.listOfStorageTips),
        const SizedBox(
          height: AppSize.s10,
        ),
        const StrongTipsInputSearchComponent(),
        const SizedBox(
          height: AppSize.s10,
        ),
        const StrongTipsCatogeryListComponent(),
        Expanded(child: Consumer(
          builder: (context, ref, child) {
            return FutureBuilder(
                future: ref.watch(tipProvider).loadList(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<TipModel> tipsList = snapshot.data as List<TipModel>;
                    return ListView.separated(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPading.p8, vertical: AppPading.p12),
                        itemBuilder: (context, index) {
                          return TipIteamComponent(
                            description: tipsList[index].description,
                            title: tipsList[index].title,
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              height: AppSize.s17,
                            ),
                        itemCount: tipsList.length);
                  } else {
                    return const Center(
                      child: SizedBox(
                        height: AppSize.s30,
                        width: AppSize.s30,
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                });
          },
        ))
      ],
    );
  }
}
