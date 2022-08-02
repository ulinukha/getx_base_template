import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            child: Text("Text Page 1"),
          ),
        ),
      )
    );
  }
}