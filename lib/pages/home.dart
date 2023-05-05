import 'package:assassino_detetive_vitima/pages/game.dart';
import 'package:assassino_detetive_vitima/services/list_manipulation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import '../constants.dart';
import '../widgets/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static int players = 4;

  @override
  State<HomePage> createState() => _TimerPickerState();
}

class _TimerPickerState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(kHomeText1,
                style: GoogleFonts.lato(
                  fontSize: 22,
                  color: kLightColor,
                  fontWeight: FontWeight.bold,
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberPicker(
                    axis: Axis.horizontal,
                    minValue: 4,
                    maxValue: 20,
                    value: HomePage.players,
                    zeroPad: true,
                    infiniteLoop: true,
                    itemWidth: 80,
                    itemHeight: 60,
                    onChanged: (value) {
                      setState(() {
                        HomePage.players = value;
                      });
                    },
                    textStyle:
                        const TextStyle(color: Colors.grey, fontSize: 20),
                    selectedTextStyle:
                        TextStyle(color: kAccentColor, fontSize: 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kLightColor,
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(
                              8.0) //                 <--- border radius here
                          ),
                    ),
                  ),
                ],
              ),
            ),
            MyButton(
              text: 'Jogar',
              onTap: () {
                add();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Game()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
