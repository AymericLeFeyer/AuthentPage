import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Image.network(
        "https://www.visitcalifornia.com/sites/visitcalifornia.com/files/vc_lagunabeach_st_rf_519382217_1280x640.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
