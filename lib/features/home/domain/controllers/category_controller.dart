import 'package:get/get.dart';

class CategoryController extends GetxController {
  final selectedCategory = 'House'.obs;

  void setSelectedCategory(String category) {
    selectedCategory.value = category;
  }
}
