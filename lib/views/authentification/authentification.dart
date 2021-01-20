import 'dart:async';

import 'package:authentPage/views/authentification/components/cardFrame.dart';
import 'package:authentPage/views/authentification/components/imageSlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthentPage extends StatefulWidget {
  @override
  _AuthentPageState createState() => _AuthentPageState();
}

class _AuthentPageState extends State<AuthentPage> {
  Timer _timer;
  bool show = false;
  String state;

  @override
  void initState() {
    state = "authent";
    _timer = new Timer(Duration(milliseconds: 1500), handleTimeout);
    super.initState();
  }

  void handleTimeout() {
    setState(() {
      show = true;
    });
    _timer.cancel();
  }

  void changeScreen(String state) {
    setState(() {
      show = false;
      _timer = new Timer(Duration(milliseconds: 200), () {
        setState(() {
          this.state = state;
          show = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              changeScreen(this.state == "authent" ? "Coucou" : "authent");
            });
          },
        ),
        body: Stack(
          children: [
            ImageSlider(),
            CardFrame(show: show, state: state),
          ],
        ));
  }
}
