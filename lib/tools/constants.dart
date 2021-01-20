import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Theme {
  static final theme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    accentColor: Colors.red,

    // Define the default font family.
    fontFamily: 'Comfortaa',
  );
}

class Time {
  static final int cardTransition = 200;
  static final int backgroundTransition = 3000;
}

class Colors {
  static final Color white = Color.fromRGBO(255, 255, 255, 1);
  static final Color blue = Color.fromRGBO(0, 167, 221, 1);
  static final Color red = Color.fromRGBO(233, 49, 80, 1);

  static final Color backgroundColor = white;
  static final Color buttonTextColor = white;

  static final Color buttonConnectColor = blue;
  static final Color buttonConnectSplashColor = red;

  static final Color buttonRegisterColor = red;
  static final Color buttonRegisterSplashColor = blue;

  static final Color titleColor = red;
}

class AppRadius {
  static final Radius backgroundRadius = Radius.circular(50);
  static final BorderRadiusGeometry buttonRadius = BorderRadius.circular(30);
}

class Images {
  static final List<String> background = [
    'assets/background/canyon.jpg',
    'assets/background/city.jpg',
    'assets/background/mountain.jpg',
  ];
}

class Size {
  static final double width = Get.width;
  static final double height = Get.height;
}

class Font {
  static final double bodyFontSize = 20;
  static final double titleFontSize = 30;
  static final double letterSpacing = 0.3;
}

class Paddings {
  static final double loginPaddingValue = 32;
  static final EdgeInsets loginPadding =
      EdgeInsets.only(right: loginPaddingValue, left: loginPaddingValue);
  static final EdgeInsets titlePadding =
      EdgeInsets.only(top: loginPaddingValue, bottom: loginPaddingValue);
  static final EdgeInsets buttonPadding = EdgeInsets.all(
    loginPaddingValue,
  );
}
