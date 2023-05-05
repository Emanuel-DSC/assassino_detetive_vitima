import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

// ignore: must_be_immutable
class MyAlertDialog extends StatelessWidget {
  VoidCallback onTap; 
  VoidCallback onTap2; 

  MyAlertDialog({
    Key? key,
    required this.onTap,
    required this.onTap2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(kAlertText1.toUpperCase(),
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.bold)),
      content: Text(kAlertText2, style: GoogleFonts.lato(color: Colors.white)),
      actions: [
        TextButton(
          onPressed: onTap,
          child: Text(kAlertText3,
              style: GoogleFonts.lato(color: Colors.white)),
        ),
        TextButton(
          onPressed: onTap2,
          child: Text(kAlertText4,
              style: GoogleFonts.lato(color: Colors.white)),
        ),
      ],
      elevation: 10,
      backgroundColor: kAlertDialogColor,
    );
  }
}