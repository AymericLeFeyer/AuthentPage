import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Time {
  static final int cardTransition = 200;
  static final int backgroundTransition = 3000;
}

class Colors {
  static final Color backgroundColor = Color.fromRGBO(255, 255, 255, 1);
}

class AppRadius {
  static final Radius backgroundRadius = Radius.circular(50);
}

class Images {
  static final List<String> background = [
    'assets/background/blue.jpeg',
    'assets/background/green.jpg',
    'assets/background/pink.jpg',
  ];
}

class Size {
  static final double width = Get.width;
  static final double height = Get.height;
}
