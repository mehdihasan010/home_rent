import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_rent/features/home/data/models/house_model.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({super.key, required this.house});
  final HouseModel house;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          house.name.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        const Gap(8),
        Text(
          '${house.address}, ${house.city}',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xffD4D4D4),
          ),
        ),
        const Gap(20),
        Row(
          children: [
            // Bedroom Info
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFFFFFF).withOpacity(0.2),
                    ),
                    child: const ImageIcon(
                      AssetImage('assets/icons/ic_bed.png'),
                      size: 24,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  const Gap(8),
                  Text(
                    '${house.bedroom} Bedroom',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xffD4D4D4),
                    ),
                  ),
                ],
              ),
            ),
            // Bathroom Info
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFFFFFF).withOpacity(0.2),
                    ),
                    child: const ImageIcon(
                      AssetImage('assets/icons/ic_bath.png'),
                      size: 24,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  const Gap(8),
                  Text(
                    '${house.bathroom} Bathroom',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xffD4D4D4),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
