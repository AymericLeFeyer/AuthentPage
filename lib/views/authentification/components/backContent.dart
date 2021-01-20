import 'package:authentPage/views/common/button.dart';
import 'package:authentPage/tools/constants.dart' as cst;

import 'package:flutter/widgets.dart';

class BackContent extends StatelessWidget {
  Function fct;

  BackContent({Key key, this.fct});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyButton(
          onPressed: fct,
          text: "GO BACK",
          textColor: cst.Colors.buttonTextColor,
          backgroundColor: cst.Colors.buttonConnectColor,
        )
      ],
    );
  }
}
