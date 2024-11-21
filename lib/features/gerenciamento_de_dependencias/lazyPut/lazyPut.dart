import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/lazyPut/lazyPut_controller.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/lazyPut/lazyPut_fenix_controller.dart';

class LazyPut extends StatefulWidget {
  LazyPut({super.key}) {
    Get.lazyPut(() => LazyPutController());
    // Guarda a fábrica, não a instância
    Get.lazyPut(() => LazyputFenixController(), fenix: true);
  }

  @override
  State<LazyPut> createState() => _LazyPutState();
}

class _LazyPutState extends State<LazyPut> {
  String nomeAntigo = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Lazy Put'),
      body: Center(
        child: Column(
          children: [
            Text('Olá, mundo!'),
            Text('Nome: $nomeAntigo'),
            const SizedBox(
              height: 32,
            ),
            Text('O botão 1 e 2 são referentes ao Lazy Put'),
            CustomElevatedButton(
              texto: '1 - Buscar nome',
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                setState(() {
                  nomeAntigo = controller.nome;
                });
              },
            ),
            CustomElevatedButton(
              texto: '2 - Alterar nome',
              onPressed: () {
                final controller = Get.find<LazyPutController>();
                controller.nome = '$nomeAntigo Lazy Put';
              },
            ),
            const SizedBox(
              height: 32,
            ),
            Text('O botão 3 e 4 são referentes ao Lazy Put Fenix'),
            CustomElevatedButton(
              texto: '3 - Buscar nome',
              onPressed: () {
                final controller = Get.find<LazyputFenixController>();
                setState(() {
                  nomeAntigo = controller.nome;
                });
              },
            ),
            CustomElevatedButton(
              texto: '4 - Alterar Nome Fenix',
              onPressed: () {
                final controller = Get.find<LazyputFenixController>();
                controller.nome = 'Fenixxx';
              },
            ),
          ],
        ),
      ),
    );
  }
}
