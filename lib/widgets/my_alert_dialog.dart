import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

// ignore: must_be_immutable
class MyAlertDialog extends StatelessWidget {
  VoidCallback onTap;
  VoidCallback onTap2;
  String contentText;

  MyAlertDialog({
    Key? key,
    required this.onTap,
    required this.onTap2,
    required this.contentText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(kAlertTitleText.toUpperCase(),
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.bold)),
      content:
          Text(contentText, style: GoogleFonts.lato(color: Colors.white)),
      actions: [
        TextButton(
          onPressed: onTap,
          child: Text(kAlertPositiveText,
              style: GoogleFonts.lato(color: Colors.white)),
        ),
        TextButton(
          onPressed: onTap2,
          child: Text(kAlertNegativeText,
              style: GoogleFonts.lato(color: Colors.white)),
        ),
      ],
      elevation: 10,
      backgroundColor: kAlertDialogColor,
    );
  }
}
