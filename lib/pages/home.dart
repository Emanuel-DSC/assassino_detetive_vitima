import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _TimerPickerState();
}

class _TimerPickerState extends State<HomePage> {
  int players = 4;

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
                    value: players,
                    zeroPad: true,
                    infiniteLoop: true,
                    itemWidth: 80,
                    itemHeight: 60,
                    onChanged: (value) {
                      setState(() {
                        players = value;
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
            GestureDetector(
                onTap: () {},
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
                )),
          ],
        ),
      ),
    );
  }
}
