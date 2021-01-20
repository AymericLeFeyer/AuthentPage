import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CardFrame extends StatelessWidget {
  // Params
  bool show;
  String state;

  CardFrame({Key key, this.show, this.state});

  // Variables
  final height = Get.height * 2 / 3;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      bottom: show ? 0 : -height,
      child: Container(
        width: Get.width,
        height: height,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: Center(
          child: Container(
            child: Text(state),
          ),
        ),
      ),
    );
  }
}
