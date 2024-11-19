import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/envio_parametros/page1.dart';

class Envio extends StatelessWidget {
  const Envio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Envio de Parâmetros'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: 'Ir para a Página 1',
              onPressed: () {
                Get.to(() => Page1(),
                    arguments:
                        'Parâmetro enviado da Página "Envio de Parâmetros"');
              },
            ),
          ],
        ),
      ),
    );
  }
}
