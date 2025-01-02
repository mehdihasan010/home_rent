// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:home_rent/core/theme/app_colors.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.24), // Background color
          ),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: AppColors.white),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.24), // Background color
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark_border, color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
