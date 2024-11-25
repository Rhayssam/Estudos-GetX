import 'package:get/get.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/initialBinding/auth_model.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthModel(
        name: 'Rhayssam',
        email: 'rhayssam@gmail.com.br',
        curso: 'Estudo de GetX',
      ),
      permanent: true,
    );
  }
}
