import 'package:authentPage/tools/constants.dart' as cst;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Field extends StatelessWidget {
  String placeholder;

  Field({Key key, this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cst.Paddings.loginPadding,
      child: TextField(
        decoration: InputDecoration(hintText: placeholder),
      ),
    );
  }
}
