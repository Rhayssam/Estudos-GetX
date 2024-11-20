import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/conceito/conceito_controller.dart';

class Conceito extends StatelessWidget {
  //* Com nativo
  // final controller = ConceitoController();
  //* Com GetX
  final controller = Get.put(ConceitoController());

  Conceito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '1 - Conceito'),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 36, vertical: 0),
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      return Text(controller.texto);
                    },
                  ),
                ),
              ),
            ),
            // Adicionando um AnimatedBuilder para utilizar a controller
            CustomElevatedButton(
              texto: '1 - Ganhar 1 milhão de dólares',
              onPressed: () {
                controller.mudarTexto(
                    'VOCÊ APERTOU O BOTÃO E GANHOU 1 MILHÃO DE DÓLARES!');
              },
            ),

            CustomElevatedButton(
              texto: '2 - Ganhar mais 1 milão de dólares (GetX)',
              onPressed: () {
                Get.find<ConceitoController>()
                    .mudarTexto('Você gosta mesmo de dinheiro, né?');
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Uma instância do controller é criada assim que a tela é aberta. A mesma será deletada da memória ao fechar a tela',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
