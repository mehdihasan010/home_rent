import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_rent/core/constants/app_assets.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Location',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff838383),
                  ),
                ),
                const Gap(4),
                Row(
                  children: [
                    const Text(
                      'Jakarta',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff000000),
                      ),
                    ),
                    const Gap(4),
                    Image.asset(
                      AppAssets.iconsIcNavDown,
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
          badges.Badge(
            position: badges.BadgePosition.topEnd(
              end: 3,
              top: 3,
            ),
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Color(0xffFA0E0E),
              padding: EdgeInsets.all(4),
            ),
            child: const ImageIcon(
              AssetImage(AppAssets.iconsIcNotification),
              size: 24,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
