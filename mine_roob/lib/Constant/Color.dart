import 'package:flutter/material.dart';

class MyColor {
  // ! /////////////////// Light Color

  static Color primeryColor = const Color.fromARGB(255, 9, 25, 195);
  static Color textColorAmber = Colors.amberAccent;
  static Color drawerTextColor = Colors.yellow[800]!;
  static Color iconColorWhite = Colors.white;
  static Color textColorBlack = Colors.black;
  static Color backgroundColorHomePage = Colors.black12;
  static Color textColorBlack87 = Colors.black87;
  static Color textColorBlack54 = Colors.black54;
  static Color backgroundColorTransparent = Colors.transparent;
  static Color boxGrey = Colors.grey;
  static Color completeIndex = const Color.fromARGB(255, 75, 203, 77);
  static Color unCompleteColor = const Color.fromARGB(255, 255, 17, 0);
  static const List<Color> primaryGradientColor = [
    Color(0xff4568dc),
    Color(0xffb06ab3),
    // Color.fromARGB(255, 9, 25, 195),
  ];

  // ! /////////////////// Dark Color
  static Color primeryColorDark = const Color.fromARGB(255, 47, 0, 95);
  static const List<Color> primaryGradientColorDark = [
    Color.fromARGB(80, 38, 0, 255),
    Color.fromARGB(80, 255, 0, 0),
  ];
  static Color textColorYellowDark = const Color.fromARGB(255, 215, 195, 15);
  static Color backgroundColorHomePageDark =
      const Color.fromARGB(255, 150, 54, 118);
}
