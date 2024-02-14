import 'package:blocklearning/app/modules/home/controllers/home_controller.dart';
import 'package:blocklearning/app/modules/home/tabs/basket/controllers/basket_controller.dart';
import 'package:blocklearning/app/modules/home/tabs/catalog/controllers/catalog_controller.dart';
import 'package:blocklearning/app/modules/home/tabs/main/controllers/main_controller.dart';
import 'package:blocklearning/app/modules/home/tabs/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Binding {

  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<HomeController>(
        () => HomeController(),
      ),
      Bind.lazyPut<MainController>(
        () => MainController(),
      ),
      Bind.lazyPut<CatalogController>(
        () => CatalogController(),
      ),
      Bind.lazyPut<BasketController>(
        () => BasketController(),
      ),
      Bind.lazyPut<ProfileController>(
        () => ProfileController(),
      ),
    ];
  }
}
