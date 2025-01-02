import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_rent/core/constants/app_assets.dart';
import 'package:home_rent/core/theme/app_colors.dart';

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({super.key, required this.owner, required this.profilePath});
  final String owner;
  final String profilePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            profilePath,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                owner,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              const Text(
                'Owner',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            AppAssets.iconsIcPhone,
            AppAssets.iconsIcMessageFilled,
          ].map((e) {
            return Container(
              width: 28,
              height: 28,
              margin: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                // ignore: deprecated_member_use
                color: AppColors.blue.withOpacity(0.5),
              ),
              child: Image.asset(
                e,
                width: 24,
                height: 24,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
