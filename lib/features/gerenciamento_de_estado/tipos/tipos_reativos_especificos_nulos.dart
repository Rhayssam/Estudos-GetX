import 'package:get/get.dart';

class TiposReativosEspecificosNulos {
  final nome = RxnString();
  final idade = RxnInt();
  final dinheiro = RxnDouble();
  final trabalha = RxnBool();

  void teste() {
    trabalha.toggle();
    trabalha.isFalse;
    trabalha.isTrue;
  }
}
