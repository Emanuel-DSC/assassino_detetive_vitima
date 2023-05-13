import 'package:assassino_detetive_vitima/pages/game.dart';
import 'package:assassino_detetive_vitima/services/list_manipulation.dart';
import 'package:assassino_detetive_vitima/services/will_pop_scope.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import '../widgets/my_button.dart';
import '../widgets/number_picker.dart';
import 'tutorial.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static int players = 4;

  @override
  State<HomePage> createState() => _TimerPickerState();
}

class _TimerPickerState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onWillPop(context),
      child: Scaffold(
        backgroundColor: kBgColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(kHomeText1,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontSize: 22,
                    color: kLightColor,
                    fontWeight: FontWeight.bold,
                  )),
              const PlayersNumber(),
              MyButton(
                text: 'Jogar',
                onTap: () {
                  add();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Game()));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(kGameText2,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: kLightColor,
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tutorial()));
                    },
                    child: Text(kGameText3,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          color: kAccentColor,
                          fontWeight: FontWeight.w700
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

