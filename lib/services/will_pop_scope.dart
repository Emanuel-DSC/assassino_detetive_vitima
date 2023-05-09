import 'package:assassino_detetive_vitima/services/open_dialog.dart';

Future<bool> onWillPop(context) async {
  return (await openExitDialog(context));
}
