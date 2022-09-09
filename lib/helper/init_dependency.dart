import 'package:get/get.dart';
import 'package:getxapp/controller/TapController.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TapController());
  }
}
