import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    String rota = '/rotas_nomeadas_home_page/iniciais';
    return Scaffold(
      appBar: CustomAppBar(title: 'Iniciais - Página 2'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: 'Rota com Get.toNamed()',
              onPressed: () {
                Get.toNamed('$rota/page3');
              },
            ),
            CustomElevatedButton(
                texto: 'Rota com Get.offNamed()',
                onPressed: () {
                  Get.offNamed('$rota/page3');
                }),
            CustomElevatedButton(
              texto: 'Rota com Get.offAllNamed()',
              onPressed: () {
                Get.offAllNamed('$rota/page3',
                    predicate:
                        ModalRoute.withName('/rotas_nomeadas_home_page'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
