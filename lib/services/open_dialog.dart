import 'package:assassino_detetive_vitima/constants.dart';
import 'package:assassino_detetive_vitima/services/list_manipulation.dart';
import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../widgets/my_alert_dialog.dart';

openGameDialog(context) {
  return showDialog(
    context: context,
    builder: (context) {
      return MyAlertDialog(
        onTap: () {
          reset(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        onTap2: () {
          Navigator.of(context).pop();
        },
        contentText: kAlertContentText,
      );
    },
  );
}

openExitDialog(context) {
  return showDialog(
    context: context,
    builder: (context) {
      return MyAlertDialog(
        onTap: () {
          Navigator.of(context).pop(true);
        },
        onTap2: () {
          Navigator.of(context).pop(false);
        },
        contentText: kAlertContentText2,
      );
    },
  );
}
