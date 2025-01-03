import 'package:flutter/material.dart';
import 'package:home_rent/features/home/presentation/widgets/category_section_widget.dart';
import 'package:home_rent/features/home/presentation/widgets/header_widget.dart';
import 'package:home_rent/features/home/presentation/widgets/near_house_card.dart';
import 'package:home_rent/features/home/presentation/widgets/search_bar_widget.dart';

import '../widgets/house_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Ensure super.key is used correctly

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                HeaderWidget(),
                SizedBox(height: 10),
                SearchBarWidget(),
                SizedBox(height: 10),
                CategorySectionWidget(),
                SizedBox(height: 10),
                SizedBox(height: 20),
                NearHouseCard(),
                SizedBox(height: 20),
                HouseCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
