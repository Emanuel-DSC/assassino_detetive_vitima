import 'package:assassino_detetive_vitima/constants.dart';
import 'package:assassino_detetive_vitima/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/my_button.dart';

class Tutorial extends StatelessWidget {
  const Tutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(kTutorialText,
                textAlign: TextAlign.start,
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: kLightColor,
                )),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: RawScrollbar(
                thumbVisibility: true,
                thickness: 3.0,
                thumbColor: kAccentColor,
                radius: const Radius.circular(10),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(kTutorialText2,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.lato(
                          fontSize: 22,
                          color: kLightColor,
                        )),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            MyButton(
              text: 'Jogar',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
