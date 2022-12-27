import 'package:flutter/material.dart';

import 'package:food_app/core/resource/color_manager.dart';
import 'package:food_app/core/resource/values_manager.dart';

class CatogeryList extends StatelessWidget {
  final bool isAddCatogry;
  final List<String> catogeryList;
  CatogeryList(
      {Key? key,
      required this.catogeryList,
      required this.onTap,
      required this.isAddCatogry})
      : super(key: key);

  void Function(int index) onTap;
  final ValueNotifier<int> _curentIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _curentIndex,
      builder: (context, value, child) {
        return ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return index < catogeryList.length
                ? getItem(
                    catogeryList[index], index == _curentIndex.value, context,
                    (index) {
                    onTap(index);
                    _curentIndex.value = index;
                  }, index)
                : getItemAdd(context);
          },
          itemCount: catogeryList.length + (isAddCatogry ? 1 : 0),
          separatorBuilder: (context, index) => const SizedBox(
            width: AppSize.s4,
          ),
        );
      },
    );
  }

  Widget getItem(String name, bool isSelected, BuildContext context,
      void Function(int index) onTap, int index) {
    return InkWell(
      onTap: () {
        onTap(index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppPading.p18),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isSelected ? ColorManager.secondary : ColorManager.white,
            borderRadius: BorderRadius.circular(AppSize.s25)),
        child: Text(
          name,
          style: Theme.of(context).textTheme.bodyLarge!.apply(
              color: isSelected ? ColorManager.white : ColorManager.black),
        ),
      ),
    );
  }

  Widget getItemAdd(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPading.p18),
          alignment: Alignment.center,
          height: AppSize.s50,
          decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(AppSize.s60)),
          child: const Icon(
            Icons.add,
          )),
    );
  }
}
