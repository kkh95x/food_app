import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/recips/presentation/controller/recipes_controller.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class RecipesListOfCatogeryComponent extends ConsumerWidget {
  const RecipesListOfCatogeryComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipsProvider = ref.watch(recipProvider);
    return 
    FutureBuilder(
      future: recipsProvider.getCatogeryList(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CatogeryList(
            isAddCatogry: false,
            onTap: (p0) {
              

           },
            catogeryList: snapshot.data!,
           );
          
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
