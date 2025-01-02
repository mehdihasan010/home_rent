import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuControllers extends GetxController {
  var indexFragment = 0.obs;
  var showMenu = false.obs;
  late AnimationController animationController;
  late Animation slideAnimation;
  late Animation scaleAnimation;
}
