import 'package:blocklearning/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<HomeController>(
        () => HomeController(),
      ),
    ];
  }
}
