import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';


class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {},
          child: Text("Text Page 1"),
        ),
      )
    );
  }
}