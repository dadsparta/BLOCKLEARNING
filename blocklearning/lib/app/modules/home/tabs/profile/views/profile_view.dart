import 'package:blocklearning/app/modules/home/tabs/profile/controllers/profile_controller.dart';
import 'package:blocklearning/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: AppTextStyles.title,
        ),
      ),
    );
  }
}