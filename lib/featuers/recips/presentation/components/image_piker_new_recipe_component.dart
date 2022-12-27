import 'dart:io';

import 'package:flutter/material.dart';

import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:image_picker/image_picker.dart';

class ImageNewRecipeComponent extends StatefulWidget {
  const ImageNewRecipeComponent({super.key, required this.onPressed});
  final void Function(String? imageSelected) onPressed;

  @override
  State<ImageNewRecipeComponent> createState() =>
      _ImageNewRecipeComponentState();
}

class _ImageNewRecipeComponentState extends State<ImageNewRecipeComponent> {
  File? file;

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
            image: file != null
                ? DecorationImage(fit: BoxFit.cover, image: FileImage(file!))
                : const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(ImageAssets.newPost)),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: AppPading.p14),
            child: Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: FloatingActionButton(
                onPressed: () async {
                  final image = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    file = File(image.path);
                    widget.onPressed(image.path);
                    setState(() {});
                  }
                },
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
