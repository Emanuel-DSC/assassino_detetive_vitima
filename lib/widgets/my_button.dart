import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class MyButton extends StatelessWidget {

  final VoidCallback onTap;

  const MyButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: kAccentColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text('jogar'.toUpperCase(),
              style: GoogleFonts.lato(
                fontSize: 16,
                color: kBgColor,
                fontWeight: FontWeight.bold,
              )),
        ));
  }
}
