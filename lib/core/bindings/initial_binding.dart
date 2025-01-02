import 'package:get/get.dart';
import '../../features/home/domain/controllers/home_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
