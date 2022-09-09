import 'package:get/get.dart';
import 'package:getxapp/controller/TapController.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
}
