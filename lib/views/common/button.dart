import 'package:authentPage/tools/constants.dart' as cst;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  Function onPressed;
  String text;
  Color backgroundColor;
  Color textColor;
  Color splashColor;

  MyButton(
      {Key key,
      this.onPressed,
      this.text,
      this.backgroundColor,
      this.textColor,
      this.splashColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cst.Paddings.buttonPadding,
      child: ButtonTheme(
        minWidth: cst.Size.width,
        height: 50,
        child: RaisedButton(
          onPressed: onPressed,
          color: backgroundColor,
          splashColor: splashColor,
          shape:
              RoundedRectangleBorder(borderRadius: cst.AppRadius.buttonRadius),
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: cst.Font.bodyFontSize,
                letterSpacing: cst.Font.letterSpacing),
          ),
        ),
      ),
    );
  }
}
