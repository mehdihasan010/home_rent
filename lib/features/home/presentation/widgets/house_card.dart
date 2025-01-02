import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:home_rent/core/constants/app_assets.dart';
import 'package:home_rent/features/home/domain/controllers/home_controller.dart';
import 'package:home_rent/routes/app_routes.dart';
import 'package:intl/intl.dart';
import '../../data/models/house_model.dart';

class HouseCard extends StatefulWidget {
  const HouseCard({super.key});

  @override
  State<HouseCard> createState() => _HouseCardState();
}

class _HouseCardState extends State<HouseCard> {
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best for you',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff000000),
                ),
              ),
              Text(
                'See more',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff858585),
                ),
              ),
            ],
          ),
        ),
        const Gap(24),
        Obx(
          () => ListView.builder(
            itemCount: controller.houses.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) {
              HouseModel home = controller.houses[index];
              return GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.details, arguments: home);
                },
                child: Container(
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(bottom: 24),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          home.imageCover.toString(),
                          width: 74,
                          height: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Gap(24),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              home.name.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xff000000),
                              ),
                            ),
                            const Gap(4),
                            Text(
                              '${NumberFormat.currency(
                                decimalDigits: 0,
                                locale: 'id_ID',
                                symbol: 'Rp. ',
                              ).format(home.price)} / Year',
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff0A8ED9),
                              ),
                            ),
                            const Gap(4),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      ImageIcon(
                                        AssetImage(AppAssets.iconsIcBed),
                                        size: 24,
                                        color: Color(0xff858585),
                                      ),
                                      const Gap(8),
                                      Text(
                                        '${home.bedroom} Bedroom',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff858585),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      const ImageIcon(
                                        AssetImage(AppAssets.iconsIcBath),
                                        size: 24,
                                        color: Color(0xff858585),
                                      ),
                                      const Gap(8),
                                      Text(
                                        '${home.bathroom} Bathroom',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff858585),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
