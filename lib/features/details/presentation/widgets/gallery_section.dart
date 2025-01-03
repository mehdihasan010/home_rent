// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_rent/core/theme/app_colors.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key, required this.gallery});
  final List<String> gallery;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gallery',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
        const Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(gallery.length, (index) {
            return GestureDetector(
              onTap: () {
                if (index == 3) {
                  // Navigate to full gallery view
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FullGalleryView(gallery: gallery),
                    ),
                  );
                } else {
                  // Show image preview
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Image.asset(
                            gallery[index],
                            fit: BoxFit.contain,
                          ),
                        ),
                      );
                    },
                  );
                }
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Image.asset(
                      gallery[index],
                      width: 72,
                      height: 72,
                      fit: BoxFit.cover,
                    ),
                    if (index == 3)
                      Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          color: AppColors.black.withOpacity(0.3),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '+5',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

class FullGalleryView extends StatelessWidget {
  const FullGalleryView({super.key, required this.gallery});
  final List<String> gallery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: gallery.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Image.asset(
                      gallery[index],
                      fit: BoxFit.contain,
                    ),
                  );
                },
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                gallery[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
