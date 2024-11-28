import 'package:get/get.dart';

class GetxWidgetController extends GetxController {
  final _nome = 'Rhayssam'.obs;

  String get nome => _nome.value;

  void alterarNome() {
    _nome('Rhayyydevvv');
  }
}
