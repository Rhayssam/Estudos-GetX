import 'package:get/get.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/bindings/bindings_controller.dart';

class BindingsExemplo extends Bindings {
  BindingsExemplo() {
    print('Iniciando BindingsExemplo');
  }

  @override
  void dependencies() {
    print('Carregando as instâncias');
    Get.put(BindingsController(nome: 'Iniciando o bindings exemplo'));
  }
}
