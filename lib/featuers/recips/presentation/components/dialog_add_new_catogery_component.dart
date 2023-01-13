import 'package:flutter/material.dart';

import 'package:food_app/core/resource/string_manager.dart';
import 'package:food_app/featuers/widgets/button.dart';
import 'package:food_app/featuers/widgets/input_text_fild.dart';

class ShowDialogTextfilde extends StatelessWidget {
  const ShowDialogTextfilde({super.key, required this.onPressed});
  final void Function(String?) onPressed;

  @override
  Widget build(BuildContext context) {
    String? name;
    final formKey = GlobalKey<FormState>();
    return AlertDialog(
      actions: [
        Form(
          key: formKey,
          child: Column(
            children: [
              MyTextFilde(
                  onChanged: (p0) {
                    name = p0;
                  },
                  hint: StringManager.addNewCatogery),
              MyButton(
                name: StringManager.add,
                onPressed: () {
                  if(formKey.currentState?.validate()??false){  
                    onPressed(name);
                    }
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
