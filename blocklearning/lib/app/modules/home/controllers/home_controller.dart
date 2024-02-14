import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:blocklearning/app/modules/home/tabs/basket/views/basket_view.dart';
import 'package:blocklearning/app/modules/home/tabs/catalog/views/catalog_view.dart';
import 'package:blocklearning/app/modules/home/tabs/main/views/main_view.dart';
import 'package:blocklearning/app/modules/home/tabs/profile/views/profile_view.dart';

class HomeController extends GetxController {
  final selectedPageIndex = 0.obs;
  final PageController pageController = PageController();
  final pages = [
    const MainView(),
    const CatalogView(),
    const BasketView(),
    const ProfileView()
  ];

  void onSelectPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(microseconds: 100),
      curve: Curves.easeOut,
    );
  }
}
