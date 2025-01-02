import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../data/models/house_model.dart';

class HomeController extends GetxController {
  final houses = <HouseModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadHouses();
  }

  Future<void> loadHouses() async {
    final String response =
        await rootBundle.loadString('assets/data/houses.json');
    final List<dynamic> data = jsonDecode(response);
    houses.value = data.map((json) => HouseModel.fromJson(json)).toList();
  }
}
