import 'package:get/get.dart';
import 'package:home_rent/features/menu/domain/controller/menu_controller.dart';

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuControllers>(() => MenuControllers());
  }
}
