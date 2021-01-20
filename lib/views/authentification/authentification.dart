import 'dart:async';

import 'package:authentPage/tools/constants.dart';
import 'package:authentPage/views/authentification/components/cardFrame.dart';
import 'package:authentPage/views/authentification/components/imageSlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthentPage extends StatefulWidget {
  @override
  _AuthentPageState createState() => _AuthentPageState();
}

class _AuthentPageState extends State<AuthentPage> {
  Timer _timer;
  bool show = false;
  int state;

  @override
  void initState() {
    state = 0;
    _timer = new Timer(Duration(milliseconds: 1500), handleTimeout);
    super.initState();
  }

  void handleTimeout() {
    setState(() {
      show = true;
    });
    _timer.cancel();
  }

  void changeScreen() {
    setState(() {
      show = false;
      _timer = new Timer(Duration(milliseconds: Time.cardTransition), () {
        setState(() {
          this.state = (this.state + 1) % 2;
          show = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          ImageSlider(),
          CardFrame(show: show, state: state, changeScreen: changeScreen),
        ],
      ),
    ));
  }
}
