import 'package:assassino_detetive_vitima/pages/game.dart';
import 'package:assassino_detetive_vitima/pages/home.dart';
import 'package:assassino_detetive_vitima/widgets/my_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

String roles = '';
String supportRoles = '';
List supportList = [];
List mainList = [];
String imgRole = 'assets/detective.png';

void add() {
  for (int i = 0; i < HomePage.players - 2; i++) {
    mainList.add('vítima');
  }
  mainList.add('detetive');
  mainList.add('assassino');
}

void raffle(context) async {
  supportRoles = (mainList..shuffle()).last;

  if (supportRoles == 'vítima') {
    imgRole = 'assets/victim.png';
  } else if (supportRoles == 'assassino') {
    imgRole = 'assets/murderer.png';
  } else {
    imgRole = 'assets/detective.png';
  }

  supportList.add(supportRoles);
  roles = supportRoles;
  mainList.remove(supportRoles);

  if (mainList.isEmpty) {
    Game.buttonText = kButtonText3;
    MyButton.buttonColor = kResetColor;
    kGameText = 'Todos prontos \n Inicie a rodada';
  }
}

void reset(context) {
  roles = '';
  supportRoles = '';
  supportList = [];
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const HomePage()));
  Game.buttonText = kButtonText2;
  Game.isVisible = false;
  MyButton.buttonColor = kAccentColor;
  kGameText = 'Passe o celular\npara o próximo jogador';

}
