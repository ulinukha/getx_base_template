import 'package:getx_base_template/app/router/app_pages.dart';
import 'package:getx_base_template/base/lifecycle/_index.dart';

class MainController extends BaseController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  goToAbout() {
    Get.toNamed(Pages.ABOUT);
  }
}