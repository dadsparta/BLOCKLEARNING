import 'package:blocklearning/app/modules/home/tabs/catalog/controllers/catalog_controller.dart';
import 'package:blocklearning/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogView extends GetView<CatalogController> {
  const CatalogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Catalog',
          style: AppTextStyles.title,
        ),
      ),
    );
  }
}