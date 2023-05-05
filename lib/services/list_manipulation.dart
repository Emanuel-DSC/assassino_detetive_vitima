import 'package:assassino_detetive_vitima/pages/game.dart';
import 'package:assassino_detetive_vitima/pages/home.dart';
import 'package:flutter/material.dart';

String roles = '';
String supportRoles = '';
List supportList = [];
List mainList = [];

void add() {
  for (int i = 0; i < HomePage.players - 2; i++) {
    mainList.add('vitima');
  }
  mainList.add('detetive');
  mainList.add('assassino');
}

void raffle(context) {
  supportRoles = (mainList..shuffle()).last;
  supportList.add(supportRoles);
  roles = supportRoles;
  mainList.remove(supportRoles);

  if (mainList.isEmpty) {
    Game.buttonText = 'Reiniciar';
  } else {
    Game.buttonText = 'Confirmar';
  }
}

void reset(context) {
  roles = '';
  supportRoles = '';
  supportList = [];
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const HomePage()));
}
