import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_rent/core/theme/app_colors.dart';
import 'package:home_rent/features/home/domain/controllers/category_controller.dart';
// Import your controller

class CategorySectionWidget extends StatelessWidget {
  const CategorySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final CategoryController controller = Get.put(CategoryController());

    final List<String> list = [
      'House',
      'Apartment',
      'Hotel',
      'Villa',
      'Cottage',
    ];

    return SizedBox(
      height: 34,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          String category = list[index];

          return Obx(() {
            bool isActive = controller.selectedCategory.value == category;

            return GestureDetector(
              onTap: () {
                controller.setSelectedCategory(category);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.only(
                  left: index == 0 ? 20 : 10,
                  right: index == list.length - 1 ? 20 : 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isActive ? null : const Color(0xffF7F7F7),
                  gradient: isActive
                      ? LinearGradient(
                          stops: [0.14, 1],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.lightBlue,
                            AppColors.blue,
                          ],
                        )
                      : null,
                ),
                alignment: Alignment.center,
                child: Text(
                  category,
                  style: TextStyle(
                    fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                    fontSize: 12,
                    color: Color(isActive ? 0xffFFFFFF : 0xff858585),
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
