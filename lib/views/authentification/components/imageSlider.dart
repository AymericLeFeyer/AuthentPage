import 'dart:async';

import 'package:authentPage/tools/constants.dart' as cst;
import 'package:flutter/widgets.dart';
import 'package:image_fade/image_fade.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  var _imgs = cst.Images.background;

  int _counter = 0;
  ImageProvider image;
  Timer _timer;

  void _incrementCounter() {
    setState(() {
      _counter = (_counter + 1) % _imgs.length;
      image = AssetImage(_imgs[_counter]);
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    _timer = new Timer(
        Duration(milliseconds: cst.Time.backgroundTransition), handleTimeout);
  }

  void handleTimeout() {
    _incrementCounter();
    _timer.cancel();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cst.Size.width,
      height: cst.Size.height,
      child: ImageFade(
        image: image,
        placeholder: Image.asset(
          _imgs[0],
          fit: BoxFit.cover,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
