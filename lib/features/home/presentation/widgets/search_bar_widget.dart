import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_rent/core/constants/app_assets.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF7F7F7),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.iconsIcSearch,
                    height: 24,
                    width: 24,
                  ),
                  const Gap(8),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.all(0),
                        hintText: 'Search address, or near you ',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff858585),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(16),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                stops: [0.14, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffA0DAFB),
                  Color(0xff0A8ED9),
                ],
              ),
            ),
            alignment: Alignment.center,
            child: Image.asset(
              AppAssets.iconsIcFilter,
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
