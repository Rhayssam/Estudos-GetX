import 'package:get/get.dart';

class Controller extends GetxController {
  final nome = 'Rhayssam'.obs;

  @override
  void onInit() {
    print('onInit');
    super.onInit();
  }

  @override
  void onReady() {
    print('onReady');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose');
    super.onClose();
  }

  void alterarNome() {
    nome('Rhaydev');
  }
}
