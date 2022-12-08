import 'package:flutter/material.dart';

import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';

class ImageNewRecipe extends StatelessWidget {
  const ImageNewRecipe({super.key});

  @override
  Widget build(BuildContext context) {
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
