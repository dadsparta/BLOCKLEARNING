import 'package:blocklearning/app/modules/home/controllers/home_controller.dart';
import 'package:blocklearning/app/modules/home/views/custom_navigation_button.dart';
import 'package:blocklearning/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(LocaleKeys.noCoffee.tr),
          ),
        ),
        body: PageView.builder(
          itemCount: controller.pages.length,
          controller: controller.pageController,
          physics: const BouncingScrollPhysics(),
          onPageChanged: (value) => controller.selectedPageIndex.value = value,
          itemBuilder: (context, index) {
            return controller.pages[index];
          },
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            CustomNavigationButton(
              icon: Icons.home,
              label: LocaleKeys.main.tr,
              isSelected: controller.selectedPageIndex.value == 0,
              onTap: () => controller.onSelectPage(0),
            ),
            CustomNavigationButton(
              icon: Icons.restaurant_menu,
              label: LocaleKeys.menu.tr,
              isSelected: controller.selectedPageIndex.value == 1,
              onTap: () => controller.onSelectPage(1),
            ),
            CustomNavigationButton(
              icon: Icons.shopping_basket,
              label: LocaleKeys.basket.tr,
              isSelected: controller.selectedPageIndex.value == 2,
              onTap: () => controller.onSelectPage(2),
            ),
            CustomNavigationButton(
              icon: Icons.person,
              label: LocaleKeys.profile.tr,
              isSelected: controller.selectedPageIndex.value == 3,
              onTap: () => controller.onSelectPage(3),
            ),
          ],
        ),
      ),
    );
  }
}
