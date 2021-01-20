import 'package:authentPage/tools/constants.dart' as cst;

import 'package:flutter/widgets.dart';

class MyTitle extends StatelessWidget {
  String title;

  MyTitle({Key key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: TextStyle(
          color: cst.Colors.titleColor,
          fontSize: cst.Font.titleFontSize,
          fontWeight: FontWeight.bold,
          letterSpacing: cst.Font.letterSpacing),
    );
  }
}
