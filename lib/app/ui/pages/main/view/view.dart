import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_base_template/app/base/resource/_index.dart';

import '../controller/controller.dart';


class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Center(
          child: InkWell(
            onTap: () {
              controller.goToAbout();
            },
            child: Text("Text Page 1",
            textScaleFactor: Get.textScaleFactor,
              style: AppStyles.textStyleDefault(
                size: 14,
                color: colorTextBlack
              ),
            ),
          ),
        ),
      )
    );
  }
}