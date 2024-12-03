import 'package:get/get.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/stateMixin/home_controller.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/stateMixin/home_controller_state_mixin.dart';
import 'package:jornada_getx/features/gerenciamento_de_estado/stateMixin/repository/viacep_repository.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViacepRepository());
    Get.put(HomeController(Get.find()));
    Get.put(HomeControllerStateMixin(Get.find()));
  }
}
