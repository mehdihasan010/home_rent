import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {
  final List<String> images;

  const GalleryWidget({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(images[index], width: 100, fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
