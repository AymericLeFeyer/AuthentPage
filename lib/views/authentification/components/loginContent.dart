import 'package:authentPage/tools/constants.dart' as cst;

import 'package:authentPage/views/common/button.dart';
import 'package:authentPage/views/common/field.dart';
import 'package:authentPage/views/common/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginContent extends StatelessWidget {
  Function fct;
  LoginContent({Key key, this.fct});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyTitle(
          title: "Authentification",
        ),
        Field(
          placeholder: "Email",
        ),
        Field(
          placeholder: "Password",
        ),
        MyButton(
          onPressed: fct,
          text: "CONNECT",
          backgroundColor: cst.Colors.buttonConnectColor,
          textColor: cst.Colors.buttonTextColor,
        ),
        FlatButton(
          color: Colors.transparent,
          onPressed: fct,
          child: Text(
            'Forgotten password',
            style: TextStyle(color: cst.Colors.buttonConnectColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            "- OR -",
            style: TextStyle(fontSize: cst.Font.bodyFontSize),
          ),
        ),
        MyButton(
          onPressed: fct,
          text: "REGISTER",
          backgroundColor: cst.Colors.buttonRegisterColor,
          textColor: cst.Colors.buttonTextColor,
        )
      ],
    );
  }
}
