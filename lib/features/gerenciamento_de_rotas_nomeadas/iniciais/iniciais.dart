import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class Iniciais extends StatelessWidget {
  const Iniciais({super.key});

  @override
  Widget build(BuildContext context) {
    String rota = '/rotas_nomeadas_home_page/iniciais';
    return Scaffold(
      appBar: CustomAppBar(title: 'Iniciais'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36.0,
                vertical: 0,
              ),
              child: Text(
                  'Os botões a seguir navegarão para a mesma sequência de páginas. No entanto cada um terá uma função diferente.'),
            ),
            CustomElevatedButton(
              texto: 'Acessar Página 1',
              onPressed: () {
                Get.toNamed('$rota/page1');
              },
            ),
          ],
        ),
      ),
    );
  }
}
