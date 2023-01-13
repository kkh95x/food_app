import 'package:flutter/material.dart';
import 'package:food_app/featuers/widgets/input_searche.dart';

class RefrigeratorInputSearchComponent extends StatelessWidget {
  const RefrigeratorInputSearchComponent({super.key,required this.onChanged});
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return InputTextSearch(
      onChanged:onChanged,
    );
  }
}
