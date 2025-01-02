import 'package:get/get.dart';
import 'package:home_rent/features/details/presentation/pages/details_page.dart';
import 'package:home_rent/features/home/presentation/pages/home_page.dart';
import 'package:home_rent/features/menu/presentation/pages/menu_page.dart';

class AppRoutes {
  // Route names
  static const String menu = '/';
  static const String home = '/home';
  static const String details = '/details';

  // Route definitions
  static final routes = [
    GetPage(
      name: menu,
      page: () => const MenuPage(),
    ),
    GetPage(
      name: home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: details,
      page: () => DetailPage(
        house: Get.arguments,
      ),
    ),
  ];
}
