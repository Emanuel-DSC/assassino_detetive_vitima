import 'package:assassino_detetive_vitima/pages/home.dart';

String roles = '';
String supportRoles = '';
List supportList = [];
List mainList = ['assassino', 'detetive'];

void raffle() {
  for (int i = 0; i < HomePage.players - 2; i++) {
    mainList.add('vitima');
  }
}
