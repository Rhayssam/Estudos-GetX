import 'package:get/get.dart';

class Controller extends GetxController {
  final _nome = 'Rhayssam'.obs;

  String get nome => _nome.value;

  @override
  Future<void> onInit() async {
    super.onInit();
    await 2.seconds.delay();
    print('onInit');
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
    _nome('Rhaydev');
  }
}
