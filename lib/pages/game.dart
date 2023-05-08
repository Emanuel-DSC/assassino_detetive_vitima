import 'package:assassino_detetive_vitima/constants.dart';
import 'package:assassino_detetive_vitima/services/list_manipulation.dart';
import 'package:assassino_detetive_vitima/services/open_dialog.dart';
import 'package:assassino_detetive_vitima/services/raffle_visibility.dart';
import 'package:assassino_detetive_vitima/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  static String buttonText = 'Revelar';
  static bool isVisible = false;

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: const Icon(LineAwesomeIcons.angle_left),
            onPressed: () {
              openDialog(context);
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            opacity: Game.isVisible ? 1 : 0,
            child: Center(
              child: Text(roles.toString().toUpperCase(),
                  style: GoogleFonts.lato(
                    fontSize: 22,
                    color: kLightColor,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            opacity: Game.isVisible ? 1 : 0,
            child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(imgRole)),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            opacity: Game.isVisible ? 1 : 0,
            child: Center(
                child: Text(kGameText.toString(),
                textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      fontSize: 22,
                      color: kLightColor,
                      fontWeight: FontWeight.bold,
                    )),
              ),
          ),
          Center(
            child: MyButton(
                text: Game.buttonText,
                onTap: () {
                  setState(() {
                    if (mainList.isEmpty) {
                      reset(context);
                    } else {
                      visible(context);
                    }
                  });
                }),
          ),
        ]),
      ),
    );
  }
}
