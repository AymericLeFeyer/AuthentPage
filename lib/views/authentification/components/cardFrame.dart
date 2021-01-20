import 'package:authentPage/tools/constants.dart' as cst;
import 'package:authentPage/views/authentification/components/backContent.dart';
import 'package:authentPage/views/authentification/components/loginContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardFrame extends StatelessWidget {
  // Params
  bool show;
  int state;

  CardFrame({Key key, this.show, this.state});

  // Variables
  final height = cst.Size.height * 2 / 3;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: cst.Time.cardTransition),
      bottom: show ? 0 : -height,
      child: Container(
        width: cst.Size.width,
        height: height,
        decoration: BoxDecoration(
            border: Border.all(
              color: cst.Colors.backgroundColor,
            ),
            color: cst.Colors.backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: cst.AppRadius.backgroundRadius,
                topRight: cst.AppRadius.backgroundRadius)),
        child: Container(
          child: this.state == 0 ? LoginContent() : BackContent(),
        ),
      ),
    );
  }
}
