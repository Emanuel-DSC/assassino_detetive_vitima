import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../widgets/my_alert_dialog.dart';

openDialog (context) {
return showDialog(
              context: context,
              builder: (context) {
                return MyAlertDialog(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  onTap2: () {
                    Navigator.of(context).pop();
                  },
                );
              },
            );
 }
 