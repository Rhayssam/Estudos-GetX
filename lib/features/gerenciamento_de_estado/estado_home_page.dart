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
            CustomElevatedButton(
              texto: '5 - Tipos OBS',
              onPressed: () {
                Get.toNamed('/estado_home_page/tipos_obs');
              },
            ),
            CustomElevatedButton(
              texto: '6 - Atualização Objetos',
              onPressed: () {
                Get.toNamed('/estado_home_page/atualizacao_objetos');
              },
            ),
            CustomElevatedButton(
              texto: '7 - Controllers',
              onPressed: () {
                Get.toNamed(
                  '/estado_home_page/controllers',
                );
              },
            ),
            CustomElevatedButton(
              texto: '8 - GetX Widget',
              onPressed: () {
                Get.toNamed(
                  '/estado_home_page/getx_widget',
                );
              },
            ),
            CustomElevatedButton(
              texto: '9 - Local State Widget',
              onPressed: () {
                Get.toNamed(
                  '/estado_home_page/local_state_widget',
                );
              },
            ),
            CustomElevatedButton(
              texto: '10 - Workers',
              onPressed: () {
                Get.toNamed(
                  '/estado_home_page/workers',
                );
              },
            ),
            CustomElevatedButton(
              texto: '11 - First Rebuild',
              onPressed: () {
                Get.toNamed(
                  '/estado_home_page/first_rebuild',
                );
              },
            ),
            CustomElevatedButton(
              texto: '12 - Get Builder',
              onPressed: () {
                Get.toNamed(
                  '/estado_home_page/get_builder',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
