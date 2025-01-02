import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_rent/core/theme/app_colors.dart';
import 'package:readmore/readmore.dart';

class HouseDescription extends StatelessWidget {
  const HouseDescription({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Description',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
        const Gap(20),
        ReadMoreText(
          description,
          trimLength: 100,
          trimExpandedText: ' Show Less',
          trimCollapsedText: ' Show More',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: AppColors.grey,
          ),
          lessStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: AppColors.blue,
          ),
          moreStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: AppColors.blue,
          ),
        ),
      ],
    );
  }
}
