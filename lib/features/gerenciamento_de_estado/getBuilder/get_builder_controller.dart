import 'package:get/get.dart';

class GetBuilderController extends GetxController {
  var nome = 'Rhayssam';
  int contador = 0;

  void alterarNome() {
    nome = 'Rhayyydevvv';
    update();
  }

  void increment() {
    contador++;
    update();
  }
}
