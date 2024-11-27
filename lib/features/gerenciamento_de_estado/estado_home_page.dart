import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class EstadoHomePage extends StatelessWidget {
  const EstadoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '4 - Gerenciamento de Estado'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: '1 - Inicial',
              onPressed: () {
                Get.toNamed('/estado_home_page/inicial');
              },
            ),
            CustomElevatedButton(
              texto: '2 - Tipos Reativos',
              onPressed: () {
                Get.toNamed('/estado_home_page/tipos');
              },
            ),
            CustomElevatedButton(
              texto: '3 - Tipos Reativos Genéricos',
              onPressed: () {
                Get.toNamed('/estado_home_page/tipos_genericos');
              },
            ),
            CustomElevatedButton(
              texto: '4 - Tipos Genéricos Nulos',
              onPressed: () {
                Get.toNamed('/estado_home_page/tipos_genericos_nulos');
              },
            ),
          ],
        ),
      ),
    );
  }
}
