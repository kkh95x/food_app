import 'package:flutter/material.dart';

//disgin it latter
showFakeAlertDialog(BuildContext context, String message,
    [void Function()? onPressed]) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: onPressed ??
        () {
          Navigator.pop(context);
        },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Worning"),
    content: Text(message),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
