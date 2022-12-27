import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/recips/presentation/controller/recipes_controller.dart';

import 'package:food_app/featuers/widgets/title_text_widget.dart';
import 'package:food_app/featuers/recips/presentation/components/input_search_recipes_component.dart';
import 'package:food_app/featuers/recips/presentation/components/list_catogery_recipes_component.dart';
import 'package:food_app/featuers/recips/presentation/components/post_item.dart';

class RecipesListScreen extends StatelessWidget {
  const RecipesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPading.p8,
        right: AppPading.p8,
      ),
      child: Column(
        children: [
          const TitleTextWidget(
              title: StringManager.recipes,
              subTitle: StringManager.listofSharedRecipes),
          const SizedBox(
            height: AppSize.s10,
          ),
          const RecipesInputSearchComponent(),
          const SizedBox(
            height: AppSize.s10,
          ),
          const RecipesListOfCatogeryComponent(),
          const SizedBox(
            height: AppSize.s10,
          ),
          Expanded(child: Consumer(
            builder: (context, ref, child) {
              return FutureBuilder(
                future: ref.watch(recipProvider).loadList(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final List = snapshot.data!;
                    return ListView.builder(
                      itemBuilder: (context, index) =>
                          RecipesPostItemComponent(postModel: List[index]),
                      itemCount: List.length,
                    );
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
            },
          ))
        ],
      ),
    );
  }
}
