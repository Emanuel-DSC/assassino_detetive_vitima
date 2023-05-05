import 'package:assassino_detetive_vitima/pages/game.dart';
import 'package:assassino_detetive_vitima/services/list_manipulation.dart';

void visible(context) {
  if ( Game.isVisible == false) {
    Game.isVisible = true;
    Game.buttonText = 'Confirmar';
    raffle(context); 
  } else {
    Game.isVisible = false;
    Game.buttonText = 'Revelar';
  }
}
