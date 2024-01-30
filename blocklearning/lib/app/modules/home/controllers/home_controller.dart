import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedPageIndex = 0.obs;

  void onSelectPage(int index) {
    selectedPageIndex.value = index;
  }
}
