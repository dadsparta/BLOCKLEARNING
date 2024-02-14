import 'package:blocklearning/app/modules/home/tabs/basket/controllers/basket_controller.dart';
import 'package:blocklearning/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasketView extends GetView<BasketController> {
  const BasketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Basket',
          style: AppTextStyles.title,
        ),
      ),
    );
  }
}