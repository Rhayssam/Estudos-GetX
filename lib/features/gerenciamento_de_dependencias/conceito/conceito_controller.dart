import 'package:flutter/material.dart';

class ConceitoController extends ChangeNotifier {
  var texto = 'Aperte o botão para ganhar 1 milhão de dólares';

  void mudarTexto(String textoMudar) {
    texto = textoMudar;
    notifyListeners();
  }
}
