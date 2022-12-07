import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/resource/assest_manager.dart';
import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';
import 'package:food_app/featuers/food/model/post_model.dart';
import 'package:food_app/featuers/food/pages/add_recipe/add_recipe.dart';
import 'package:food_app/featuers/widgets/input_searche.dart';
import 'package:food_app/featuers/widgets/list_catogery.dart';

class RecipesView extends StatefulWidget {
  const RecipesView({super.key});

  @override
  State<RecipesView> createState() => _RecipesViewState();
}

class _RecipesViewState extends State<RecipesView> {
  int _cureentIndex = 0;
  List<Widget> listPage = const [RecipesHomeView(), AddRecipeView()];
  @override
  void initState() {
    _cureentIndex = 0;
    super.initState();
  }

  @override
  void deactivate() {
    _cureentIndex = 0;
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        listPage[_cureentIndex],
        Visibility(
            visible: _cureentIndex != 1,
            child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: const EdgeInsets.all(AppPading.p12),
                  child: FloatingActionButton(
                    backgroundColor: ColorManager.darkButton,
                    onPressed: () {
                      setState(() {
                        _cureentIndex = 1;
                      });
                    },
                    child: SvgPicture.asset(ImageAssets.addRecipes),
                  ),
                )))
      ],
    );
  }
}

class RecipesHomeView extends StatelessWidget {
  const RecipesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppPading.p8, right: AppPading.p8, top: AppPading.p24),
      child: Column(
        children: [
          const InputTextSearch(),
          const SizedBox(
            height: AppSize.s10,
          ),
          SizedBox(
            height: AppSize.s50,
            child: CatogeryList(catogeryList: const [
              StringManager.pastries,
              StringManager.soups,
              StringManager.grills,
              StringManager.all
            ], onTap: (index) {}, isAddCatogry: false),
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          SizedBox(
            height: AppSize.s400,
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  PostItem(postModel: listOfPotes[index]),
              itemCount: listOfPotes.length,
            ),
          )
        ],
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  final PostModel postModel;
  const PostItem({super.key, required this.postModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s500,
      decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSize.s14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getImagePost(),
          getContollerButtonPostRow(context),
          Padding(
            padding:
                const EdgeInsets.only(left: AppPading.p25, top: AppPading.p4),
            child: Text(
              postModel.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: AppPading.p25, top: AppPading.p4),
            child: Text(
              postModel.descrption,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(color: ColorManager.secondary),
            ),
          )
        ],
      ),
    );
  }

  Padding getImagePost() {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppPading.p25, right: AppPading.p25, top: AppPading.p25),
      child: SizedBox(
          height: AppSize.s350,
          width: AppSize.s350,
          child: Image.asset(
            postModel.pathImage,
          )),
    );
  }

  Padding getContollerButtonPostRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPading.p25),
      child: SizedBox(
        height: AppSize.s20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getSingleButtonPodt(ImageAssets.like, postModel.likes, context),
            getSingleButtonPodt(ImageAssets.comint, postModel.comment, context),
            getSingleButtonPodt(ImageAssets.share, postModel.share, context),
            const SizedBox(
              width: AppSize.s100,
            ),
            getSingleButtonPodt(ImageAssets.love, postModel.love, context),
          ],
        ),
      ),
    );
  }

  Widget getSingleButtonPodt(String path, String count, BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: SvgPicture.asset(path),
          onTap: () {
            //TODO impelemnt on tap here
          },
        ),
        const SizedBox(
          width: AppSize.s8,
        ),
        Text(
          count,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}