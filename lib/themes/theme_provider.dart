import 'package:flutter/material.dart';
import 'package:musicapp/themes/dark_mode.dart';
import 'package:musicapp/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier{
  //initially light mode
  ThemeData _themeData = lightMode;
  // get theme
  ThemeData get themeData => _themeData;
  // is dark mode
  bool get isDarkMode => _themeData == darkMode;
  // set mode
  set themeData(ThemeData themeData){
    _themeData = themeData;

    //updating list
    notifyListeners();
  }
  //toggle theme
  void toggleTheme(){
    if(_themeData == lightMode){
      themeData = darkMode;
    }else{
      themeData = lightMode;
    }
  }
}