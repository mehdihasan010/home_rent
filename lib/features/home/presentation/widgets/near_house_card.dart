// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:home_rent/core/constants/app_assets.dart';
import 'package:home_rent/features/home/data/models/house_model.dart';
import 'package:home_rent/routes/app_routes.dart';

import '../../domain/controllers/home_controller.dart';

class NearHouseCard extends StatefulWidget {
  const NearHouseCard({
    super.key,
  });

  @override
  State<NearHouseCard> createState() => _NearHouseCardState();
}

class _NearHouseCardState extends State<NearHouseCard> {
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
                'Near from you',
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
        SizedBox(
          height: 272,
          child: Obx(
            () => ListView.builder(
              itemCount: controller.houses.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                HouseModel home = controller.houses[index];
                return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 20 : 10,
                    right: index == controller.houses.length - 1 ? 20 : 10,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.details,
                          arguments: controller.houses[index]);
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            home.imageCover!,
                            fit: BoxFit.cover,
                            width: 222,
                            height: 272,
                          ),
                        ),
                        Container(
                          width: 222,
                          height: 272,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              stops: const [0.38, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xff0D0D0D).withOpacity(0),
                                const Color(0xff000000).withOpacity(0.8),
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                home.name!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              const Gap(6),
                              Text(
                                home.address!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xffD7D7D7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 20,
                          right: 20,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(8, 4, 10, 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff000000).withOpacity(0.24),
                            ),
                            child: const Row(
                              children: [
                                ImageIcon(
                                  AssetImage(AppAssets.iconsIcLocation),
                                  size: 16,
                                  color: Colors.white,
                                ),
                                Gap(4),
                                Text(
                                  '1.8 km',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
