import 'package:blocklearning/app/modules/home/tabs/main/controllers/main_controller.dart';
import 'package:blocklearning/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Main',
          style: AppTextStyles.title,
        ),
      ),
    );
  }
}
