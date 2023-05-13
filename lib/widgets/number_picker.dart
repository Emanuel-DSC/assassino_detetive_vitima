import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../constants.dart';
import '../pages/home.dart';

class PlayersNumber extends StatefulWidget {
  const PlayersNumber({
    super.key,
  });

  @override
  State<PlayersNumber> createState() => _PlayersNumberState();
}

class _PlayersNumberState extends State<PlayersNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
    );
  }
}
