// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_rent/features/details/presentation/widgets/gallery_section.dart';
import 'package:home_rent/features/details/presentation/widgets/house_description.dart';
import 'package:home_rent/features/details/presentation/widgets/house_info.dart';
import 'package:home_rent/features/details/presentation/widgets/map_preview.dart';
import 'package:home_rent/features/details/presentation/widgets/owner_info.dart';
import 'package:home_rent/features/details/presentation/widgets/page_header.dart';
import 'package:home_rent/features/details/presentation/widgets/price_footer.dart';
import 'package:home_rent/features/home/data/models/house_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.house});
  final HouseModel house;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          Gap(20 + MediaQuery.of(context).padding.top),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  house.imageRaw.toString(),
                  width: double.infinity,
                  height: 304,
                  fit: BoxFit.cover,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.32, 0.76],
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.6),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  child: HouseInfo(house: house),
                ),
                Positioned(
                  left: 18,
                  right: 18,
                  top: 18,
                  child: PageHeader(),
                ),
              ],
            ),
          ),
          const Gap(24),
          HouseDescription(description: house.description!),
          const Gap(24),
          OwnerInfo(owner: house.owner!, profilePath: house.profile!),
          const Gap(30),
          GallerySection(gallery: house.gallery!),
          const Gap(30),
          const MapPreview(),
          const Gap(160),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: PriceFooter(price: house.price!),
    );
  }
}
