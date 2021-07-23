import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
//usar singletoe
  static AppController instance = AppController();

  //é tipo um set state, mas para a programação somente
  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    //chamar a funcao q vai notifiar quem tiver escutando
    notifyListeners();
  }
}
